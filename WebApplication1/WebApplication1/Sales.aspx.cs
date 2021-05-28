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
    public partial class WebForm1 : System.Web.UI.Page
    {
        String conStr = WebConfigurationManager.ConnectionStrings["MedicalDB"].ConnectionString;

        public object MessageBox { get; private set; }

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection myCon = new SqlConnection(conStr);
            String selectSQL = "SELECT Max(Sa_Id) FROM Sales";
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
                insertSQL = "INSERT INTO Sales (";
                insertSQL += "Sa_Id,Customer_Name,Medicien_name,Quantity,Type,GST,Sales_Rate,Total_Rate)";
                insertSQL += " VALUES (@Sa_Id,@Customer_Name,@Medicien_name,@Quantity,@Type,@GST,@Sales_Rate,@Total_Rate)";
                SqlCommand cmdInsert = new SqlCommand(insertSQL, myCon);
                cmdInsert.Parameters.AddWithValue("@Sa_Id", Convert.ToInt32(nextID));
                cmdInsert.Parameters.AddWithValue("@Customer_Name", TextBox5.Text);
                cmdInsert.Parameters.AddWithValue("@Medicien_name", TextBox1.Text);
                //cmdInsert.Parameters.AddWithValue("@Stock", RadioButtonList1.SelectedValue);
                //cmdInsert.Parameters.AddWithValue("@Unit", TextBox3.Text);
                cmdInsert.Parameters.AddWithValue("@Quantity", TextBox2.Text);
                cmdInsert.Parameters.AddWithValue("@Type", DropDownList1.SelectedValue);
                //cmdInsert.Parameters.AddWithValue("@Pu_Rate", TextBox4.Text);
                cmdInsert.Parameters.AddWithValue("@GST", DropDownList2.SelectedValue);
                //cmdInsert.Parameters.AddWithValue("@mfg", TextBox5.Text);
                cmdInsert.Parameters.AddWithValue("@Sales_Rate", TextBox3.Text);
                cmdInsert.Parameters.AddWithValue("@Total_Rate", TextBox4.Text);
                inserted = cmdInsert.ExecuteNonQuery();
                
                Response.Write("<script>alert('Record Insert Successfully')</script>");
                Label2.Text = inserted.ToString() + "Record Insert Successfully";
                //GridView1.DataBind();
                //GridView2.DataBind();
                // DropDownList1.DataBind();
                //Clear();
                //Response.Redirect("Login.aspx");
            }
            catch (Exception ex)
            {
                Label2.Text = ex.Message;
            }
            finally
            {
                myCon.Close();
            }
        }

       
    }
}