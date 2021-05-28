<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebApplication1.Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 167px;
        }
        .auto-style1
        {
            height: 192px;
            width: 584px;
            margin-top: 0px;
        }
        .style2
        {
            width: 286px;
            height: 44px;
        }
        .style6
        {
            text-align: center;
            height: 38px;
            width: 167px;
        }
        .style7
        {
            width: 286px;
            height: 38px;
        }
        .style5
        {
            height: 34px;
            width: 167px;
            text-align: center;
        }
        .style4
        {
            width: 286px;
            height: 34px;
        }
        #form1
        {
            height: 438px;
            width: 725px;
        }
        .style10
        {
            width: 129px;
            height: 70px;
        }
        .auto-style2 {
            width: 193px;
        }
        .auto-style3 {
            text-align: center;
            height: 38px;
            width: 193px;
        }
        .auto-style4 {
            height: 34px;
            text-align: center;
        }
        .auto-style5 {
            height: 34px;
            width: 519px;
        }
        .auto-style6 {
            height: 70px;
            width: 519px;
        }
        .auto-style7 {
            width: 266px;
            height: 70px;
        }
    </style>
</head>
<body style="width: 777px; height: 468px">
    <form id="form1" runat="server">
    <br />
    <table align="center" class="auto-style1" frame="box">
        <caption>
            <h3 align="center" 
                
                style="background-color: #FFFFFF; color: #000000; font-weight: bold; font-style: normal; background-image: none; " class="auto-style5">
                <a href="Login.aspx">Login.aspx</a></h3>
            <h3 align="center" 
                
                style="background-color: #FFFFFF; color: #000000; font-weight: bold; font-style: normal; background-image: none; " class="auto-style6">
                <img alt="" class="auto-style7" src="Image/Login.jpg" /></h3>
        </caption>
            <td align="center" class="auto-style2">
                UserName : </td>
            <td align="center" class="style2" 
                style="background-position: 5px; background-image: none; background-repeat: no-repeat;">
                <asp:TextBox ID="txtUserName" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtUserName" ErrorMessage="Name Is Required" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="center" class="auto-style3" 
                style="background-position: 5px; background-image: none; background-repeat: no-repeat;">
  Password :</td>
            <td align="center" class="style7" 
                style="background-position: 5px; background-image: none; background-repeat: no-repeat;">
                <asp:TextBox ID="txtPass" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtPass" ErrorMessage="Password Required " ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="center" class="auto-style4" 
                style="background-position: 5px; background-image: none; background-repeat: no-repeat;" colspan="2">
                <asp:Button ID="btnLogin" runat="server" onclick="btnLogin_Click" 
                    style="text-align: center" Text="Login" Width="100px" />
            </td>
        </tr>
        <tr>
            <td align="center" class="auto-style4" 
                style="background-position: 5px; background-image: none; background-repeat: no-repeat;" colspan="2">
                &nbsp;&nbsp;
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Registration_Form.aspx">Don't have an Account ?  Regisration Now ....</asp:HyperLink>
            </td>
        </tr>
    </table>
    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    </form>
</body>
</html>
