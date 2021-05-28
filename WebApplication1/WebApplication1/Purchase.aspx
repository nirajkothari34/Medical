<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Purchase.aspx.cs" Inherits="WebApplication1.Purchase" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 99%;
            border-collapse: collapse;
            border-style: solid;
            border-width: 0px;
            height: 356px;
            margin-top: 9px;
        }
        .auto-style2 {
            height: 20px;
            text-align: center;
        }
        .auto-style3 {
            height: 21px;
            text-align: center;
            font-weight: bold;
            width: 182px;
        }
        .auto-style4 {
            text-align: center;
        }
        .auto-style5 {
            font-size: x-large;
        }
        .auto-style6 {
            width: 283px;
        }
        .auto-style7 {
            height: 21px;
            width: 283px;
        }
        .auto-style8 {
            text-align: center;
            font-weight: bold;
            width: 182px;
        }
        .auto-style9 {
            text-align: center;
            font-weight: bold;
        }
        .auto-style10 {
            margin-top: 26px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
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
            <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/Prescription.aspx">Prescription</asp:HyperLink>
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
        <div class="auto-style4">
            <span class="auto-style5"><strong>PURCHASE DETAILS 
            <br />
            </strong></span> <br />
        </div>
        <table class="auto-style1" align="center" border="0">
            <tr>
                <td class="auto-style9" colspan="2">
                    <asp:HiddenField ID="HiddenField1" runat="server" />
                </td>
            </tr>
            <tr>
                <td class="auto-style8">Medicien Name : </td>
                <td class="auto-style6">
                    <asp:TextBox ID="TextBox1" runat="server" Width="223px" TextMode="MultiLine" ToolTip="Medicien Name"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="EnterMedicine Name" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style8">Stock : </td>
                <td class="auto-style6">
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" Width="223px">
                        <asp:ListItem>Available </asp:ListItem>
                        <asp:ListItem>Not Available</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr>
                <td class="auto-style8">Quantity : </td>
                <td class="auto-style6">
                    <asp:TextBox ID="TextBox2" runat="server" Height="24px" Width="223px" ToolTip="Quantity Of Medicien"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Enter Quantity" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style8">Type : </td>
                <td class="auto-style6">
                    <asp:DropDownList ID="DropDownList1" runat="server" Width="223px" Height="25px">
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
                <td class="auto-style8">Unit Of Mesurment : </td>
                <td class="auto-style6">
                    <asp:TextBox ID="TextBox3" runat="server" Width="223px" Height="24px" ToolTip="Unit of the medicien"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="Enter unit of measurement" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style8">Rate Of Purchase : </td>
                <td class="auto-style6">
                    <asp:TextBox ID="TextBox4" runat="server" Width="223px" Height="24px" ToolTip="Purchase Raet" ></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" ErrorMessage="Enter Rate of Purchases" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style8">GST&nbsp; Rate : </td>
                <td class="auto-style6">
                    <asp:DropDownList ID="DropDownList2" runat="server" Width="223px" Height="24px">
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
                <td class="auto-style3">Manufacture Date : </td>
                <td class="auto-style7">
                    <asp:TextBox ID="TextBox5" runat="server" Width="223px" Height="24px" TextMode="Date" ToolTip="Manufacture Date"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style8">Final Sales Rate :&nbsp; </td>
                <td class="auto-style6">
                    <asp:TextBox ID="TextBox6" runat="server" Width="223px" Height="24px" ToolTip="Final Sales Rate of Medicien"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2" colspan="2">
                    &nbsp;&nbsp;
                    <asp:Button ID="Button1" runat="server" Height="33px" Text="Save" Width="76px" OnClick="Button1_Click" />
&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button2" runat="server" Height="33px" Text="Clean" Width="76px" />
                &nbsp;
                    <asp:Label ID="Label1" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
        <br />
        <asp:Panel ID="Panel1" runat="server">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="P_Id" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" BackColor="#FFFF66" BorderColor="#FF3300" BorderStyle="Groove" BorderWidth="5px" Caption="Purchase Details" CaptionAlign="Top" CssClass="auto-style10" HorizontalAlign="Center">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="P_Id" HeaderText="P_Id" ReadOnly="True" SortExpression="P_Id" />
                    <asp:BoundField DataField="Medicien_Name" HeaderText="Medicien_Name" SortExpression="Medicien_Name" />
                    <asp:BoundField DataField="Stock" HeaderText="Stock" SortExpression="Stock" />
                    <asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Quantity" />
                    <asp:BoundField DataField="Type" HeaderText="Type" SortExpression="Type" />
                    <asp:BoundField DataField="Unit" HeaderText="Unit" SortExpression="Unit" />
                    <asp:BoundField DataField="Pu_Rate" HeaderText="Pu_Rate" SortExpression="Pu_Rate" DataFormatString="{0:c}" HtmlEncode="false"/>
                    <asp:BoundField DataField="GST" HeaderText="GST" SortExpression="GST" />
                    <asp:BoundField DataField="mfg" HeaderText="mfg" SortExpression="mfg" />
                    <asp:BoundField DataField="Sa_Rate" HeaderText="Sa_Rate" SortExpression="Sa_Rate" />
                </Columns>
                <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" BorderColor="#FF9900" BorderStyle="Groove" BorderWidth="5px" />
                <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" BorderColor="#FF9966" BorderStyle="Double" BorderWidth="3px" />
                <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                <SortedAscendingCellStyle BackColor="#FDF5AC" />
                <SortedAscendingHeaderStyle BackColor="#4D0000" />
                <SortedDescendingCellStyle BackColor="#FCF6C0" />
                <SortedDescendingHeaderStyle BackColor="#820000" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SampleDB %>" SelectCommand="SELECT * FROM [Purchase]"></asp:SqlDataSource>
        </asp:Panel>
        <br />
    
    </div>
    </form>
</body>
</html>
