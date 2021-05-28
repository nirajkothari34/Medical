<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Stock.aspx.cs" Inherits="WebApplication1.Stock" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            text-align: center;
            font-size: x-large;
            font-weight: bold;
            width: 917px;
        }
        .style2
        {
            width: 68%;
            margin-left: 133px;
            margin-top: 0px;
            height: 351px;
        }
        .style4
        {
            font-weight: bold;
        }
        .style5
        {
            height: 26px;
        }
        .style6
        {
            height: 24px;
        }
        .style7
        {
            height: 42px;
        }
        .style8
        {
            height: 24px;
            font-weight: bold;
            text-align: center;
            width: 201px;
        }
        .style9
        {
            height: 26px;
            font-weight: bold;
            text-align: center;
            width: 201px;
        }
        .style10
        {
            height: 42px;
            font-weight: bold;
            text-align: center;
            }
        .style11
        {
            font-weight: bold;
            text-align: center;
            width: 201px;
        }
        #form1
        {
            width: 785px;
            margin-left: 57px;
            margin-top: 8px;
            height: 421px;
        }
        .style12
        {
        }
        .style13
        {
            text-align: center;
            height: 29px;
        }
        .style14
        {
            text-align: center;
        }
        .auto-style2 {
            width: 89%;
            margin-left: 133px;
            margin-top: 0px;
            height: 351px;
        }
        .auto-style3 {
            width: 900px;
        }
        .auto-style4 {
            font-weight: bold;
            text-align: center;
            width: 201px;
            height: 31px;
        }
        .auto-style5 {
            height: 31px;
        }
        .auto-style6 {
            font-weight: bold;
            text-align: center;
            width: 201px;
            height: 44px;
        }
        .auto-style7 {
            height: 44px;
        }
    </style>
</head>
<body style="height: 860px; width: 855px">
    <div class="style1">
    
        STOCK DETAILS
    
    </div>
    
    <form id="form1" runat="server" class="auto-style3">
