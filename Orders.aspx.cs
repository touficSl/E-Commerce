using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Orders : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        bindGrid();
    }

    private void bindGrid()
    {
        using (SqlConnection con = new SqlConnection(helper.connection))
        {
            using (SqlCommand cmd = new SqlCommand())
            {
                cmd.Connection = con;
                cmd.CommandText = "Select * from View_Order where username = @user and dateValidated IS NOT NULL";
                cmd.Parameters.AddWithValue("@user", helper.userid);

                DataTable dt = new DataTable();
                SqlDataAdapter dta = new SqlDataAdapter(cmd);
                dta.Fill(dt);
                grdOrders.DataSource = dt;
                grdOrders.DataBind();
            }

        }
    }
}