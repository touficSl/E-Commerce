using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;

public partial class Category : System.Web.UI.Page
{
    DataSet GetCategory = helper.GetCategory();
    DataSet GetGenders = helper.GetGenders();
    DataSet getSymboleSizes = helper.getSymboleSizes();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack == false)
        {
            CmbCategory.DataSource = GetCategory.Tables["GetCategory"];
            CmbCategory.DataTextField = "categoryName";
            CmbCategory.DataBind();

            CmbGender.DataSource = GetGenders.Tables["GetGenders"];
            CmbGender.DataTextField = "genre";
            CmbGender.DataBind();

            CmbSymboleSizes.DataSource = getSymboleSizes.Tables["getSymboleSizes"];
            CmbSymboleSizes.DataTextField = "symbole";
            CmbSymboleSizes.DataValueField = "sizeID";
            CmbSymboleSizes.DataBind();
            bindGrid();
        }
    }
    private void bindGrid()
    {
        using (SqlConnection con = new SqlConnection(helper.connection))
        {
            using (SqlCommand cmd = new SqlCommand())
            {
                cmd.Connection = con;
                cmd.CommandText = "select * from View_Category where categoryName = @cn and genre= @gn and sizeID = @s and QuantityRest > 0;";
                cmd.Parameters.AddWithValue("@cn", CmbCategory.SelectedValue);
                cmd.Parameters.AddWithValue("@gn", CmbGender.SelectedValue);
                cmd.Parameters.AddWithValue("@s", CmbSymboleSizes.SelectedValue);
                DataTable dt = new DataTable();
                SqlDataAdapter dta = new SqlDataAdapter(cmd);
                dta.Fill(dt);
                grdCategory.DataSource = dt;
                grdCategory.DataBind();
            }

        }
    }

    protected void insertCmd(object sender, ImageClickEventArgs e)
    {
        string articleid;
        if (Session["logClient"] != null)
        {
            double Sum = 0, price, quant, maxQtity;
            ImageButton ImageButton1 = (ImageButton)sender;
            GridViewRow row = (GridViewRow)ImageButton1.Parent.Parent;
            if (row != null)
            {
                TextBox txtquant = (TextBox)row.FindControl("txtquant");
                if (txtquant.Text != "")
                    quant = Convert.ToDouble(txtquant.Text);
                else 
                    quant = 0;
                
                Label lblQuantityRest = (Label)row.FindControl("lblQuantityRest");
                maxQtity = Convert.ToDouble(lblQuantityRest.Text);

                Label cmdwasInsert = (Label)row.FindControl("cmdwasInsert");

                if (quant <= maxQtity && quant > 0)
                {
                    articleid = ImageButton1.CommandArgument;
                    Label lblprice = (Label)row.FindControl("lblprice");

                    price = Convert.ToDouble(lblprice.Text);
                    Sum += quant * price;

                    cmdwasInsert.ForeColor = Color.Green;
                    cmdwasInsert.Text = "Command was Insert !";
                    cmdwasInsert.Visible = true;
                    grdCategory.Focus();

                    helper.InsertCommand(quant, Sum, articleid, CmbSymboleSizes.SelectedValue);
                }
                else if(quant <= 0){
                    cmdwasInsert.ForeColor = Color.Red;
                    cmdwasInsert.Text = "No Quantity!";
                    cmdwasInsert.Visible = true;
                }
                else
                {
                    cmdwasInsert.ForeColor = Color.Red;
                    cmdwasInsert.Text = "Quantity is greater than Remaining Quantity !";
                    cmdwasInsert.Visible = true;
                }

            }
        }
        else
            Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Log In first !');</script>");
    }
    protected void CmbSymboleSizes_SelectedIndexChanged(object sender, EventArgs e)
    {
        bindGrid();
    }
    protected void CmbGender_SelectedIndexChanged(object sender, EventArgs e)
    {
        bindGrid();
    }
    protected void CmbCategory_SelectedIndexChanged(object sender, EventArgs e)
    {
        bindGrid();
    }
}