&nbsp;<table class="auto-style2">
        <tr>
            <td class="style10" colspan="2">
                <asp:HiddenField ID="HiddenField1" runat="server" />
            </td>
        </tr>
        <tr>
            <td class="style10">
                Medicien Name :</td>
            <td class="style7">
                <asp:TextBox ID="TextBox1" runat="server" Height="30px" Width="302px" 
                    ToolTip="Enter Medicien Name"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Enter medicine name" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style11">
                Quantity : </td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" Height="30px" Width="305px" 
                    ToolTip="Enter Quantity"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Enter Quantity" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style11">
                Type Of Medicien : </td>
            <td>
                <asp:DropDownList ID="DropDownList2" runat="server" Height="30px" Width="306px" 
                    ToolTip="Select Type">
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
            <td class="style9">
                Unit Of Mesurement :</td>
            <td class="style5">
                <asp:TextBox ID="TextBox3" runat="server" Height="30px" Width="305px" 
                    ToolTip="Enter Unit Of Mesurement"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="Enter Unit of Mesurement" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style8">
                Manufacture Date : </td>
            <td class="style6">
                <asp:TextBox ID="TextBox4" runat="server" Height="30px" Width="306px"
                    TextMode="Date" ToolTip="Enter Date Of Manufacture"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" ErrorMessage="Enter Menufacture date" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">
                Exprie Date : </td>
            <td class="auto-style5">
                <asp:TextBox ID="TextBox8" runat="server" Height="30px" Width="306px" 
                    TextMode="Date" ToolTip="Enter Date Of Manufacture"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">
                Purchases Rate :</td>
            <td class="auto-style5">
                <asp:TextBox ID="TextBox7" runat="server" Height="30px" Width="306px" 
                    ToolTip="Enter Rate Of Purchases" >₹ </asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox7" ErrorMessage="Enter PurchasesRate" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">
                Discount&nbsp; Rate :</td>
            <td class="auto-style7">
                &nbsp;<asp:TextBox ID="TextBox5" runat="server" Height="30px" Width="306px" 
                    ToolTip="Enter Discount Rate" >₹ </asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox5" ErrorMessage="Enter Discount Rate" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style9">
                GST :</td>
            <td class="style5">
                <asp:DropDownList ID="DropDownList1" runat="server" Height="30px" Width="306px" 
                    ToolTip="Select GST">
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
            <td class="style11">
                Sales Rate :</td>
            <td>
                <asp:TextBox ID="TextBox6" runat="server" Height="30px" Width="306px" 
                    ToolTip="Enter Sales Rate">₹ </asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style12" colspan="2">
                <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
    </table>
    <p class="style13">

        &nbsp;&nbsp;

        <asp:Button ID="Button6" runat="server" CssClass="style4" Text="New/Reset" 
            Width="75px"  BackColor="Silver" Font-Bold="True" 
            Font-Names="Arial" Height="33px" onclick="Button6_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

        <asp:Button ID="Button1" runat="server" CssClass="style4" Text="Add" 
            Width="75px" onclick="Button1_Click" BackColor="Silver" Font-Bold="True" 
            Font-Names="Arial" Height="33px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button8" runat="server" 
            BackColor="Silver" onclick="Button8_Click" Text="View" Width="75px" Height="33px" />
        &nbsp;&nbsp;
        <asp:Panel ID="Panel2" runat="server" Height="234px" Width="783px" 
        style="margin-left: 0px">
        
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" 
            CellPadding="3" CellSpacing="2" DataKeyNames="S_Id" 
            DataSourceID="SqlDataSource1" onrowdeleted="GridView1_RowDeleted" 
            onrowupdated="GridView1_RowUpdated" style="margin-left: 0px" Width="769px" AllowPaging="True">
            <Columns>
                <asp:BoundField DataField="S_Id" HeaderText="S_Id" ReadOnly="True" 
                    SortExpression="S_Id" />
                <asp:BoundField DataField="Medicien_name" HeaderText="Medicien_name" 
                    SortExpression="Medicien_name" />
                <asp:BoundField DataField="Quantity" HeaderText="Quantity" 
                    SortExpression="Quantity" />
                <asp:BoundField DataField="Type" HeaderText="Type" SortExpression="Type" />
                <asp:BoundField DataField="Unit" HeaderText="Unit" SortExpression="Unit" />
                <asp:BoundField DataField="mfg" HeaderText="mfg" SortExpression="mfg" />
                <asp:BoundField DataField="P_Rate" HeaderText="P_Rate" 
                    SortExpression="P_Rate" />
                <asp:BoundField DataField="D_Rate" HeaderText="D_Rate" 
                    SortExpression="D_Rate" />
                <asp:BoundField DataField="GST" HeaderText="GST" SortExpression="GST" />
                <asp:BoundField DataField="S_Rate" HeaderText="S_Rate" 
                    SortExpression="S_Rate" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            </Columns>
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FFF1D4" />
            <SortedAscendingHeaderStyle BackColor="#B95C30" />
            <SortedDescendingCellStyle BackColor="#F1E5CE" />
            <SortedDescendingHeaderStyle BackColor="#93451F" />
        </asp:GridView>
    </asp:Panel>
    <p>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:MedicalDBConnectionString %>" 
            SelectCommand="SELECT * FROM [Stocks]" 
            DeleteCommand="DELETE FROM [Stocks] WHERE [S_Id] = @S_Id" 
            InsertCommand="INSERT INTO [Stocks] ([S_Id], [Medicien_name], [Quantity], [Type], [Unit], [mfg], [P_Rate], [D_Rate], [GST], [S_Rate], [Cust_id], [Sales_Id], [ExpDate]) VALUES (@S_Id, @Medicien_name, @Quantity, @Type, @Unit, @mfg, @P_Rate, @D_Rate, @GST, @S_Rate, @Cust_id, @Sales_Id, @ExpDate)" 
            UpdateCommand="UPDATE [Stocks] SET [Medicien_name] = @Medicien_name, [Quantity] = @Quantity, [Type] = @Type, [Unit] = @Unit, [mfg] = @mfg, [P_Rate] = @P_Rate, [D_Rate] = @D_Rate, [GST] = @GST, [S_Rate] = @S_Rate, [Cust_id] = @Cust_id, [Sales_Id] = @Sales_Id, [ExpDate] = @ExpDate WHERE [S_Id] = @S_Id">
            <DeleteParameters>
                <asp:Parameter Name="S_Id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="S_Id" Type="Int32" />
                <asp:Parameter Name="Medicien_name" Type="String" />
                <asp:Parameter Name="Quantity" Type="String" />
                <asp:Parameter Name="Type" Type="String" />
                <asp:Parameter Name="Unit" Type="String" />
                <asp:Parameter Name="mfg" Type="DateTime" />
                <asp:Parameter Name="P_Rate" Type="String" />
                <asp:Parameter Name="D_Rate" Type="String" />
                <asp:Parameter Name="GST" Type="String" />
                <asp:Parameter Name="S_Rate" Type="String" />
                <asp:Parameter Name="Cust_id" Type="Int32" />
                <asp:Parameter Name="Sales_Id" Type="Int32" />
                <asp:Parameter Name="ExpDate" Type="DateTime" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Medicien_name" Type="String" />
                <asp:Parameter Name="Quantity" Type="String" />
                <asp:Parameter Name="Type" Type="String" />
                <asp:Parameter Name="Unit" Type="String" />
                <asp:Parameter Name="mfg" Type="DateTime" />
                <asp:Parameter Name="P_Rate" Type="String" />
                <asp:Parameter Name="D_Rate" Type="String" />
                <asp:Parameter Name="GST" Type="String" />
                <asp:Parameter Name="S_Rate" Type="String" />
                <asp:Parameter Name="Cust_id" Type="Int32" />
                <asp:Parameter Name="Sales_Id" Type="Int32" />
                <asp:Parameter Name="ExpDate" Type="DateTime" />
                <asp:Parameter Name="S_Id" Type="Int32" />
            </UpdateParameters>
       </asp:SqlDataSource>
    
    <br />
        <asp:Panel ID="Panel3" runat="server">

            <asp:GridView ID="GridView3" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="S_Id" DataSourceID="SqlDataSource5" Width="102%">
                <Columns>
                    <asp:BoundField DataField="S_Id" HeaderText="S_Id" ReadOnly="True" SortExpression="S_Id" />
                    <asp:BoundField DataField="Medicien_name" HeaderText="Medicien Name" SortExpression="Medicien_name" />
                    <asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Quantity" />
                    <asp:BoundField DataField="Type" HeaderText="Type" SortExpression="Type" />
                    <asp:BoundField DataField="Unit" HeaderText="Unit" SortExpression="Unit" />
                    <asp:BoundField DataField="mfg" HeaderText="Manufacture Date" SortExpression="mfg" />
                    <asp:BoundField DataField="P_Rate" HeaderText="Purchase Rate" SortExpression="P_Rate" />
                    <asp:BoundField DataField="D_Rate" HeaderText="Discount Rate" SortExpression="D_Rate" />
                    <asp:BoundField DataField="S_Rate" HeaderText="Sales Rate" SortExpression="S_Rate" />
                </Columns>
                <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
                <RowStyle BackColor="White" ForeColor="#003399" />
                <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                <SortedAscendingCellStyle BackColor="#EDF6F6" />
                <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
                <SortedDescendingCellStyle BackColor="#D6DFDF" />
                <SortedDescendingHeaderStyle BackColor="#002876" />
            </asp:GridView>


            <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:MedicalDBConnectionString %>" SelectCommand="SELECT * FROM [Stocks]"></asp:SqlDataSource>


        </asp:Panel>

    <br />


    <br />
        
    </p>
    </form>
    </body>
</html>
