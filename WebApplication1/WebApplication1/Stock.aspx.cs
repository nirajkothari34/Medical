using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;
using System.Data;

namespace WebApplication1
{
    public partial class Stock : System.Web.UI.Page
    {
        String conStr = WebConfigurationManager.ConnectionStrings["MedicalDB"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
          //  Panel1.Visible = false;
            Panel2.Visible = false;
            Panel3.Visible = false;
            //Button8.Enabled = false;

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection myCon = new SqlConnection(conStr);
            String selectSQL = "SELECT Max(S_id) FROM Stocks";
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
                insertSQL = "INSERT INTO Stocks (";
                insertSQL += "Medicien_name,Quantity,Type,Unit,mfg,ExpDate,P_Rate,D_Rate ,GST ,S_Rate,S_id)";
                insertSQL += " VALUES (@Medicien_name , @Quantity , @Type , @Unit , @mfg , @ExpDate,@P_Rate, @D_Rate , @GST ,@S_Rate,@S_id)";
                SqlCommand cmdInsert = new SqlCommand(insertSQL, myCon);
                cmdInsert.Parameters.AddWithValue("@S_Id", Convert.ToInt32(nextID));
                cmdInsert.Parameters.AddWithValue("@Medicien_name", TextBox1.Text);
                cmdInsert.Parameters.AddWithValue("@Quantity", TextBox2.Text);
                cmdInsert.Parameters.AddWithValue("@Type", DropDownList2.SelectedValue);
                cmdInsert.Parameters.AddWithValue("@Unit", TextBox3.Text);
                cmdInsert.Parameters.AddWithValue("@mfg", TextBox4.Text);
                cmdInsert.Parameters.AddWithValue("@ExpDate", TextBox8.Text);
                cmdInsert.Parameters.AddWithValue("@P_Rate", TextBox7.Text);
                cmdInsert.Parameters.AddWithValue("@D_Rate", TextBox5.Text);
                cmdInsert.Parameters.AddWithValue("@GST", DropDownList1.SelectedValue);
                cmdInsert.Parameters.AddWithValue("@S_Rate", TextBox6.Text);
                inserted = cmdInsert.ExecuteNonQuery();
                Response.Write("<script>alert('Record Insert Successfully')</script>");
                Label3.Text = inserted.ToString() + "Record Insert Successfully";
                GridView1.DataBind();
                GridView3.DataBind();
                //GridView2.DataBind();
                //Label1.Text = inserted.ToString() + " record inserted.";
            }
            catch (Exception ex)
            {
                Label3.Text = ex.Message;
            }
            finally
            {
                myCon.Close();
            }
        }
        protected void Button5_Click(object sender, EventArgs e)
        {
            SqlConnection myCon = new SqlConnection(conStr);
            String updateSQL = "UPDATE Stock SET ";
            updateSQL += "Quantity=@Quantity,Type=@Type,Unit=@Unit,mfg=@mfg,P_Rate=@P_Rate,D_Rate=@D_Rate,GST=@GST,S_Rate=@S_Rate ";
            updateSQL += "WHERE Medicien_name=@Medicien_name";
            SqlCommand cmdUpdate = new SqlCommand(updateSQL, myCon);

            cmdUpdate.Parameters.AddWithValue("@Medicien_name", TextBox1.Text);
            cmdUpdate.Parameters.AddWithValue("@Quantity", TextBox2.Text);
            cmdUpdate.Parameters.AddWithValue("@Type", DropDownList2.SelectedValue);
            cmdUpdate.Parameters.AddWithValue("@Unit", TextBox3.Text);
            cmdUpdate.Parameters.AddWithValue("@mfg", TextBox4.Text);
            cmdUpdate.Parameters.AddWithValue("@P_Rate", TextBox7.Text);
            cmdUpdate.Parameters.AddWithValue("@D_Rate", TextBox5.Text);
            cmdUpdate.Parameters.AddWithValue("@GST", DropDownList1.SelectedValue);
            cmdUpdate.Parameters.AddWithValue("@S_Rate", TextBox6.Text);

            int updated = 0;
            try
            {
                myCon.Open();
                updated = cmdUpdate.ExecuteNonQuery();
                Response.Write("<script>alert('Recored Updated Successfully')</script>");
                
            }
            catch (Exception ex)
            {
                Label3.Text = ex.Message;
            }
            finally
            {
                myCon.Close();
            }
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            Label3.Text = "";
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            TextBox6.Text = "";
            TextBox7.Text = "";
            DropDownList1.SelectedIndex = -1;
            DropDownList2.SelectedIndex = -1;

        }
        protected void Button3_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection myCon = new SqlConnection(conStr);
                myCon.Open();
                SqlDataAdapter sda = new SqlDataAdapter("Select * From Stock ", conStr);
                DataTable dt = new DataTable();
                //GridView1.DataSource = dt;
                GridView1.DataBind();
            }
            catch (Exception ex)
            {
                Label3.Text = ex.Message;
            }
        }

        protected void DetailsView1_ItemInserted(object sender, DetailsViewInsertedEventArgs e)
        {
            Response.Write("<script>alert('Recored Inserted Successfully')</script>");
            GridView1.DataBind();
        }

        protected void GridView1_RowUpdated(object sender, GridViewUpdatedEventArgs e)
        {
            Response.Write("<script>alert('Recored Updated Successfully')</script>");
            GridView1.DataBind();
        }

        protected void GridView1_RowDeleted(object sender, GridViewDeletedEventArgs e)
        {
            Response.Write("<script>alert('Recored Deleted Successfully')</script>");
            GridView1.DataBind();
        }
        protected void Button8_Click(object sender, EventArgs e)
        {
            Panel2.Visible = false;
            //Panel1.Visible = false;
            Panel3.Visible = true;
        }

        
    }
}
