<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GenrateInvoice.aspx.cs" Inherits="WebApplication1.GenrateInvoice" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">

        #firstdiv
        {
            margin-right:8px;
            margin-left:8px;
            float:left;
            width:100%;
            height:416px;
            }
        .auto-style1 {
            height: 459px;
        }
        .auto-style2 {
            width: 1071px;
            height: 396px;
        }
        .auto-style4 {
            width: 905px;
            margin-left: 0px;
        }
        </style>
</head>
<body style="width: 1131px; height: 460px">

       <form id="form2" runat="server">
           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Panel ID="Panel3" runat="server" BackColor="Yellow" BorderColor="Red" BorderStyle="Solid" BorderWidth="1px" Direction="LeftToRight" Font-Bold="False" ForeColor="Red" Height="6%" HorizontalAlign="Center" Width="1380px">
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
            <asp:HyperLink ID="HyperLink9" runat="server" NavigateUrl="~/Customer.aspx">Customer</asp:HyperLink>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:HyperLink ID="HyperLink10" runat="server" NavigateUrl="~/ViewReports.aspx">View Repostrs</asp:HyperLink>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:HyperLink ID="HyperLink11" runat="server" NavigateUrl="~/Return Goods.aspx">Return Goods</asp:HyperLink>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:HyperLink ID="HyperLink12" runat="server" NavigateUrl="~/StockReportsUsingDate.aspx">Stock Report Using Date</asp:HyperLink>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:HyperLink ID="HyperLink13" runat="server" NavigateUrl="~/Login.aspx">Log Out</asp:HyperLink>
        
        </asp:Panel>
        <br>

<center class="auto-style2">
    <div id="firstdiv" class="auto-style1">
      <table align="left"> <asp:Button ID="btnBill" runat="server" Text="Create Bill" 
           onclick="btnBill_Click" /></table>
        <center><h3>Invoice Bill</h3></center>
        Enter Customer Name : <asp:TextBox ID="TextBox2" runat="server" Width="191px"></asp:TextBox>
   &nbsp;&nbsp;
        <asp:HiddenField ID="HiddenField1" runat="server" />
&nbsp;<table cellpadding="5" cellspacing="5" class="auto-style4"> 
     <tr><td class="style2">Invoice No</td><td class="style2">
      <asp:Label ID="lblInvoice" runat="server" Text="[lblInvoice]"></asp:Label>
      </td><td class="style2"><asp:Label ID="Label1" runat="server" Text="Select Product"></asp:Label></td>
       <td class="style2"><asp:DropDownList ID="ddlProduct" runat="server" 
        onselectedindexchanged="ddlProduct_SelectedIndexChanged" Width="150px" 
        AutoPostBack="True">
       </asp:DropDownList></td>
      <td class="style2">Date</td><td class="style3"><asp:TextBox ID="txtdate" runat="server" TextMode="Date"></asp:TextBox>
  </td>
         <td class="style2">Bill Id</td><td class="style3"><asp:TextBox ID="TextBox3" runat="server" ></asp:TextBox>
  </td>
     </tr>
         <tr><td class="style4">Price</td>
         <td class="style4"><asp:TextBox ID="txtPrice" runat="server" ></asp:TextBox></td>
         <td class="style4">Quantity</td><td class="style4">
             <asp:TextBox ID="txtQty" runat="server" 
                Width="148px" AutoPostBack="True" OnTextChanged="txtQty_TextChanged"></asp:TextBox>
            </td><td class="style4">Total &nbsp; </td>
         <td class="style5"><asp:TextBox ID="txtTotal" runat="server"></asp:TextBox></td>
        <td class="style4">GST &nbsp; </td>
           <td class="style5"> <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox> </td>
     </tr></table>
      <center> <asp:GridView ID="gdvProduct" runat="server" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical" Height="201px" Width="237px">
          <AlternatingRowStyle BackColor="White" />
          <FooterStyle BackColor="#CCCC99" />
          <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
          <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
          <RowStyle BackColor="#F7F7DE" />
          <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
          <SortedAscendingCellStyle BackColor="#FBFBF2" />
          <SortedAscendingHeaderStyle BackColor="#848384" />
          <SortedDescendingCellStyle BackColor="#EAEAD3" />
          <SortedDescendingHeaderStyle BackColor="#575357" />
       </asp:GridView>
        </center>
    <br /><br />

<table align="right" style="margin-left: 83px">
     <tr><td>Total Amount </td><td>
         <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
         </td></tr></table>
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
         <asp:Label ID="lblMsg" runat="server" Text="[lblMsg]"></asp:Label>
     <asp:Button ID="Savebtn" runat="server" Text="SAVE" OnClick="Savebtn_Click"/>
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Calculate" />
    &nbsp;&nbsp
        <asp:Button ID="Button2" runat="server" Text="Add Product" OnClick="Button2_Click" ></asp:Button>
    </div>
     </center>
     </form>
</body>
</html>
