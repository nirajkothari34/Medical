using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
//using iTextSharp.text;
using System.IO;
//using iTextSharp.text.html.simpleparser;
//using iTextSharp.text.pdf;
using System.Web.Configuration;
using System.Data.SqlClient;

namespace WebApplication1
{
    public partial class GenrateInvoice : System.Web.UI.Page
    {
        String conStr = WebConfigurationManager.ConnectionStrings["SampleDB"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                FillProductList();

            }
        }

        private void FillProductList()
        {

            SqlConnection myCon = new SqlConnection(conStr);
            String selectSQL = "SELECT S_Id,Medicien_Name from Stocks";
            SqlCommand cmdSelect = new SqlCommand(selectSQL, myCon);
            SqlDataReader reader;
            try
            {
                myCon.Open();
                reader = cmdSelect.ExecuteReader();
                ddlProduct.Items.Clear();
                while (reader.Read())
                {
                    ListItem anItem = new ListItem();
                    anItem.Text = reader["Medicien_Name"].ToString();
                    anItem.Value = reader["S_Id"].ToString();
                    ddlProduct.Items.Add(anItem);
                }
                reader.Close();
            }
            catch (Exception ex)
            {
                lblMsg.Text = ex.Message;
            }
            finally
            {
                myCon.Close();
            }
        }

        protected void btnBill_Click(object sender, EventArgs e)
        {
            invoicemethod();
            //Clear();
        }

