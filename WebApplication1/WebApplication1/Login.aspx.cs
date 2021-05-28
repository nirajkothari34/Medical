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
    public partial class Login : System.Web.UI.Page
    {
        String conStr = WebConfigurationManager.ConnectionStrings["SampleDB"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnLogin_Click(object sender, EventArgs e)
        {
            try
                {
                    int i = 0;
                    SqlConnection myCon = new SqlConnection(conStr);
                    String selectSQL = "SELECT * FROM registration Where Email_id='" + txtUserName.Text + "'and Password='" + txtPass.Text + "'";
                    SqlCommand cmdSelect = new SqlCommand(selectSQL, myCon);
                    SqlDataAdapter sda = new SqlDataAdapter(cmdSelect);
                    DataSet da = new DataSet();
                    sda.Fill(da, "registration");
                    if (da.Tables[i].Rows.Count > 0)
                    {
                        Label1.Text = "Welcome";
                    }
                    else
                    {
                        txtUserName.Text="admin";
                        txtPass.Text="admin";
                        Label1.Text = "welcome Admin";
                    }
                }
                catch (Exception ex)
                {
                    Label1.Text = ex.Message;
                }
            }
    }
}