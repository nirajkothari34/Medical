<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewReports.aspx.cs" Inherits="WebApplication1.ViewReports" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .newStyle1 {
            font-family: "Times New Roman", Times, serif;
            font-size: x-large;
            font-weight: bolder;
            font-style: italic;
            text-transform: uppercase;
            color: #008000;
        }
        .newStyle2 {
            color: #008000;
            text-align: center;
        }
        .auto-style2 {
            font-family: "Times New Roman", Times, serif;
            font-size: x-large;
            font-weight: bolder;
            text-transform: uppercase;
            color: #FF0000;
        }
        .auto-style3 {
            text-align: center;
        }
        #form1 {
            height: 1274px;
        }
        .auto-style4 {
            margin-top: 22px;
        }
        </style>
</head>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Panel ID="Panel9" runat="server" BackColor="Yellow" BorderColor="Red" BorderStyle="Solid" BorderWidth="1px" Direction="LeftToRight" Font-Bold="False" ForeColor="Red" Height="2%" HorizontalAlign="Center" Width="1380px">
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
            <asp:HyperLink ID="HyperLink10" runat="server" NavigateUrl="~/Customer.aspx">Customer</asp:HyperLink>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:HyperLink ID="HyperLink11" runat="server" NavigateUrl="~/Return Goods.aspx">Return Goods</asp:HyperLink>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:HyperLink ID="HyperLink12" runat="server" NavigateUrl="~/StockReportsUsingDate.aspx">Stock Report Using Date</asp:HyperLink>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:HyperLink ID="HyperLink13" runat="server" NavigateUrl="~/Login.aspx">Log Out</asp:HyperLink>
        
        </asp:Panel>
        <br>
