using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class SignAdmin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void verify(object sender, EventArgs e)
    {
        string code = null;
        DataSet dataSet = helper.GetCodeAdmin(codetxt.Text);
        foreach (DataRow admin in dataSet.Tables["GetCodeAdmin"].Rows)
        {
            code = admin["code"].ToString();
        }

        if (code != null && !String.IsNullOrEmpty(this.codetxt.Text))
        { 
            Session["code"] = code;
            Response.Redirect("Admin.aspx");
        }
        this.errorlbl.Text = "Incorrect code or empty ";
        this.errorlbl.Visible = true;
        this.codetxt.Text = "";
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("Home.aspx");
    }
}