<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminPanel.aspx.cs" Inherits="WebApplication1.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 1354px;
            height: 46px;
        }
        .auto-style3 {
            text-align: center;
            width: 1337px;
        }
        .auto-style4 {
            margin-left: 0px;
        }
        .auto-style5 {
            width: 538px;
            height: 263px;
            margin-left: 0px;
        }
        .auto-style6 {
            height: 342px;
            text-align: center;
            margin-top: 160px;
        }
    </style>
    </head>
<body style="width: 1350px; height: 38px">
    <form id="form1" runat="server" class="auto-style1">
<asp:Panel runat="server" Height="30px" BackColor="#FFFF66" BorderColor="#FFFFCC" BorderStyle="Dotted" BorderWidth="1px" Width="1348px" CssClass="auto-style4">
    <div class="auto-style3">
        <em><strong>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Registration_Form.aspx">Registration</asp:HyperLink>
        &nbsp;
        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Supplier.aspx">Supplier</asp:HyperLink>
        &nbsp;
        <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/Customer.aspx">Customer</asp:HyperLink>
        &nbsp;
        <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/Stock.aspx">Stock</asp:HyperLink>
        &nbsp;
        <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/ViewCustomer.aspx">View Customer</asp:HyperLink>
        &nbsp;
        <asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="~/Purchase.aspx">Purchase Details</asp:HyperLink>
        &nbsp;
        <asp:HyperLink ID="HyperLink7" runat="server" NavigateUrl="~/Sales.aspx">Sales Details</asp:HyperLink>
        &nbsp;
        <asp:HyperLink ID="HyperLink8" runat="server" NavigateUrl="~/GenrateInvoice.aspx">Invoice</asp:HyperLink>
        &nbsp;
        <asp:HyperLink ID="HyperLink9" runat="server" NavigateUrl="~/ViewReports.aspx">View Reports</asp:HyperLink>
        &nbsp;
        <asp:HyperLink ID="HyperLink10" runat="server" NavigateUrl="~/Return Goods.aspx">Return Goods</asp:HyperLink>
        &nbsp;
        <asp:HyperLink ID="HyperLink11" runat="server" NavigateUrl="~/Prescription.aspx">Prescription</asp:HyperLink>
        &nbsp;
        <asp:HyperLink ID="HyperLink12" runat="server" NavigateUrl="~/StockReportsUsingDate.aspx">Date Report Of Stock</asp:HyperLink>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:HyperLink ID="HyperLink13" runat="server" NavigateUrl="~/Login.aspx">Logout</asp:HyperLink>
        </strong></em>
    </div>
</asp:Panel>
    </form>
    <p class="auto-style6">
        <img alt="Not Found" class="auto-style5" src="Image/index.png" /></p>
</body>
</html>
