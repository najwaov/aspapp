<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="page3.aspx.cs" Inherits="aspapp.page3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 390px;
        }
        .auto-style3 {
            width: 312px;
        }
        .auto-style4 {
            width: 297px;
        }
        .auto-style5 {
            width: 390px;
            height: 29px;
        }
        .auto-style6 {
            width: 312px;
            height: 29px;
        }
        .auto-style7 {
            width: 297px;
            height: 29px;
        }
        .auto-style8 {
            height: 29px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style5">number 1</td>
                <td class="auto-style6">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style7">number 2</td>
                <td class="auto-style8">
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style8"></td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Button ID="Button1" runat="server" Font-Bold="True" Height="87px" OnClick="Button1_Click" Text="+" Width="117px" />
                </td>
                <td class="auto-style3">
                    <asp:Button ID="Button2" runat="server" Font-Bold="True" Height="87px" OnClick="Button2_Click" Text="-" Width="115px" />
                </td>
                <td class="auto-style4">
                    <asp:Button ID="Button3" runat="server" Font-Bold="False" Height="87px" Text="*" Width="111px" OnClick="Button3_Click" />
                </td>
                <td>
                    <asp:Button ID="Button4" runat="server" Font-Bold="True" Height="87px" Text="/" Width="85px" OnClick="Button4_Click" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">
                    <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <div>
        </div>
    </form>
</body>
</html>
