using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.ComponentModel;
using System.Drawing;

public partial class Basket : System.Web.UI.Page
{
    DataTable dt = new DataTable();
    public static double totalp, priceCommand;
    protected void Page_Load(object sender, EventArgs e)
    {
        helper.deletecmdQrLessQc();
        if (Session["logClient"] != null && !Page.IsPostBack)
            bindGrid();
        else
            if (Session["logClient"] == null)
                Response.Redirect("Home.aspx");

        if (grdOrderBasket.Rows.Count == 0)
        {
            totalp = 0;
            totallbl.Text = "0";
        }
        else
        {
            using (SqlConnection con = new SqlConnection(helper.connection))
            {
                using (SqlCommand cmd = new SqlCommand())
                {
                    cmd.Connection = con;
                    cmd.CommandText = "select SUM(totalPriceC) from View_Commands where basketID = @bid and QuantityRest >= numberC";
                    cmd.Parameters.AddWithValue("@bid", helper.getlastBasketID());
                    DataTable dt = new DataTable();
                    SqlDataAdapter dta = new SqlDataAdapter(cmd);
                    con.Open();
                    cmd.ExecuteNonQuery();
                    dta.Fill(dt);

                    if (cmd.ExecuteScalar().ToString() == "")
                    {
                        totallbl.Text = "0";
                    }
                    else
                    {
                        totallbl.Text = cmd.ExecuteScalar().ToString();
                        totallbl.DataBind();
                        totalp = Convert.ToDouble(totallbl.Text);
                    }

                }
            }
        }
    }

    private void bindGrid()
    {
        int bid = helper.getlastBasketID();
        using (SqlConnection con = new SqlConnection(helper.connection))
        {
            using (SqlCommand cmd = new SqlCommand())
            {
                cmd.Connection = con;
                cmd.CommandText = "select * from View_Commands where basketID = @bid and QuantityRest >= numberC";
                cmd.Parameters.AddWithValue("@bid", bid);
                SqlDataAdapter dta = new SqlDataAdapter(cmd);
                dta.Fill(dt);
                grdOrderBasket.DataSource = dt;
                grdOrderBasket.DataBind();
            }

        }
    }
    protected void deleteCmd(object sender, EventArgs e)
    {
        ImageButton ImageButton1 = (ImageButton)sender;
        GridViewRow row = (GridViewRow)ImageButton1.Parent.Parent;
        Label lbltotalcprice = (Label)row.FindControl("lbltotalcprice");
        priceCommand = Convert.ToDouble(lbltotalcprice.Text);
        try
        {
            using (SqlConnection con = new SqlConnection(helper.connection))
            {
                using (SqlCommand cmd = new SqlCommand())
                {
                    cmd.Connection = con;
                    cmd.CommandText = "delete from Command where commandID = @cid";
                    cmd.Parameters.AddWithValue("@cid", ImageButton1.CommandArgument);

                    con.Open();
                    cmd.ExecuteNonQuery();
                    grdOrderBasket.DataSource = null;
                    grdOrderBasket.DataBind();
                    bindGrid();
                }
                totalp = totalp - priceCommand;
                totallbl.Text = totalp.ToString();
            }
        }
        catch (Exception ex) { }
    }

    protected void updateLastBasket(object sender, ImageClickEventArgs e)
    {
        int bid = helper.getlastBasketID();

        if (totalp == 0)
            Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Empty Orders Check out !');</script>");
        else if (txtAdd.Text.Length != 0 && totalp > 0)
        {
            try
            {
                using (SqlConnection con = new SqlConnection(helper.connection))
                {
                    using (SqlCommand cmd = new SqlCommand())
                    {
                        cmd.Connection = con;
                        cmd.CommandType = CommandType.Text;
                        cmd.CommandText = "select commandID from View_Commands where basketID = @bid ";
                        cmd.Parameters.AddWithValue("@bid", bid);

                        con.Open();
                        cmd.ExecuteNonQuery();

                        DataSet ds = new DataSet();
                        SqlDataAdapter dataAdapter = new SqlDataAdapter(cmd);
                        dataAdapter.Fill(ds, "getcid");

                        foreach (DataRow dr in ds.Tables["getcid"].Rows)
                        {
                            double qtityRest = helper.GetQtityRest(dr["commandID"].ToString(), bid);
                            double numberC = helper.GetOrderQtity(dr["commandID"].ToString(), bid);
                            qtityRest = qtityRest - numberC;
                            helper.updateQtityRest(qtityRest, dr["commandID"].ToString(), bid);
                        }

                    }
                }
            }
            catch (Exception ex) { }


            using (SqlConnection con = new SqlConnection(helper.connection))
            {
                using (SqlCommand cmd = new SqlCommand())
                {
                    cmd.Connection = con;
                    cmd.CommandText = "update Basket set totalPriceB = @totalprice, deliveryPlace = @dp, dateValidated = GetDate() where basketID = @bid";
                    cmd.Parameters.AddWithValue("@bid", bid);
                    cmd.Parameters.AddWithValue("@totalprice", totalp);
                    cmd.Parameters.AddWithValue("@dp", txtAdd.Text);

                    con.Open();
                    cmd.ExecuteNonQuery();
                    totalp = 0;
                    totallbl.Text = totalp.ToString();
                    helper.CreateNewBasket();
                    Response.Redirect(Request.Url.AbsoluteUri);
                }

            }
        }
        else
        {
            Label2.Visible = true;
            Label2.Text = "Delivery place is required ! ";
            Label2.ForeColor = Color.Red;
        }
    }
}