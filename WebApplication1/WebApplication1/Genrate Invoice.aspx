<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Genrate Invoice.aspx.cs" Inherits="WebApplication1.Genrate_Invoice" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {
            font-size: medium;
            text-align: left;
        }
        .auto-style3 {
            font-size: xx-large;
        }
        #form1 {
            height: 595px;
            width: 1051px;
        }
        .auto-style4 {
            width: 100%;
            height: 494px;
            margin-top: 0px;
        }
        .auto-style5 {
            height: 23px;
            width: 975px;
        }
        .auto-style6 {
            width: 100%;
            height: 94px;
        }
        .auto-style7 {
            height: 104px;
            width: 975px;
        }
        .auto-style8 {
            width: 484px;
            height: 113px;
        }
        .auto-style9 {
            height: 113px;
            width: 438px;
        }
        .auto-style10 {
            height: 201px;
            width: 975px;
        }
        .auto-style11 {
            width: 975px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="auto-style1">
    
        <h2 class="auto-style3"><strong>TAX INVOICE</strong></h2>
        <p class="auto-style2">
            Order Id :
            <asp:Label ID="Label1" runat="server"></asp:Label>
&nbsp;</p>
    
    </div>
        <table border="1" class="auto-style4">
            <tr>
                <td class="auto-style11" style="text-align: center"><strong>INVOICE </strong></td>
            </tr>
            <tr>
                <td class="auto-style7">Order No :
                    <asp:Label ID="Label2" runat="server"></asp:Label>
                    <br />
                    <br />
                    Order Date :
                    <asp:Label ID="Label3" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style11">
                    <table border="1" class="auto-style6">
                        <tr>
                            <td class="auto-style8">CUSTOMER ADDRESS :<br />
                                <asp:Label ID="Label4" runat="server"></asp:Label>
                            </td>
                            <td class="auto-style9">SELLER ADDRESS :<br />
                                Jai Bhagwan Medical Shop , Anandrushiji Marg, Behind Anadrushiji Hospital,<br />
                                Maniknagar, Ahmednagar -414001 </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td class="auto-style10">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Height="182px" Width="956px">
                    </asp:GridView>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">Grand Total :
                    <asp:Label ID="Label5" runat="server"></asp:Label>
                </td>
            </tr>
        </table> 
                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                          <asp:Button ID="Button1" runat="server" style="text-align: center" Text="Add / Print /Download " Width="209px" />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" Text="Clean / Cancle" Width="156px" />
    </form>
</body>
</html>
