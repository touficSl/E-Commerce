using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Main : System.Web.UI.MasterPage
{
    //public static String userid;
    string user = null;
    protected void Page_Load(object sender, EventArgs e)
    {
        this.errorlabel.Visible = false;

        if (Session["logClient"] != null && !IsPostBack) 
        {
            this.LogIn();
        }
    }

    protected void NavigateToRegistre(object sender, EventArgs e)
    {
        Response.Redirect("Register.aspx");
    }

    protected void Login(object sender, EventArgs e)
    {
        string pass = null;
        if (!String.IsNullOrEmpty(this.txtUsername.Text) && !String.IsNullOrEmpty(this.txtpass.Text))
        {
            DataSet dataSet = helper.GetClient(this.txtUsername.Text);
            foreach (DataRow client in dataSet.Tables["GetUsername"].Rows)
            {
                user = client["username"].ToString();
                pass = client["password"].ToString();
            }
            if (user != null && pass == this.txtpass.Text)
            {
                Session["logClient"] = user;
                this.LogIn();
            }
            this.errorlabel.Text = "Incorrect username and/or password";
            this.errorlabel.Visible = true;
        }
    }

    private void LogIn()
    {
        if (helper.IsCreatebasket()){      // helper.IsCreatebasket() for more sevurity 
            if (helper.CheckIfBasketValidate() == true)
                helper.CreateNewBasket();
            this.welcomeclient.Text = "Welcome " + helper.userid;
            this.logout.Visible = true;
            this.login.Visible = false;
        }
        else
        {
            helper.Errors("BasketId is not created ","in Main.Master fnct => LogIn()");
        }
    }

    protected void Logout(object sender, EventArgs e)
    {
        Session["logClient"] = null;
        this.logout.Visible = false;
        this.login.Visible = true;
        Response.Redirect("Home.aspx");
    }
}
