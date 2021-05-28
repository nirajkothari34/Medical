<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration_Form.aspx.cs" Inherits="WebApplication1.Registration_Form" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 90%;
            height: 311px;
            margin-left: 43px;
            margin-top: 30px;
        }
        .style2
        {
            width: 337px;
            text-align: left;
        }
        .style3
        {
            text-align: center;
            font-size: x-large;
            font-family: "Times New Roman", Times, serif;
        }
        #form1
        {
            width: 753px;
            height: 395px;
            text-align: center;
            margin-left: 48px;
        }
        .style4
        {
            width: 196px;
        }
        #Radio1
        {
            width: 40px;
        }
        .auto-style1 {
            text-align: left;
            font-size: medium;
        }
        .auto-style2 {
            text-decoration: underline;
            height: 30px;
            margin-top: 35px;
        }
        .auto-style3 {
            width: 196px;
            height: 49px;
        }
        .auto-style4 {
            width: 337px;
            text-align: left;
            height: 49px;
        }
        .auto-style5 {
            width: 196px;
            height: 30px;
        }
        .auto-style6 {
            width: 337px;
            text-align: left;
            height: 30px;
        }
        .auto-style7 {
            height: 30px;
        }
        .auto-style8 {
            width: 92%;
            height: 330px;
            margin-left: 43px;
            margin-top: 30px;
        }
        .auto-style9 {
            width: 783px;
            height: 456px;
            margin-top: 0px;
        }
        .auto-style10 {
            font-size: x-large;
        }
        </style>
</head>
<body style="height: 452px; width: 985px;">
    
    <form id="form1" runat="server" class="auto-style9">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Panel ID="Panel9" runat="server" BackColor="Yellow" BorderColor="Red" BorderStyle="Solid" BorderWidth="1px" Direction="LeftToRight" Font-Bold="False" ForeColor="Red" Height="6%" HorizontalAlign="Center" Width="1380px">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:HyperLink ID="HyperLink7" runat="server" NavigateUrl="~/Login.aspx">Login</asp:HyperLink>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:HyperLink ID="HyperLink8" runat="server" NavigateUrl="~/Prescription.aspx">Prescription</asp:HyperLink>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Supplier.aspx">Supplier</asp:HyperLink>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/ViewReports.aspx">View Reports</asp:HyperLink>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/Stock.aspx">Stock</asp:HyperLink>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/ViewCustomer.aspx">View Customer</asp:HyperLink>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
            <asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="~/Purchase.aspx">Purchase</asp:HyperLink>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:HyperLink ID="HyperLink9" runat="server" NavigateUrl="~/Sales.aspx">Sales</asp:HyperLink>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:HyperLink ID="HyperLink10" runat="server" NavigateUrl="~/GenrateInvoice.aspx">Invoice</asp:HyperLink>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:HyperLink ID="HyperLink11" runat="server" NavigateUrl="~/Customer.aspx">Customer</asp:HyperLink>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:HyperLink ID="HyperLink12" runat="server" NavigateUrl="~/Return Goods.aspx">Return Goods</asp:HyperLink>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:HyperLink ID="HyperLink13" runat="server" NavigateUrl="~/StockReportsUsingDate.aspx">Stock Report Using Date</asp:HyperLink>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:HyperLink ID="HyperLink14" runat="server" NavigateUrl="~/Login.aspx">Log Out</asp:HyperLink>
        
        </asp:Panel>
            <div class="auto-style1">

            <h3 class="auto-style2" style="font-family: 'times New Roman', Times, serif; background-color: #FF9900; color: #000099;"><span class="auto-style10">* </span>&nbsp;- For The Required Filed </h3>

        </div>
    
        <table class="auto-style8">
        <tr>
            <td class="style3" colspan="2">
                REGISTRATION FORM</td>
        </tr>
        <tr>
            <td class="style4">
                Enter the Name Of Clerak -:<asp:Label ID="Label5" runat="server" ForeColor="Red" Text="*"></asp:Label>
            </td>
            <td class="style2">
                <asp:TextBox ID="TextBox1" runat="server" Width="196px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox1" ErrorMessage="Clerak Name" Font-Bold="True" 
                    ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">
                Enter 
                Mobile Number -:<asp:Label ID="Label4" runat="server" ForeColor="Red" Text="*"></asp:Label>
            </td>
            <td class="auto-style4">
                <asp:TextBox ID="TextBox2" runat="server" Width="196px" TextMode="Phone"></asp:TextBox>
                <strong>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox2" Display="Dynamic" ErrorMessage="Mobile Number Required" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox2" Display="Dynamic" ErrorMessage=" Not Valid Mobile Number " ForeColor="Red" ValidationExpression="^[7,8,9][0-9]{9}$"></asp:RegularExpressionValidator>
                </strong>
            </td>
        </tr>
        <td class="style4">
                Select Gender&nbsp; -:</td>
            <td class="style2">
&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RadioButtonList ID="RadioButtonList1" runat="server" Height="53px" 
                    Width="196px">
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                    <asp:ListItem>Other</asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
        <tr>
            <td class="style4">
                Enter the Email Id&nbsp; -:<asp:Label ID="Label3" runat="server" ForeColor="Red" Text="*"></asp:Label>
            </td>
            <td class="style2">
                <asp:TextBox ID="TextBox3" runat="server" Width="196px" TextMode="Email"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TextBox3" ErrorMessage="Enter Email id" Font-Bold="True" 
                    ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                <strong>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox3" Display="Dynamic" ErrorMessage="Not Valid Email " ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </strong>
            </td>
        </tr>
        <tr>
            <td class="style4">
                Enter the Password&nbsp; -:<asp:Label ID="Label2" runat="server" ForeColor="Red" Text="*"></asp:Label>
            </td>
            <td class="style2">
                <asp:TextBox ID="TextBox4" runat="server" Width="196px" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="TextBox4" ErrorMessage="Enter Password" Font-Bold="True" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <td class="auto-style5">
                Re-Enter the Password&nbsp; -:<asp:Label ID="Label1" runat="server" ForeColor="Red" Text="*"></asp:Label>
        </td>
            <td class="auto-style6">
                <asp:TextBox ID="TextBox5" runat="server" Width="196px" TextMode="Password"></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ControlToCompare="TextBox4" ControlToValidate="TextBox5" 
                    ErrorMessage="Not matched" Font-Bold="True" ForeColor="Red"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
        <td class="auto-style7" colspan="2">
    <asp:Button ID="Button1" runat="server" Text="Registration" 
        onclick="Button1_Click" />
&nbsp;&nbsp;&nbsp; 
    <asp:Button ID="Button2" runat="server" Text="Clear" Width="105px" />
        </td>
        </tr>
        </table>
    <br />
&nbsp;
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Login.aspx">Already Have an Account ? Login Here ...</asp:HyperLink>
        &nbsp;&nbsp;<br />
        <br />
        &nbsp;
               <asp:Label ID="LbInfo" runat="server"></asp:Label>
    </form>
    <p style="margin-left: 40px">
               &nbsp;</p>
</body>
</html>
