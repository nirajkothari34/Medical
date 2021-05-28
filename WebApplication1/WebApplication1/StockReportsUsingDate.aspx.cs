using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class StockReportsUsingDate : System.Web.UI.Page
    {
        String conStr = WebConfigurationManager.ConnectionStrings["SampleDB"].ConnectionString;
        //static Boolean validdate;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            //SqlConnection myCon = new SqlConnection(conStr);
            String myquery = "Select S_Id,Medicien_Name,mfg ,ExpDate,Type,Unit,S_Rate,Quantity From Stocks Where mfg between'" + TextBox3.Text + "'and'" + TextBox4.Text + "'";
            SqlConnection con = new SqlConnection(conStr);
            SqlCommand cmd = new SqlCommand(myquery, con);
            con.Open();
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                GridView1.DataSource = dt;
                GridView1.DataBind();
            }
            else
            {
                Label1.Text = "No Record Found .....";
            }
            con.Close();
        }
    }
}