<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Supplier.aspx.cs" Inherits="WebApplication1.Supplier" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {
            font-size: x-large;
        }
        .auto-style3 {
            width: 72%;
            height: 270px;
            margin-left: 262px;
            margin-top: 32px;
            margin-right: 150px;
        }
        .auto-style4 {
            text-align: center;
            width: 356px;
            font-weight: bold;
        }
        .auto-style5 {
            font-weight: bold;
        }
        .auto-style6 {
            text-align: center;
            width: 356px;
            font-weight: bold;
            height: 45px;
        }
        .auto-style7 {
            height: 45px;
            width: 666px;
        }
        #form1 {
            width: 877px;
            margin-left: 53px;
            margin-top: 18px;
        }
        .auto-style8 {
            width: 666px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        &nbsp;&nbsp;<asp:Panel ID="Panel9" runat="server" BackColor="Yellow" BorderColor="Red" BorderStyle="Solid" BorderWidth="1px" Direction="LeftToRight" Font-Bold="False" ForeColor="Red" Height="5%" HorizontalAlign="Center" Width="1315px">
            <strong><em>
            <asp:HyperLink ID="HyperLink7" runat="server" NavigateUrl="~/Login.aspx">Login</asp:HyperLink>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:HyperLink ID="HyperLink8" runat="server" NavigateUrl="~/Registration_Form.aspx">Registration</asp:HyperLink>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Prescription.aspx">Presription</asp:HyperLink>
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
            </em></strong>
        
        </asp:Panel>
    <div class="auto-style1">
    
        <span class="auto-style2">
        <br />
        SUPPLIER DETAILS</span>
    
    </div>
        <table class="auto-style3" align="center">
            <tr>
                <td class="auto-style4">Supplier Id : </td>
                <td class="auto-style8">
                    <asp:Label ID="Label1" runat="server" ToolTip="Supplier ID"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Supplier Name : </td>
                <td class="auto-style8">
                    <asp:TextBox ID="TextBox1" runat="server" Height="36px" Width="251px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Enter Supplier Name" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Supplier Address : </td>
                <td class="auto-style8">
                    <asp:TextBox ID="TextBox2" runat="server" TextMode="MultiLine" ToolTip="Enter Address" Width="251px"></asp:TextBox>
                &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox2" ErrorMessage="Supplier Address" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Supplier Mobile Number : </td>
                <td class="auto-style8">
                    <asp:TextBox ID="TextBox3" runat="server" Height="36px" Width="251px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Enter Mobile Number" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Company Name : </td>
                <td class="auto-style8">
                    <asp:TextBox ID="TextBox4" runat="server" TextMode="MultiLine" Width="251px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox4" ErrorMessage="Enter Company name" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">Description : </td>
                <td class="auto-style7">
                    <asp:TextBox ID="TextBox5" runat="server" TextMode="MultiLine" ToolTip="Description About Supplier" Width="251px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style1" colspan="2">
                    <br />
&nbsp;<asp:Button ID="Button1" runat="server" BackColor="Silver" CssClass="auto-style5" Font-Bold="True" Font-Names="Times New Roman" Height="32px" OnClick="Button1_Click" style="text-align: center" Text="Save" ToolTip="Adding Supplier " Width="70px" />
&nbsp;&nbsp;
                    <asp:Button ID="Button2" runat="server" BackColor="Silver" CssClass="auto-style5" Font-Bold="True" Font-Names="Times New Roman" Height="32px" OnClick="Button2_Click" Text="View " ToolTip="View The Customer Reports" Width="70px" />
&nbsp;&nbsp;
                    <asp:Button ID="Button3" runat="server" BackColor="Silver" CssClass="auto-style5" Font-Bold="True" Font-Names="Times New Roman" Height="32px" OnClick="Button3_Click" Text="Clean" ToolTip="All Value will Remove into form" Width="70px" />
                </td>
            </tr>
        </table>
        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
        <asp:Panel ID="Panel1" runat="server" Width="848px">
            <br />
            <br />
            <br />
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Su_id" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Width="647px">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="Su_id" HeaderText="Su_id" ReadOnly="True" SortExpression="Su_id" />
                    <asp:BoundField DataField="Su_Name" HeaderText="Supplier Name" SortExpression="Su_Name" />
                    <asp:BoundField DataField="Su_Address" HeaderText="Supplier Address" SortExpression="Su_Address" />
                    <asp:BoundField DataField="Su_Mobile" HeaderText="Supplier Mobile" SortExpression="Su_Mobile" />
                    <asp:BoundField DataField="Su_Company" HeaderText="Supplier Company" SortExpression="Su_Company" />
                    <asp:BoundField DataField="Su_description" HeaderText="Description" SortExpression="Su_description" />
                </Columns>
                <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                <SortedAscendingCellStyle BackColor="#FDF5AC" />
                <SortedAscendingHeaderStyle BackColor="#4D0000" />
                <SortedDescendingCellStyle BackColor="#FCF6C0" />
                <SortedDescendingHeaderStyle BackColor="#820000" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MedicalDBConnectionString %>" SelectCommand="SELECT * FROM [Supplier]"></asp:SqlDataSource>
            <br />
            <br />
            <br />
            <br />
        </asp:Panel>
    </form>
</body>
</html>
