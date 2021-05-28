using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Net.Mail;
using System.Net;

namespace WebApplication1
{
    public partial class Registration_Form : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(@"Data Source=localhost\SQLEXPRESS;Initial Catalog=MedicalDB;Integrated Security=True;Pooling=False;MultipleActiveResultSets=True;Application Name=EntityFramework");
                con.Open();
                SqlCommand cmd = new SqlCommand("insert into Registration values(@name,@Mobile_Number,@gender,@Email_id,@Password)", con);
                cmd.Parameters.AddWithValue("@name",TextBox1.Text);
                cmd.Parameters.AddWithValue("@password",TextBox4.Text);
                //cmd.Parameters.AddWithValue("@confirmPassword",txtPassCon);
                cmd.Parameters.AddWithValue("@gender",RadioButtonList1.SelectedValue);
                cmd.Parameters.AddWithValue("@email_id", TextBox3.Text);
                cmd.Parameters.AddWithValue("@Mobile_Number", TextBox2.Text);
                cmd.ExecuteNonQuery();
                Response.Write("<script>alert('Register Successfully')</script>");
                LbInfo.Text = "Register Successfully";                
                //Response.Redirect("Home.aspx");
            }
            catch (Exception ex)
            {
                LbInfo.Text = ex.Message.ToString();
            }
        }
    }
}