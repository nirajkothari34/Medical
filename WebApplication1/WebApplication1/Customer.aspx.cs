using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data.SqlClient;
using System.Data;

namespace WebApplication1
{
    public partial class Customer : System.Web.UI.Page
    {
        String conStr = WebConfigurationManager.ConnectionStrings["MedicalDB"].ConnectionString;
        //SqlConnection myCon = new SqlConnection(WebConfigurationManager.ConnectionStrings["SampleDB"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            Button6.Enabled = true;
            //Button7.Enabled = false;
            Panel1.Visible = false;
            //Panel2.Visible = false;
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            String gender = String.Empty;
            if (RadioButton1.Checked)
            {
                gender = "Male";
            }
            else
            {
                gender = "Female";
            }
            SqlConnection myCon = new SqlConnection(conStr);
            String selectSQL = "SELECT Max(Cust_id) FROM Customer";
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
                insertSQL = "INSERT INTO Customer (";
                insertSQL += "Cust_Id,Cust_name,Age,Gender,Customer_Address,Mobile_No,Medicien_name,Unit,Quantity,Type)";
                insertSQL += " VALUES (@Cust_id,@Cust_name,@Age,@Gender,@Customer_Address,@Mobile_no,@Medicien_name,@Unit,@Quantity,@Type)";
                SqlCommand cmdInsert = new SqlCommand(insertSQL, myCon);
                cmdInsert.Parameters.AddWithValue("@Cust_id", Convert.ToInt32(nextID));
                cmdInsert.Parameters.AddWithValue("@Cust_name", TextBox1.Text);
                cmdInsert.Parameters.AddWithValue("@Age", TextBox2.Text);
                cmdInsert.Parameters.AddWithValue("@Gender", gender);
                cmdInsert.Parameters.AddWithValue("@Mobile_no", TextBox3.Text);
                cmdInsert.Parameters.AddWithValue("@Customer_Address", TextBox4.Text);
                cmdInsert.Parameters.AddWithValue("@Medicien_name", TextBox5.Text);
                cmdInsert.Parameters.AddWithValue("@Unit", TextBox6.Text);
                cmdInsert.Parameters.AddWithValue("@Quantity", TextBox7.Text);
                cmdInsert.Parameters.AddWithValue("@Type", TextBox8.Text);

                inserted = cmdInsert.ExecuteNonQuery();
                Response.Write("<script>alert('Record Insert Successfully')</script>");
                Label1.Text = inserted.ToString() + "Record Insert Successfully";
                GridView1.DataBind();
               // GridView2.DataBind();
               // DropDownList1.DataBind();
                //Clear();
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

        protected void Button6_Click(object sender, EventArgs e)
        {
            Panel1.Visible = true;
            GridView1.DataBind();
            //Panel2.Visible = false;
            //GridView2.DataBind();
        }
        protected void Button4_Click(object sender, EventArgs e)
        {
            Clear();
        }

        private void Clear()
        {
            Hf1.Value = "";

            TextBox1.Text =TextBox2.Text =TextBox3.Text =TextBox4.Text =TextBox5.Text =TextBox6.Text = TextBox7.Text = TextBox8.Text = "";
            Button5.Text = "Insert";
            Button6.Enabled = false;
            //Button7.Enabled = false;
            //throw new NotImplementedException();
        }
    }
}