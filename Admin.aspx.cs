using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Admin : System.Web.UI.Page
{
    DataSet getusername = helper.GetUsers();
    DataSet getcat = helper.GetCategory();
    DataSet GetGenders = helper.GetGenders();
    DataSet getSymboleSizes = helper.getSymboleSizes();
    protected void Page_Load(object sender, EventArgs e)
    { 
        if (Session["code"] == null)
        {
            Response.Redirect("Home.aspx");
        }
        if (IsPostBack == false)
        {
            cmbgenres.DataSource = GetGenders.Tables["GetGenders"];
            cmbgenres.DataTextField = "genre";
            cmbgenres.DataBind();

            cmbSize.DataSource = getSymboleSizes.Tables["getSymboleSizes"];
            cmbSize.DataTextField = "symbole";
            cmbSize.DataValueField = "sizeID";
            cmbSize.DataBind();

            Cmbuser.DataSource = getusername.Tables["Getusers"];
            Cmbuser.DataTextField = "username";
            Cmbuser.DataBind();

            Cmbuart.DataSource = getcat.Tables["GetCategory"];
            Cmbuart.DataTextField = "categoryName";
            Cmbuart.DataBind();

            using (SqlConnection con = new SqlConnection(helper.connection))
            {
                using (SqlCommand cmd = new SqlCommand())
                {
                    cmd.Connection = con;
                    cmd.CommandText = "Select * from View_Category where categoryName = @cn";
                    cmd.Parameters.AddWithValue("@cn", Cmbuart.SelectedValue);

                    DataTable dt = new DataTable();
                    SqlDataAdapter dta = new SqlDataAdapter(cmd);
                    dta.Fill(dt);
                    grdCategory.DataSource = dt;
                    grdCategory.DataBind();
                }

            }
            using (SqlConnection con = new SqlConnection(helper.connection))
            {
                using (SqlCommand cmd = new SqlCommand())
                {
                    cmd.Connection = con;
                    cmd.CommandText = "Select * from View_Order where username = @user and dateValidated IS NOT NULL";
                    cmd.Parameters.AddWithValue("@user", Cmbuser.SelectedValue);

                    DataTable dt = new DataTable();
                    SqlDataAdapter dta = new SqlDataAdapter(cmd);
                    dta.Fill(dt);
                    grdOrdersuser.DataSource = dt;
                    grdOrdersuser.DataBind();
                }

            }
        }
    }
    protected void Logout(object sender, EventArgs e)
    {
            Session["code"] = null;
            Response.Redirect("Home.aspx");
    }


    protected void Cmbuserbasketorder_SelectedIndexChanged(object sender, EventArgs e)
    {
        using (SqlConnection con = new SqlConnection(helper.connection))
        {
            using (SqlCommand cmd = new SqlCommand())
            {
                cmd.Connection = con;
                cmd.CommandText = "Select * from View_Order where username = @user and dateValidated IS NOT NULL";
                cmd.Parameters.AddWithValue("@user", Cmbuser.SelectedValue);

                DataTable dt = new DataTable();
                SqlDataAdapter dta = new SqlDataAdapter(cmd);
                dta.Fill(dt);
                grdOrdersuser.DataSource = dt;
                grdOrdersuser.DataBind();
            }

        }
    }
    protected void Cmbuart_SelectedIndexChanged(object sender, EventArgs e)
    {
        using (SqlConnection con = new SqlConnection(helper.connection))
        {
            using (SqlCommand cmd = new SqlCommand())
            {
                cmd.Connection = con;
                cmd.CommandText = "Select * from View_Category where categoryName = @cn";
                cmd.Parameters.AddWithValue("@cn", Cmbuart.SelectedValue);

                DataTable dt = new DataTable();
                SqlDataAdapter dta = new SqlDataAdapter(cmd);
                dta.Fill(dt);
                grdCategory.DataSource = dt;
                grdCategory.DataBind();
            }

        }
    }

    protected void addItem(object sender, ImageClickEventArgs e)
    {
        helper.InsertItem(this.nameProd.Text, this.pathPic.Text, Convert.ToDouble(this.price.Text), this.Catergories.SelectedValue, this.cmbgenres.SelectedValue);
        helper.InsertItemQtySize(this.cmbSize.Text, this.Qtity.Text);
        this.mess.Visible = true;
        this.mess.Text = "Item was Insert";
        Response.Redirect(Request.Url.AbsoluteUri);
    }
}