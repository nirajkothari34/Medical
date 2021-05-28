<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ClearkPanel.aspx.cs" Inherits="WebApplication1.ClearkPanel" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 1430px;
            text-align: center;
        }
        .auto-style2 {
            font-size: x-large;
        }
        .auto-style3 {
            width: 1491px;
            text-align: center;
        }
        .auto-style4 {
            width: 974px;
            height: 435px;
            margin-top: 53px;
        }
        .auto-style5 {
            text-align: center;
        }
    </style>
</head>
<body style="width: 1493px; height: 30px">
    <form id="form1" runat="server">
        <div class="auto-style1">
            <strong><em>
            <asp:Panel ID="Panel1" runat="server" BackColor="#FFFF99" Height="26px" Width="1485px">
            
                <h3 class="auto-style3">
                    <asp:HyperLink ID="HyperLink1" runat="server" CssClass="auto-style2" NavigateUrl="~/Customer.aspx">Customer</asp:HyperLink>
                    <span class="auto-style2">&nbsp; </span>
                    <asp:HyperLink ID="HyperLink2" runat="server" CssClass="auto-style2" NavigateUrl="~/ViewCustomer.aspx">View Customer</asp:HyperLink>
                    <span class="auto-style2">&nbsp; </span>
                    <asp:HyperLink ID="HyperLink3" runat="server" CssClass="auto-style2" NavigateUrl="~/GenrateInvoice.aspx">Invoice</asp:HyperLink>
                    <span class="auto-style2">&nbsp; </span>
                    <asp:HyperLink ID="HyperLink4" runat="server" CssClass="auto-style2" NavigateUrl="~/Sales.aspx">Sales</asp:HyperLink>
                    <span class="auto-style2">&nbsp; </span>
                    <asp:HyperLink ID="HyperLink5" runat="server" CssClass="auto-style2" NavigateUrl="~/ViewReports.aspx">View Reports</asp:HyperLink>
                    <span class="auto-style2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
                    <asp:HyperLink ID="HyperLink6" runat="server" CssClass="auto-style2" NavigateUrl="~/Login.aspx">Logout</asp:HyperLink>
                </h3>
                </asp:Panel>
            </em></strong>
        </div>
    </form>
    <p class="auto-style5">
        <img alt="Not Found ..." class="auto-style4" src="Image/images%203.jpg" /></p>
</body>
</html>
