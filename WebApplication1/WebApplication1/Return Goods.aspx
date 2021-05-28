<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Return Goods.aspx.cs" Inherits="WebApplication1.Return_Goods" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            text-align: center;
            height: 28px;
        }
        #form1
        {
            height: 508px;
            width: 1053px;
        }
        .style2
        {
            width: 61%;
            height: 312px;
            margin-left: 234px;
            margin-top: 34px;
            margin-bottom: 17px;
        }
        .style6
        {
            font-weight: bold;
        }
        .style9
        {
            font-weight: bold;
            text-align: center;
            height: 61px;
        }
        .style10
        {
            height: 61px;
        }
        .style11
        {
            font-weight: bold;
            text-align: center;
            height: 62px;
        }
        .style12
        {
            height: 62px;
        }
        .style13
        {
            text-align: center;
            height: 28px;
            font-size: x-large;
            font-weight: bold;
        }
        .auto-style1 {
            width: 51%;
            height: 312px;
            margin-left: 234px;
            margin-top: 34px;
            margin-bottom: 17px;
        }
        .auto-style2 {
            font-weight: bold;
            text-align: center;
            height: 61px;
            width: 264px;
        }
        .auto-style3 {
            font-weight: bold;
            text-align: center;
            height: 62px;
            width: 264px;
        }
        .auto-style4 {
            margin-left: 0px;
        }
        .auto-style5 {
            height: 61px;
            width: 271px;
        }
        .auto-style6 {
            height: 62px;
            width: 271px;
        }
    </style>
</head>
<body style="height: 537px">
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
            <asp:HyperLink ID="HyperLink11" runat="server" NavigateUrl="~/Prescription.aspx">Prescription</asp:HyperLink>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:HyperLink ID="HyperLink12" runat="server" NavigateUrl="~/StockReportsUsingDate.aspx">Stock Report Using Date</asp:HyperLink>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:HyperLink ID="HyperLink13" runat="server" NavigateUrl="~/Login.aspx">Log Out</asp:HyperLink>
        
        </asp:Panel>
<div class="style13">
    
    Return Goods Details</div>
    <form id="form1" runat="server">
    
    <div class="style1">
    
    <table class="auto-style1">
        <tr>
            <td class="style9" colspan="2">
                <asp:HiddenField ID="ReturnId" runat="server" Value="Return Id " />
            </td>
        </tr>
        <tr>
            <td class="auto-style2">
                Medicien Name :
            </td>
            <td class="auto-style5">
                <asp:TextBox ID="TextBox1" runat="server" Height="22px" Width="263px" ToolTip="Medicien Name"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Enter medicien name" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">
                Quantity :
            </td>
            <td class="auto-style5">
                <asp:TextBox ID="TextBox2" runat="server" Width="261px" ToolTip="Quantity Of return medicien"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Enter Quantity" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">
                Type :</td>
            <td class="auto-style5">
                <asp:DropDownList ID="DropDownList1" runat="server" Width="261px" 
                    Height="22px" ToolTip="Type Of medicien for return">
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
            <td class="auto-style2">
                Reason to Return :&nbsp;
            </td>
            <td class="auto-style5">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RadioButtonList ID="RadioButtonList1" runat="server" Width="261px" Height="16px" CssClass="auto-style4">
                    <asp:ListItem>Expire</asp:ListItem>
                    <asp:ListItem Value="Defective"></asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">
                Total
                Amount :
            </td>
            <td class="auto-style5">
                <asp:TextBox ID="TextBox3" runat="server" Width="261px" ToolTip="Amount to Return"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">
                Method Of Return
            </td>
            <td class="auto-style6">
                <asp:RadioButtonList ID="RadioButtonList2" runat="server" Width="261px" CssClass="auto-style4">
                    <asp:ListItem>Cash</asp:ListItem>
                    <asp:ListItem>Replacement</asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
    </table>
    
        <br />
        <br />
    
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button3" runat="server" Font-Bold="True" Text="Save" Width="68px" OnClick="Button3_Click" />
        &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
        <asp:Button ID="Button2" runat="server" CssClass="style6" Text="Cancel" />
        &nbsp;&nbsp;
        <br />
    </div>
    </form>
    <asp:Label ID="Label1" runat="server"></asp:Label>
&nbsp;
</body>
</html>
