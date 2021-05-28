using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class Prescription : System.Web.UI.Page
    {
        String conStr = WebConfigurationManager.ConnectionStrings["SampleDB"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            Panel1.Visible = true;
            GridView2.DataBind();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Label1.Text = "";
            TextBox3.Text = "";
            TextBox1.Text = "";
            TextBox2.Text = "";
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection myCon = new SqlConnection(conStr);
            String selectSQL = "SELECT MAX(P_Id) From Prescription";
            SqlCommand cmdSelect = new SqlCommand(selectSQL, myCon);

            int inserted = 0;
            try
            {
                //Generat Primay Key val

                myCon.Open();
                Object nextID = null;
                nextID = cmdSelect.ExecuteScalar();
                if (nextID.Equals(DBNull.Value))
                    nextID = 1;
                else
                    nextID = Convert.ToInt32(nextID) + 1;
                //INSERT RECORD
                String insertSQL;
                insertSQL = "INSERT INTO Prescription (";
                insertSQL += "P_Id,Cust_id,D_name,P_medicien)";
                insertSQL += " VALUES(@P_Id,@Cust_id,@Doctor,@P_medicien)";
                SqlCommand cmdInsert = new SqlCommand(insertSQL, myCon);
                cmdInsert.Parameters.AddWithValue("@P_id", Convert.ToInt32(nextID));
                cmdInsert.Parameters.AddWithValue("@Cust_id", TextBox3.Text);
                cmdInsert.Parameters.AddWithValue("@Doctor", TextBox1.Text);
                cmdInsert.Parameters.AddWithValue("@P_medicien", TextBox2.Text);
                inserted = cmdInsert.ExecuteNonQuery();
                Response.Write("<script>alert('Record Inserted"+Label1.Text+"');</script>");
                Label2.Text = inserted.ToString() + "Record Insert Successfully";
                // Response.Write("<script>alert('')</script>");
            }
            catch (Exception ex)
            {
                               Label1.Text = ex.Message;
            }
        }
    }
}