using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Net.Mail;

public partial class Register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
    }
    public bool ValidMail(string emailaddress)
    {
        try
        {
            MailAddress m = new MailAddress(emailaddress);
            return true;
        }
        catch (FormatException)
        {
            return false;
        }
    }
    protected void SignUpButton_Click(object sender, EventArgs e)
    {
        string user = null;
        try
        {
            DataSet dataSet = helper.GetClient(this.txtusr.Text);
            foreach (DataRow client in dataSet.Tables["GetUsername"].Rows)
            {
               user = client["username"].ToString();
            }
            if (user == null && this.ValidMail(this.txtemail.Text) && this.txtcpswd.Text.CompareTo(this.txtpswd.Text) == 0)
            {
                using (SqlConnection con = new SqlConnection(helper.connection))
                {
                    using (SqlCommand cmd = new SqlCommand())
                    {
                        cmd.Connection = con;
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.CommandText = "RegisterClient";
                        cmd.Parameters.AddWithValue("@username", txtusr.Text);
                        cmd.Parameters.AddWithValue("@password", txtpswd.Text);
                        cmd.Parameters.AddWithValue("@Firstname", txtfname.Text);
                        cmd.Parameters.AddWithValue("@Lastname", txtlname.Text);
                        cmd.Parameters.AddWithValue("@email", txtemail.Text);
                        cmd.Parameters.AddWithValue("@adresse", txtAddress.Text);
                        cmd.Parameters.AddWithValue("@telephone", txttel.Text);
                        con.Open();
                        cmd.ExecuteNonQuery();
                        Response.Redirect("Home.aspx");
                    }
                }
            }
            else if(user != null) 
            {
                this.usexist.Visible = true;
                this.txtusr.Text = "";
            }

        }
        catch (Exception ex)
        {
            helper.Errors(ex.Message, "Register.aspx-SignUpButton_Click");
        }
    }
}