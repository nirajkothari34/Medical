<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Sales.aspx.cs" Inherits="WebApplication1.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
            font-size: x-large;
        }
        .newStyle1 {
            font-family: "Times New Roman", Times, serif;
            font-weight: bolder;
            font-style: normal;
            font-variant: normal;
            text-transform: uppercase;
            color: #008000;
            text-decoration: underline;
        }
        .auto-style2 {
            width: 54%;
            margin-left: 211px;
        }
        .auto-style3 {
            text-align: center;
        }
        .auto-style4 {
            height: 40px;
        }
        .auto-style5 {
            height: 40px;
            text-align: right;
            width: 213px;
        }
        .auto-style6 {
            text-align: right;
            width: 213px;
        }
        .auto-style7 {
            text-align: right;
        }
        .auto-style8 {
            text-align: right;
            width: 213px;
            height: 26px;
        }
        .auto-style9 {
            height: 26px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Panel ID="Panel9" runat="server" BackColor="Yellow" BorderColor="Red" BorderStyle="Solid" BorderWidth="1px" Direction="LeftToRight" Font-Bold="False" ForeColor="Red" Height="10%" HorizontalAlign="Center" Width="1380px">
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
            <asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="~/Prescription.aspx">Prescription</asp:HyperLink>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:HyperLink ID="HyperLink9" runat="server" NavigateUrl="~/GenrateInvoice.aspx">Invoice</asp:HyperLink>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:HyperLink ID="HyperLink10" runat="server" NavigateUrl="~/Customer.aspx">Customer</asp:HyperLink>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:HyperLink ID="HyperLink11" runat="server" NavigateUrl="~/Return Goods.aspx">Return Goods</asp:HyperLink>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:HyperLink ID="HyperLink12" runat="server" NavigateUrl="~/StockReportsUsingDate.aspx">Stock Report Using Date</asp:HyperLink>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:HyperLink ID="HyperLink13" runat="server" NavigateUrl="~/Login.aspx">Log Out</asp:HyperLink>
        
        </asp:Panel>
    <div class="auto-style1">
    
        <h1><strong class="newStyle1">SALES DETAILS </strong></h1>
    
    </div>
        <table class="auto-style2">
            <tr>
                <td class="auto-style7" colspan="2">
                    <asp:HiddenField ID="HiddenField1" runat="server" />
                </td>
            </tr>
            <tr>
                <td class="auto-style6"><strong>Enter Customer Name : </strong> </td>
                <td>
                    <asp:TextBox ID="TextBox5" runat="server" Width="169px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style6"><strong>Medicien Name : </strong> </td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" TextMode="MultiLine"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style6"><strong>Type : </strong> </td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" Width="170px">
                        <asp:ListItem>Select Type</asp:ListItem>
                    <asp:ListItem>Tablet</asp:ListItem>
                    <asp:ListItem>Drops</asp:ListItem>
                    <asp:ListItem>Liquid</asp:ListItem>
                    <asp:ListItem>Capsules</asp:ListItem>
                    <asp:ListItem>Inhalers</asp:ListItem>
                    <asp:ListItem>Injections</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style6"><strong>Quantiy&nbsp; : </strong> </td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" Width="168px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style6"><strong>GST : </strong> </td>
                <td>
                    <asp:DropDownList ID="DropDownList2" runat="server" Width="179px">
                        <asp:ListItem>Select GST</asp:ListItem>
                    <asp:ListItem>5%</asp:ListItem>
                    <asp:ListItem>8%</asp:ListItem>
                    <asp:ListItem>12%</asp:ListItem>
                    <asp:ListItem>18%</asp:ListItem>
                    <asp:ListItem>24%</asp:ListItem>
                    <asp:ListItem>28%</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style8"><strong>Selling Rate : </strong> </td>
                <td class="auto-style9">
                    <asp:TextBox ID="TextBox3" runat="server" Width="168px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style5"><strong>Total Rate : </strong> </td>
                <td class="auto-style4">
                    <asp:TextBox ID="TextBox4" runat="server" Width="169px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3" colspan="2">
                    <asp:Button ID="Button1" runat="server" Height="34px" Text="Add" Width="60px" OnClick="Button1_Click" />
       &nbsp;&nbsp;&nbsp;
       &nbsp;
                    <asp:Button ID="Button2" runat="server" Height="34px" Text="Cancle" />
                &nbsp;&nbsp;
                </td>
            </tr>
        </table>
        <asp:Label ID="Label2" runat="server"></asp:Label>
        <br />
        <asp:Label ID="Label3" runat="server"></asp:Label>
    </form>
</body>
</html>
