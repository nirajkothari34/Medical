<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Prescription.aspx.cs" Inherits="WebApplication1.Prescription" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            text-align: center;
        }
        #form1
        {
            height: 291px;
            width: 835px;
            margin-left: 37px;
        }
        .style2
        {
            width: 52%;
            height: 223px;
            margin-left: 224px;
            margin-top: 16px;
        }
        .style3
        {
            font-weight: bold;
        }
        .style4
        {
            text-align: left;
        }
        .style5
        {
            font-weight: bold;
            text-align: left;
        }
        .newStyle1 {
            color: #008000;
            text-transform: uppercase;
            font-variant: normal;
            font-style: oblique;
            font-weight: 700;
            font-family: "times New Roman", Times, serif;
        }
        .auto-style1 {
            width: 72%;
            height: 223px;
            margin-left: 148px;
            margin-top: 16px;
        }
        .auto-style2 {
            font-weight: bold;
            text-align: left;
            width: 394px;
        }
        .auto-style3 {
            text-align: left;
            width: 394px;
        }
    </style>
</head>
<body style="height: 609px; width: 905px; margin-left: 39px;">
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
            <asp:HyperLink ID="HyperLink12" runat="server" NavigateUrl="~/StockReportsUsingDate.aspx">Stock Report Using Date</asp:HyperLink>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:HyperLink ID="HyperLink13" runat="server" NavigateUrl="~/Login.aspx">Log Out</asp:HyperLink>
        
        </asp:Panel>
    <div class="style1">
    
        <h1>
    
        <b class="newStyle1">PRESCRIPTION&nbsp; DETAILS </b>
    
        </h1>
    
    </div>
    <form id="form1" runat="server">
    
    <div class="style1">
    
    <table class="auto-style1">
        <tr>
            <td>
                <b>Prescription Id :
            </b>
            </td>
            <td class="auto-style2">
                <asp:Label ID="Label1" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <b>Customer Id :</b></td>
            <td class="auto-style2">
                <asp:TextBox ID="TextBox3" runat="server" Width="171px"></asp:TextBox>
                  &nbsp;
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox3" ErrorMessage="Enter Customer Id" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <b>Doctor Name :</b></td>
            <td class="auto-style3">
                <asp:TextBox ID="TextBox1" runat="server" CssClass="style3" ToolTip="Doctor Name" Width="171px"></asp:TextBox>
                  &nbsp;
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox1" ErrorMessage="Enter Doctor Name" ForeColor="Red" Font-Bold="True"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <b>Prescripted&nbsp; Medicien :
            </b>
            </td>
            <td class="auto-style3">
                <asp:TextBox ID="TextBox2" runat="server" TextMode="MultiLine" ToolTip="Enter Medicien " Width="171px"></asp:TextBox>
                  &nbsp;
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox2" ErrorMessage="Enter Prescripted Medicien" ForeColor="Red" Font-Bold="True"></asp:RequiredFieldValidator>
            </td>
        </tr>
    </table>
      

         <asp:Label ID="Label2" runat="server" Text=""></asp:Label><br />
      

         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      
         <asp:Button ID="Button1" runat="server" Text="Add" CssClass="style3" 
            Width="50px" OnClick="Button1_Click" />
    
    &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" CssClass="style3" Text="Clear" 
            Width="50px" OnClick="Button2_Click" />
        <br />
        <asp:Panel ID="Panel1" runat="server">
            &nbsp;&nbsp;<br />
            &nbsp;<asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="P_Id" DataSourceID="SqlDataSource2" BorderColor="#FF9900" BorderStyle="Solid" BorderWidth="1px" Caption="Prescription Details " HorizontalAlign="Center" AllowPaging="True" CaptionAlign="Top" Font-Names="Bahnschrift">
                <Columns>
                    <asp:BoundField DataField="P_Id" HeaderText="P_Id" ReadOnly="True" SortExpression="P_Id" />
                    <asp:BoundField DataField="Cust_id" HeaderText="Cust_id" SortExpression="Cust_id" />
                    <asp:BoundField DataField="D_name" HeaderText="D_name" SortExpression="D_name" />
                    <asp:BoundField DataField="P_medicien" HeaderText="P_medicien" SortExpression="P_medicien" />
                </Columns>
                <FooterStyle BackColor="#CCCC00" BorderColor="#66FF33" BorderStyle="Solid" BorderWidth="2px" />
                <HeaderStyle BorderColor="#FF6600" BorderStyle="Dotted" BorderWidth="2px" BackColor="#990000" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:SampleDBConnectionString %>" SelectCommand="SELECT * FROM [Prescription]"></asp:SqlDataSource>
            <br />
            <br />
            <br />
            <br />
        </asp:Panel>
    </div>
    
    </form>
    </body>
</html>
