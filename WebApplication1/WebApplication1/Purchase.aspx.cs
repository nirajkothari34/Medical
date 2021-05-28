using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Globalization;
using System.Linq;
using System.Threading;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class Purchase : System.Web.UI.Page
    {
        String conStr = WebConfigurationManager.ConnectionStrings["SampleDB"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
        protected override void InitializeCulture()
        {
            CultureInfo u = new CultureInfo("en-IN");
            u.NumberFormat.CurrencySymbol = "&#8377;";
            Thread.CurrentThread.CurrentCulture = u;
            base.InitializeCulture();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection myCon = new SqlConnection(conStr);
            String selectSQL = "SELECT Max(P_Id) FROM Purchase";
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
                insertSQL = "INSERT INTO Purchase (";
                insertSQL += "P_Id,Medicien_name,Stock,Quantity,Type,Unit,Pu_Rate,GST,mfg,Sa_Rate)";
                insertSQL += " VALUES (@P_Id,@Medicien_name,@Stock,@Quantity,@Type,@Unit,@Pu_Rate,@GST,@mfg,@Sa_Rate)";
                SqlCommand cmdInsert = new SqlCommand(insertSQL, myCon);
                cmdInsert.Parameters.AddWithValue("@P_Id", Convert.ToInt32(nextID));
                cmdInsert.Parameters.AddWithValue("@Medicien_name", TextBox1.Text);
                cmdInsert.Parameters.AddWithValue("@Stock", RadioButtonList1.SelectedValue);
                cmdInsert.Parameters.AddWithValue("@Unit", TextBox3.Text);
                cmdInsert.Parameters.AddWithValue("@Quantity", TextBox2.Text);
                cmdInsert.Parameters.AddWithValue("@Type", DropDownList1.SelectedValue);
                cmdInsert.Parameters.AddWithValue("@Pu_Rate", TextBox4.Text);
                cmdInsert.Parameters.AddWithValue("@GST", DropDownList2.SelectedValue);
                cmdInsert.Parameters.AddWithValue("@mfg", TextBox5.Text);
                cmdInsert.Parameters.AddWithValue("@Sa_Rate", TextBox6.Text);
                inserted = cmdInsert.ExecuteNonQuery();
                Response.Write("<script>alert('Record Insert Successfully')</script>");
                Label1.Text = inserted.ToString() + "Record Insert Successfully";
                GridView1.DataBind();
                //GridView2.DataBind();
               // DropDownList1.DataBind();
                Clear();
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

        private void Clear()
        {
            HiddenField1.Value = "";
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            TextBox6.Text = "";
            RadioButtonList1.SelectedValue = "";
           // throw new NotImplementedException();
        }
    }
}