<body style="height: 1324px">
    <form id="form1" runat="server">
        <h1 class="auto-style3"><b class="auto-style2"><span class="newStyle2">VIEW REPORTS DETAILS</span></b><b class="newStyle1"> </b></h1>
        <h2 class="auto-style3">
            SELECT REPORTS : 
        &nbsp;<asp:DropDownList ID="DropDownList2" runat="server" Height="16px" Width="198px" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged" AutoPostBack="True">
               
                <asp:ListItem>Select Reprots</asp:ListItem>
                <asp:ListItem>Sales</asp:ListItem>
                <asp:ListItem>Stock</asp:ListItem>
                <asp:ListItem>Customer</asp:ListItem>
                <asp:ListItem>Purchases</asp:ListItem>
                <asp:ListItem>Supplier</asp:ListItem>
                <asp:ListItem>Return Goods </asp:ListItem>
                <asp:ListItem>Prescription</asp:ListItem>
            </asp:DropDownList>
        </h2>
        <p>
        </p>
        <asp:Panel ID="Panel1" runat="server" Height="309px">
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="Cust_id" DataSourceID="SqlDataSource1" Height="68px" Width="616px" Caption="Customer Reorts" CaptionAlign="Top" ForeColor="#0066FF" HorizontalAlign="Center">
                <Columns>
                    <asp:BoundField DataField="Cust_id" HeaderText="Cust_id" ReadOnly="True" SortExpression="Cust_id" >
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Cust_name" HeaderText="Cust_name" SortExpression="Cust_name" >
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Age" HeaderText="Age" SortExpression="Age" >
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" >
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Mobile_No" HeaderText="Mobile_No" SortExpression="Mobile_No" >
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Medicien_name" HeaderText="Medicien_name" SortExpression="Medicien_name" >
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Unit" HeaderText="Unit" SortExpression="Unit" >
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Quantity" >
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                </Columns>
                <FooterStyle BackColor="#FF33CC" BorderStyle="Solid" BorderWidth="3px" Height="2px" />
                <HeaderStyle BackColor="White" BorderStyle="Solid" BorderWidth="3px" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SampleDB %>" SelectCommand="SELECT * FROM [Customer]"></asp:SqlDataSource>
            <br />
        </asp:Panel>
        <asp:Panel ID="Panel2" runat="server" style="margin-top: 21px" BackColor="White">
            <asp:GridView ID="GridView2" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="S_Id" DataSourceID="SqlDataSource2" Width="893px" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" Caption="Stock Reports" CaptionAlign="Top" ForeColor="Black" HorizontalAlign="Center" CellPadding="2" GridLines="None">
                <AlternatingRowStyle BackColor="PaleGoldenrod" />
                <Columns>
                    <asp:BoundField DataField="S_Id" HeaderText="S_Id" ReadOnly="True" SortExpression="S_Id" >
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Medicien_name" HeaderText="Medicien_name" SortExpression="Medicien_name" >
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Quantity" >
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Type" HeaderText="Type" SortExpression="Type" >
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Unit" HeaderText="Unit" SortExpression="Unit" >
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="mfg" HeaderText="mfg" SortExpression="mfg" >
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="P_Rate" HeaderText="P_Rate" SortExpression="P_Rate" >
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="D_Rate" HeaderText="D_Rate" SortExpression="D_Rate" >
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="GST" HeaderText="GST" SortExpression="GST" >
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="S_Rate" HeaderText="S_Rate" SortExpression="S_Rate" >
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                </Columns>
                <FooterStyle BackColor="Tan" BorderColor="#FF9900" BorderStyle="Solid" BorderWidth="2px" />
                <HeaderStyle BackColor="Tan" BorderStyle="Solid" BorderWidth="2px" />
                <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                <SortedAscendingCellStyle BackColor="#FAFAE7" />
                <SortedAscendingHeaderStyle BackColor="#DAC09E" />
                <SortedDescendingCellStyle BackColor="#E1DB9C" />
                <SortedDescendingHeaderStyle BackColor="#C2A47B" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:SampleDB %>" SelectCommand="SELECT * FROM [Stocks]"></asp:SqlDataSource>
        </asp:Panel>
        <asp:Panel ID="Panel3" runat="server" style="margin-top: 19px">
            <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" DataKeyNames="Su_id" DataSourceID="SqlDataSource3" AllowPaging="True" BorderColor="Black" BorderStyle="Solid" BorderWidth="3px" Caption="Supplier Reports" CaptionAlign="Top" Font-Bold="True" ForeColor="#CC3300" HorizontalAlign="Center">
                <Columns>
                    <asp:BoundField DataField="Su_id" HeaderText="Su_id" ReadOnly="True" SortExpression="Su_id" >
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Su_Name" HeaderText="Su_Name" SortExpression="Su_Name" >
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Su_Address" HeaderText="Su_Address" SortExpression="Su_Address" />
                    <asp:BoundField DataField="Su_Mobile" HeaderText="Su_Mobile" SortExpression="Su_Mobile" />
                    <asp:BoundField DataField="Su_Company" HeaderText="Su_Company" SortExpression="Su_Company" />
                    <asp:BoundField DataField="Su_description" HeaderText="Su_description" SortExpression="Su_description" />
                </Columns>
                <FooterStyle BackColor="White" BorderWidth="2px" />
                <HeaderStyle BorderColor="Black" BorderWidth="2px" />
            </asp:GridView>
            &nbsp;<asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:SampleDB %>" SelectCommand="SELECT * FROM [Supplier]"></asp:SqlDataSource>
        </asp:Panel>


        <asp:Panel ID="Panel4" runat="server">
            <asp:GridView ID="GridView4" runat="server" HorizontalAlign="Center" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" Caption="Sales Detail" CaptionAlign="Top" CellPadding="4" DataSourceID="SqlDataSource3">
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
            <asp:SqlDataSource ID="SqlDataSource4" runat="server"></asp:SqlDataSource>
            <br />
        </asp:Panel>



        <asp:Panel ID="Panel5" runat="server" Height="390px">
            <asp:GridView ID="GridView5" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="P_Id" DataSourceID="SqlDataSource5" HorizontalAlign="Center" Caption="Purchase Detail" CaptionAlign="Top" CellPadding="4" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:BoundField DataField="P_Id" HeaderText="P_Id" ReadOnly="True" SortExpression="P_Id">
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Medicien_Name" HeaderText="Medicien_Name" SortExpression="Medicien_Name">
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Stock" HeaderText="Stock" SortExpression="Stock">
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Quantity">
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Type" HeaderText="Type" SortExpression="Type">
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Unit" HeaderText="Unit" SortExpression="Unit">
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Pu_Rate" HeaderText="Pu_Rate" SortExpression="Pu_Rate">
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="GST" HeaderText="GST" SortExpression="GST">
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="mfg" HeaderText="mfg" SortExpression="mfg">
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Sa_Rate" HeaderText="Sa_Rate" SortExpression="Sa_Rate">
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                </Columns>
                <EditRowStyle BackColor="#999999" />
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:SampleDB %>" SelectCommand="SELECT * FROM [Purchase]"></asp:SqlDataSource>
            <br />
        </asp:Panel>



        <asp:Panel ID="Panel6" runat="server" Height="249px" CssClass="auto-style4">
            <asp:GridView ID="GridView6" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" Caption="Prescription Details" CaptionAlign="Top" CellPadding="3" CellSpacing="2" DataKeyNames="P_Id" DataSourceID="SqlDataSource6" EnableTheming="False" HorizontalAlign="Center" Width="595px">
                <Columns>
                    <asp:BoundField DataField="P_Id" HeaderText="P_Id" ReadOnly="True" SortExpression="P_Id" />
                    <asp:BoundField DataField="Cust_id" HeaderText="Cust_id" SortExpression="Cust_id" />
                    <asp:BoundField DataField="D_name" HeaderText="D_name" SortExpression="D_name" />
                    <asp:BoundField DataField="P_medicien" HeaderText="P_medicien" SortExpression="P_medicien" />
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
            <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:SampleDB %>" SelectCommand="SELECT * FROM [Prescription]"></asp:SqlDataSource>
            <br />
            <br />
            <asp:Panel ID="Panel7" runat="server">
                &nbsp;&nbsp;
                <br />
                <asp:GridView ID="GridView7" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" Caption="Return  Goods" CaptionAlign="Top" CellPadding="3" CellSpacing="2" DataKeyNames="R_id" DataSourceID="SqlDataSource7" HorizontalAlign="Center">
                    <Columns>
                        <asp:BoundField DataField="R_id" HeaderText="R_id" ReadOnly="True" SortExpression="R_id" />
                        <asp:BoundField DataField="R_Medicien" HeaderText="R_Medicien" SortExpression="R_Medicien" />
                        <asp:BoundField DataField="R_Quantity" HeaderText="R_Quantity" SortExpression="R_Quantity" />
                        <asp:BoundField DataField="R_Type" HeaderText="R_Type" SortExpression="R_Type" />
                        <asp:BoundField DataField="R_Reason" HeaderText="R_Reason" SortExpression="R_Reason" />
                        <asp:BoundField DataField="R_Amount" HeaderText="R_Amount" SortExpression="R_Amount" />
                        <asp:BoundField DataField="R_Returns" HeaderText="R_Returns" SortExpression="R_Returns" />
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
                <asp:SqlDataSource ID="SqlDataSource7" runat="server" ConnectionString="<%$ ConnectionStrings:SampleDB %>" SelectCommand="SELECT * FROM [Returns]"></asp:SqlDataSource>
            </asp:Panel>
            <br />
            <asp:Panel ID="Panel8" runat="server">
                <asp:GridView ID="GridView8" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="R_id" DataSourceID="SqlDataSource7" HorizontalAlign="Center">
                    <Columns>
                        <asp:BoundField DataField="R_id" HeaderText="R_id" ReadOnly="True" SortExpression="R_id" />
                        <asp:BoundField DataField="R_Medicien" HeaderText="R_Medicien" SortExpression="R_Medicien" />
                        <asp:BoundField DataField="R_Quantity" HeaderText="R_Quantity" SortExpression="R_Quantity" />
                        <asp:BoundField DataField="R_Type" HeaderText="R_Type" SortExpression="R_Type" />
                        <asp:BoundField DataField="R_Reason" HeaderText="R_Reason" SortExpression="R_Reason" />
                        <asp:BoundField DataField="R_Amount" HeaderText="R_Amount" SortExpression="R_Amount" />
                        <asp:BoundField DataField="R_Returns" HeaderText="R_Returns" SortExpression="R_Returns" />
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
        </asp:Panel>



    </form>
</body>
</html>
