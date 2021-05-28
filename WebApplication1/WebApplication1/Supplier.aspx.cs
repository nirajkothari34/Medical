using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Collections.Specialized;

namespace WebApplication1
{
    public partial class Supplier : System.Web.UI.Page
    {
        String conStr = WebConfigurationManager.ConnectionStrings["MedicalDB"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            Panel1.Visible = false;
            GridView1.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            string destinationaddr = "91" + TextBox3.Text;
            string message = "Hi " + TextBox1.Text + " , Thanks!! For Supplying " + TextBox5.Text + "." + "From Jai Bhagwan Medicial Shop" + "";

            String message1 = HttpUtility.UrlEncode(message);
            using (var wb = new WebClient())
            {
                byte[] response = wb.UploadValues("https://api.textlocal.in/send/", new NameValueCollection()
                {
                {"apikey" , "sLmBP1Tk+Yo-QUYvXEbwFtwPOiQCLPQSylVkYwVgzC"},
                {"numbers" , destinationaddr},
                {"message" , message1},
                {"sender" , "TXTLCL"}
                });
                string result = System.Text.Encoding.UTF8.GetString(response);
                savedata();
                Label2.Text = "You Have Successfully Registered";
            }
        }
        private void savedata()
        {
            SqlConnection myCon = new SqlConnection(conStr);
            String selectSQL = "SELECT Max(Su_id) FROM Supplier";
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
                insertSQL = "INSERT INTO Supplier (";
                insertSQL += "Su_Name,Su_Address,Su_Mobile,Su_Company,Su_Description,Su_id)";
                insertSQL += " VALUES (@Name,@Address,@Mobile,@Company,@Description,@Su_id)";
                SqlCommand cmdInsert = new SqlCommand(insertSQL, myCon);
                cmdInsert.Parameters.AddWithValue("@Su_id", Convert.ToInt32(nextID));
                cmdInsert.Parameters.AddWithValue("@Name", TextBox1.Text);
                cmdInsert.Parameters.AddWithValue("@Address", TextBox2.Text);
                cmdInsert.Parameters.AddWithValue("@Mobile", TextBox3.Text);
                cmdInsert.Parameters.AddWithValue("@Company", TextBox4.Text);
                cmdInsert.Parameters.AddWithValue("@Description", TextBox5.Text);
                inserted = cmdInsert.ExecuteNonQuery();
                Response.Write("<script>alert('Record Insert Successfully')</script>");
                Label2.Text = inserted.ToString() + "Record Insert Successfully";
            }
            catch (Exception ex)
            {
                Label2.Text = ex.Message;
            }
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            Panel1.Visible = true;
            GridView1.DataBind();

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
        }
    }
}