        private void Clear()
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
            txtdate.Text = "";
            txtPrice.Text = "";
            txtQty.Text = "";
            txtTotal.Text = "";
            Label2.Text = "";
            lblInvoice.Text = "";
            ddlProduct.SelectedIndex = -1; 
        }

        private void invoicemethod()
        {
            SqlConnection myCon = new SqlConnection(conStr);

            String selectSQL = "SELECT Max(Invoice_Id) FROM Bill_Master ";
            int inserted = 0;
            try
            {
                //Generat Primay Key val
                myCon.Open();
                Object nextID = null;
                SqlCommand cmdSelect = new SqlCommand(selectSQL, myCon);
                nextID = cmdSelect.ExecuteScalar();
                if (nextID.Equals(DBNull.Value))
                    nextID = 1;
                else
                    nextID = Convert.ToInt32(nextID) + 1;
                lblInvoice.Text = Convert.ToString(nextID);
                txtdate.Text = DateTime.Now.ToString("yyyy-MM-dd");

                //INSERT RECORD
                String insertSQL;
                insertSQL = "INSERT INTO Bill_Master(";
                insertSQL += "Invoice_Id,Date,TotalAmount,Cust_Name)";
                insertSQL += " VALUES (@Invoice_Id, @Date, @TotalAmount,@Cust_Name)";

                SqlCommand cmdInsert = new SqlCommand(insertSQL, myCon);
                cmdInsert.Parameters.AddWithValue("@Invoice_Id", Convert.ToInt32(lblInvoice.Text));
                cmdInsert.Parameters.AddWithValue("@Date", DateTime.Now.ToString("yyyy-MM-dd"));
                cmdInsert.Parameters.AddWithValue("@TotalAmount", Convert.ToString(txtTotal.Text));
                cmdInsert.Parameters.AddWithValue("@Cust_Name", TextBox2.Text);

                inserted = cmdInsert.ExecuteNonQuery();
                if (inserted > 0)
                {
                    lblMsg.Text = " ";
                }

            }
            catch (Exception ex)
            {
                lblMsg.Text = ex.Message;
            }
            finally
            {
                myCon.Close();
            }
        }

        protected void ddlProduct_SelectedIndexChanged(object sender, EventArgs e)
        {
            SqlConnection myCon = new SqlConnection(conStr);
            String selectSQL = "SELECT * FROM Stocks WHERE S_Id=" + ddlProduct.SelectedValue;
            SqlCommand cmdSelect = new SqlCommand(selectSQL, myCon);
            SqlDataReader reader;
            try
            {
                myCon.Open();
                reader = cmdSelect.ExecuteReader();
                reader.Read();
                txtPrice.Text = reader["Price"].ToString();
                reader.Close();
                lblMsg.Text = "";

            }
            catch (Exception ex)
            {
                lblMsg.Text = ex.Message;
            }
            finally
            {
                myCon.Close();
            }
        }

        protected void txtQty_TextChanged(object sender, EventArgs e)
        {
            int price = Convert.ToInt32(txtPrice.Text);
            int qty = Convert.ToInt32(txtQty.Text);
            int total = price * qty;
            txtTotal.Text = Convert.ToString(total);
        }
        
        private void FillProductGrid()
        {
            SqlConnection myCon = new SqlConnection(conStr);
            try
            {
                myCon.Open();
                String selectSQL = "SELECT i.B_Id,S.S_Rate,i.Quantity,i.Total From Bill i,Stocks S,Bill_Master im Where S.S_Id=i.B_Id AND im.Invoice_Id=i.B_Id AND im.Invoice_Id=" + lblInvoice.Text;
                SqlCommand cmdSelect = new SqlCommand(selectSQL, myCon);
                SqlDataReader reader;

                reader = cmdSelect.ExecuteReader();
                gdvProduct.Dispose();
                gdvProduct.DataSource = reader;
                gdvProduct.DataBind();
                reader.Close();
            }
            catch (Exception ex)
            {
                lblMsg.Text = ex.Message;
            }
            finally
            {
                myCon.Close();
            }
        }

        protected void Savebtn_Click(object sender, EventArgs e)
        {
            SqlConnection myCon = new SqlConnection(conStr);
            String updateSQL = "UPDATE Bill_Master SET ";
            updateSQL += "TotalAmount=@TotalAmt ";
            updateSQL += "WHERE Invoice_Id=@Invoice_Id";

            SqlCommand cmdUpdate = new SqlCommand(updateSQL, myCon);
            cmdUpdate.Parameters.AddWithValue("@TotalAmt", Label2.Text);
            cmdUpdate.Parameters.AddWithValue("@Invoice_Id", lblInvoice.Text);
            int updated = 0;

            try
            {
                myCon.Open();
                updated = cmdUpdate.ExecuteNonQuery();
                lblMsg.Text = updated.ToString() + " record saved.";
            }
            catch (Exception ex)
            {
                lblMsg.Text = ex.Message;
            }
            finally
            {
                myCon.Close();
            }
            if (updated > 0)
                FillProductList();
        }

        protected void txtTotalAmount_TextChanged(object sender, EventArgs e)
        {
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int totalAmount = Convert.ToInt32(txtTotal.Text);
            decimal GST = Convert.ToDecimal(TextBox1.Text);
            decimal GSTAmount=(Convert.ToDecimal(totalAmount+(totalAmount*GST)/100));
            Label2.Text = Convert.ToString(GSTAmount);
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlConnection myCon = new SqlConnection(conStr);
            int insertProd = 0;
            try
            {
                myCon.Open();
                //Now Inserting new record
                String insertSQL;
                insertSQL = "INSERT INTO Bill (";
                insertSQL += "B_Id,S_Id,Price,Quantity,Total,GST,Invoice_Id)";
                insertSQL += "Values(@B_Id,@S_Id,@Price,@Quantity,@Total,@GST,@Invoice_Id)";

                SqlCommand cmdSelect = new SqlCommand(insertSQL, myCon);
                cmdSelect.Parameters.AddWithValue("@B_Id", TextBox3.Text);
                cmdSelect.Parameters.AddWithValue("@S_Id", ddlProduct.SelectedValue);
                cmdSelect.Parameters.AddWithValue("@Price", Convert.ToInt32(txtPrice.Text));
                cmdSelect.Parameters.AddWithValue("@Quantity", Convert.ToInt32(txtQty.Text));
                cmdSelect.Parameters.AddWithValue("@Total", Convert.ToInt32(txtTotal.Text));
                cmdSelect.Parameters.AddWithValue("@GST", TextBox1.Text);
                cmdSelect.Parameters.AddWithValue("@Invoice_Id", Convert.ToInt32(lblInvoice.Text));
                insertProd = cmdSelect.ExecuteNonQuery();

                if (insertProd > 0)
                {
                    txtQty.Text = " ";
                    txtPrice.Text = " ";
                    txtTotal.Text = " ";
                    //  lblMsg.Text = insertProd.ToString() + "record inserted..";
                }
                Object nextID = null;
                String selectSQL = "SELECT Sum(Total) FROM Bill Group By Invoice_Id having Invoice_Id=" + lblInvoice.Text;
                SqlCommand cmdSelect1 = new SqlCommand(selectSQL, myCon);
                nextID = cmdSelect1.ExecuteScalar();
                Label2.Text = Convert.ToString(nextID);

            }
            catch (Exception ex)
            {
                lblMsg.Text = ex.Message;
            }
            finally
            {
                myCon.Close();
            }
            if (insertProd > 0)
            {
                //   FillProductList();
                FillProductGrid();
            }
        }
    }
}