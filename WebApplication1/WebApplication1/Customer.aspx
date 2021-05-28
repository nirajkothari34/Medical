<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Customer.aspx.cs" Inherits="WebApplication1.Customer" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<style type="text/css">
        .style1
        {
            text-align: center;
            height: 43px;
            width: 1148px;
        }
        .style2
        {
            font-size: medium;
            font-weight: bold;
        }
        .style3
        {
            font-size: x-large;
            font-weight: bold;
        }
        .style4
        {
            width: 72%;
            height: 462px;
            margin-left: 74px;
            margin-right: 3px;
        }
        .style6
        {
            width: 769px;
            height: 23px;
            font-weight: bold;
            text-align: center;
        }
        .style7
        {
            height: 23px;
            font-weight: bold;
            width: 721px;
        }
        #TextArea1
        {
            width: 301px;
        }
        .style8
        {
            font-weight: bold;
        }
        .style9
        {
            font-weight: bold;
            text-align: center;
            width: 769px;
        }
        .style10
        {
            height: 43px;
            width: 721px;
        }
        .style11
        {
            height: 43px;
            width: 721px;
            font-weight: bold;
        }
        .style12
        {
            font-size: medium;
        }
    .auto-style1 {
        height: 23px;
        font-weight: bold;
        text-align: center;
    }
    .auto-style2 {
        width: 72%;
        height: 496px;
        margin-left: 74px;
        margin-right: 3px;
    }
    .auto-style3 {
        font-weight: bold;
        text-align: center;
        width: 769px;
        height: 56px;
    }
    .auto-style4 {
        height: 56px;
        width: 721px;
    }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="style1">
    
        <span class="style3">CUSTOMER DETAILS </span>
    
    </div>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Panel ID="Panel3" runat="server" BackColor="Yellow" BorderColor="Red" BorderStyle="Solid" BorderWidth="1px" Direction="LeftToRight" Font-Bold="False" ForeColor="Red" Height="" HorizontalAlign="Center" Width="1295px">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:HyperLink ID="HyperLink7" runat="server" NavigateUrl="~/Login.aspx">Login</asp:HyperLink>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:HyperLink ID="HyperLink8" runat="server" NavigateUrl="~/Registration_Form.aspx">Registration</asp:HyperLink>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Supplier.aspx">Supplier</asp:HyperLink>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Prescription.aspx">Presription</asp:HyperLink>
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
            <asp:HyperLink ID="HyperLink10" runat="server" NavigateUrl="~/ViewReports.aspx">View Repostrs</asp:HyperLink>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:HyperLink ID="HyperLink11" runat="server" NavigateUrl="~/Return Goods.aspx">Return Goods</asp:HyperLink>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:HyperLink ID="HyperLink12" runat="server" NavigateUrl="~/StockReportsUsingDate.aspx">Stock Report Using Date</asp:HyperLink>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:HyperLink ID="HyperLink13" runat="server" NavigateUrl="~/Login.aspx">Log Out</asp:HyperLink>
        
        </asp:Panel>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
    <table class="auto-style2">
        <tr>
            <td class="auto-style1" colspan="2">
                <asp:HiddenField ID="Hf1" runat="server" />
            </td>
        </tr>
        <tr>
            <td class="style9">
                Customer Name :<td class="style10">
                <asp:TextBox ID="TextBox1" runat="server" CssClass="style8" Width="301px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Customer Name" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style9">
                Customer Age :</td>
            <td class="style10">
                <asp:TextBox ID="TextBox2" runat="server" CssClass="style8" Width="301px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Enter Age " ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style9">
                Gender :
            </td>
            <td class="style11">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RadioButton ID="RadioButton1" runat="server" GroupName="Gender" 
                    Text="Male" CssClass="style12" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RadioButton ID="RadioButton2" runat="server" GroupName="Gender" 
                    Text="Female" CssClass="style12" />
            </td>
        </tr>
        <tr>
            <td class="style9">
                Mobile Number :
            </td>
            <td class="style10">
                <b>&nbsp;</b><asp:TextBox ID="TextBox3" runat="server" CssClass="style8" 
                    style="margin-left: 0px" Width="301px" TextMode="Phone"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style9">
                Customer Address :
            </td>
            <td class="style10">
                <asp:TextBox ID="TextBox4" runat="server" TextMode="MultiLine" Width="301px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox4" ErrorMessage="Address " ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style9">
                Medicien Name :</td>
            <td class="style10">
                <asp:TextBox ID="TextBox5" runat="server" TextMode="MultiLine" 
                    ToolTip="Medicien Name" Width="301px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox5" ErrorMessage="Medicien Name" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style9">
                Unit :</td>
            <td class="style10">
                <asp:TextBox ID="TextBox6" runat="server" TextMode="MultiLine" 
                    ToolTip="Power Of Medicien" Width="301px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style9">
                Quantity :</td>
            <td class="style10">
                <asp:TextBox ID="TextBox7" runat="server" TextMode="MultiLine" Width="301px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox7" ErrorMessage="Quantity" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">
                Type :</td>
            <td class="auto-style4">
                <asp:TextBox ID="TextBox8" runat="server" TextMode="MultiLine" Width="300px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style1" colspan="2">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button 
                    ID="Button5" runat="server" onclick="Button5_Click" Text="Insert" Font-Bold="True" Font-Names="Times New Roman" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button6" runat="server" Text="View" Width="48px" Font-Bold="True" Font-Names="Times New Roman" OnClick="Button6_Click" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button4" runat="server" CssClass="style8" Text="Clear " 
                    Width="61px" Font-Names="Times New Roman" OnClick="Button4_Click" />
            </td>
        </tr>
    </table>
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    <asp:Panel ID="Panel1" runat="server">
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" Caption="Customer Detail" CaptionAlign="Top" CellPadding="4" DataKeyNames="Cust_id" DataSourceID="SqlDataSource1" HorizontalAlign="Center">
            <Columns>
                <asp:BoundField DataField="Cust_id" HeaderText="Cust_id" ReadOnly="True" SortExpression="Cust_id" />
                <asp:BoundField DataField="Cust_name" HeaderText="Cust_name" SortExpression="Cust_name" />
                <asp:BoundField DataField="Age" HeaderText="Age" SortExpression="Age" />
                <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                <asp:BoundField DataField="Customer_Address" HeaderText="Customer_Address" SortExpression="Customer_Address" />
                <asp:BoundField DataField="Mobile_No" HeaderText="Mobile_No" SortExpression="Mobile_No" />
                <asp:BoundField DataField="Medicien_name" HeaderText="Medicien_name" SortExpression="Medicien_name" />
                <asp:BoundField DataField="Unit" HeaderText="Unit" SortExpression="Unit" />
                <asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Quantity" />
                <asp:BoundField DataField="Type" HeaderText="Type" SortExpression="Type" />
            </Columns>
            <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
            <HeaderStyle BackColor="#990000" BorderColor="Yellow" BorderWidth="2px" Font-Bold="True" ForeColor="#FFFFCC" />
            <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
            <RowStyle BackColor="White" ForeColor="#330099" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
            <SortedAscendingCellStyle BackColor="#FEFCEB" />
            <SortedAscendingHeaderStyle BackColor="#AF0101" />
            <SortedDescendingCellStyle BackColor="#F6F0C0" />
            <SortedDescendingHeaderStyle BackColor="#7E0000" />
        </asp:GridView>
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:MedicalDBConnectionString %>" 
            SelectCommand="SELECT * FROM [Customer]">
        </asp:SqlDataSource>
    </asp:Panel>
    </form></body>
</html>
