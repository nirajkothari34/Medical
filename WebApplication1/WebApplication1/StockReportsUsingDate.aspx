<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StockReportsUsingDate.aspx.cs" Inherits="WebApplication1.StockReportsUsingDate" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {
            width: 63%;
            height: 223px;
        }
        .auto-style4 {
            width: 342px;
            height: 43px;
            text-align: center;
        }
        .auto-style6 {
            text-align: center;
            height: 32px;
        }
        .auto-style7 {
            width: 338px;
            height: 43px;
            text-align: center;
        }
        .auto-style8 {
            height: 530px;
        }
        .auto-style9 {
            text-align: left;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" class="auto-style8">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Panel ID="Panel9" runat="server" BackColor="Yellow" BorderColor="Red" BorderStyle="Solid" BorderWidth="1px" Direction="LeftToRight" Font-Bold="False" ForeColor="Red" Height="4%" HorizontalAlign="Center" Width="1380px">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:HyperLink ID="HyperLink7" runat="server" NavigateUrl="~/Login.aspx">Login</asp:HyperLink>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:HyperLink ID="HyperLink8" runat="server" NavigateUrl="~/Registration_Form.aspx">Registration</asp:HyperLink>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Supplier.aspx">Supplier</asp:HyperLink>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/ViewReports.aspx">View Reports</asp:HyperLink>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/Stock.aspx">Stock</asp:HyperLink>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/ViewCustomer.aspx">View Customer</asp:HyperLink>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
            <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/Purchase.aspx">Purchase</asp:HyperLink>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="~/Sales.aspx">Sales</asp:HyperLink>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:HyperLink ID="HyperLink9" runat="server" NavigateUrl="~/GenrateInvoice.aspx">Invoice</asp:HyperLink>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:HyperLink ID="HyperLink10" runat="server" NavigateUrl="~/Customer.aspx">Customer</asp:HyperLink>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:HyperLink ID="HyperLink11" runat="server" NavigateUrl="~/Return Goods.aspx">Return Goods</asp:HyperLink>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:HyperLink ID="HyperLink12" runat="server" NavigateUrl="~/Prescription.aspx">Prescription</asp:HyperLink>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:HyperLink ID="HyperLink13" runat="server" NavigateUrl="~/Login.aspx">Log Out</asp:HyperLink>
        
        </asp:Panel>
        <div class="auto-style9">
    <div class="auto-style1">
    
        <h1><strong>STOCK REPORTS </strong></h1>
    
    </div>
        <table border="1" class="auto-style2" align="center">
            <tr>
                
                <td class="auto-style4">&nbsp;&nbsp; <strong>Start Date :&nbsp;
                    <asp:TextBox ID="TextBox3" runat="server" Width="240px" BorderWidth="2px" TextMode="Date" Font-Bold="True"></asp:TextBox>
&nbsp;
                    </strong>
                    </td>
                <td class="auto-style7">&nbsp;<strong>&nbsp;&nbsp; End Date :</strong>&nbsp;
                    <asp:TextBox ID="TextBox4" runat="server" Width="240px" BorderWidth="2px" TextMode="Date" Font-Bold="True"></asp:TextBox>
&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6" colspan="3">
                    <strong>
                    <asp:Button ID="Button2" runat="server" Text="Search " OnClick="Button2_Click" BorderStyle="Solid" BorderWidth="3px" Width="100px" />
                    </strong>
                </td>
            </tr>
        </table>
        

            <br />
&nbsp;
        

            <br />
        

             
     
                  <asp:GridView ID="GridView1" runat="server" BackColor="#FFFF66" BorderColor="Red" BorderStyle="Double" BorderWidth="5px" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" ForeColor="#0033CC" HorizontalAlign="Center" Caption="Stcoks" CaptionAlign="Top">
                      <HeaderStyle HorizontalAlign="Center" />
                      <RowStyle HorizontalAlign="Center" />
        </asp:GridView>
        

           
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     
        <asp:Label ID="Label1" runat="server" Enabled="False"></asp:Label>
        </div>
    </form>
</body>
</html>
