using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;

namespace WebApplication1
{
    public partial class Return_Goods : System.Web.UI.Page
    {
        String conStr = WebConfigurationManager.ConnectionStrings["SampleDB"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button3_Click(object sender, EventArgs e)
        {
            SqlConnection myCon = new SqlConnection(conStr);
            String selectSQL = "SELECT Max(R_id) FROM Returns";
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
                insertSQL = "INSERT INTO Returns (";
                insertSQL += "R_Medicien,R_Quantity,R_Type,R_id,R_Reason,R_Amount,R_Returns)";
                insertSQL += " VALUES (@R_MedicienName , @R_Quantity , @R_Type ,@R_id, @Reason , @Amount , @Return)";
                SqlCommand cmdInsert = new SqlCommand(insertSQL, myCon);
                cmdInsert.Parameters.AddWithValue("@R_Id", Convert.ToInt32(nextID));
                cmdInsert.Parameters.AddWithValue("@R_MedicienName", TextBox1.Text);
                cmdInsert.Parameters.AddWithValue("@R_Quantity", TextBox2.Text);
                cmdInsert.Parameters.AddWithValue("@R_Type", DropDownList1.SelectedValue);
                cmdInsert.Parameters.AddWithValue("@Reason",RadioButtonList1.SelectedValue);
                cmdInsert.Parameters.AddWithValue("@Amount", TextBox3.Text);
                cmdInsert.Parameters.AddWithValue("@Return", RadioButtonList2.SelectedValue);
                inserted = cmdInsert.ExecuteNonQuery();
                Response.Write("<script>alert('Record Insert Successfully')</script>");
                //GridView1.DataBind();
                Label1.Text = inserted.ToString() + " record inserted.";
            }
            catch (Exception ex)
            {
                Label1.Text = ex.Message;
            }
            finally
            {
                myCon.Close();
            }
        }
    }
}