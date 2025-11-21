<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="registeration.aspx.cs" Inherits="aspapp.registeration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">

        .auto-style1 {
            width: 100%;
        }
        .auto-style5 {
            height: 48px;
        }
        .auto-style2 {
            height: 26px;
        }
        .auto-style4 {
            height: 31px;
        }
        .auto-style6 {
            width: 417px;
        }
        .auto-style7 {
            height: 48px;
            width: 417px;
        }
        .auto-style8 {
            height: 26px;
            width: 417px;
        }
        .auto-style9 {
            height: 31px;
            width: 417px;
        }
        .auto-style10 {
            width: 201px;
        }
        .auto-style11 {
            height: 26px;
            width: 201px;
        }
        .auto-style12 {
            width: 417px;
            height: 33px;
        }
        .auto-style13 {
            height: 33px;
        }
        .auto-style14 {
            width: 417px;
            height: 34px;
        }
        .auto-style15 {
            height: 34px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style6">
                    <asp:Label ID="Label1" runat="server" Text="NAME"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="enter name"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">
                    <asp:Label ID="Label2" runat="server" Text="AGE"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
                <td>
                    <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="enter valid age" MaximumValue="60" MinimumValue="16" Type="Integer"></asp:RangeValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style7">
                    <asp:Label ID="Label3" runat="server" Text="ADDRESS"></asp:Label>
                </td>
                <td class="auto-style5">
                    <asp:TextBox ID="TextBox8" runat="server" TextMode="MultiLine"></asp:TextBox>
                </td>
                <td class="auto-style5">
                    &nbsp;</td>
                <td class="auto-style5">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox8" ErrorMessage="enter address"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">
                    <asp:Label ID="Label4" runat="server" Text="PHONE"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
                <td>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="enter valid phone number" ControlToValidate="TextBox3" ValidationExpression="^[6-9]{1}[0-9]{9}$"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">
                    <asp:Label ID="Label5" runat="server" Text="E-MAIL"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
                <td>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox4" ErrorMessage="enter valid email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style8">
                    <asp:Label ID="Label6" runat="server" Text="GENDER"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                        <asp:ListItem Value="1">MALE</asp:ListItem>
                        <asp:ListItem Value="2">FEMALE</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
                <td class="auto-style2">
                    &nbsp;</td>
                <td class="auto-style2"></td>
            </tr>
            <tr>
                <td class="auto-style6">
                    <asp:Label ID="Label7" runat="server" Text="STATE"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="DropDownList2" runat="server">
                        <asp:ListItem Value="1">KERALA</asp:ListItem>
                        <asp:ListItem Value="2">KARNATKA</asp:ListItem>
                        <asp:ListItem Value="3">TAMILNADU</asp:ListItem>
                        <asp:ListItem Value="4">PUNJAB</asp:ListItem>
                        <asp:ListItem Value="5">ASSAM</asp:ListItem>
                        <asp:ListItem Value="5">ANDHRA PRADESH</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                    &nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style8">
                    <asp:Label ID="Label8" runat="server" Text="QUALIFICATION"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:CheckBoxList ID="CheckBoxList1" runat="server">
                        <asp:ListItem Value="1">B.TECH</asp:ListItem>
                        <asp:ListItem Value="2">BCA</asp:ListItem>
                        <asp:ListItem Value="3">MCA</asp:ListItem>
                        <asp:ListItem Value="4">MTECH</asp:ListItem>
                    </asp:CheckBoxList>
                </td>
                <td class="auto-style2">
                    &nbsp;</td>
                <td class="auto-style2"></td>
            </tr>
            <tr>
                <td class="auto-style6">
                    <asp:Label ID="Label9" runat="server" Text="PHOTO"></asp:Label>
                </td>
                <td>
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                </td>
                <td>
                    &nbsp;</td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="FileUpload1" ErrorMessage="select an image"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style14">
                    <asp:Label ID="Label10" runat="server" Text="USERNAME"></asp:Label>
                </td>
                <td class="auto-style15">
                    <asp:TextBox ID="TextBox5" runat="server" AutoPostBack="True" OnTextChanged="TextBox5_TextChanged"></asp:TextBox>
                </td>
                <td class="auto-style15">
                    <asp:Label ID="Label43" runat="server" Text="Label"></asp:Label>
                </td>
                <td class="auto-style15">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox5" ErrorMessage="enter valid username"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">
                    <asp:Label ID="Label11" runat="server" Text="PASSWORD"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox6" ErrorMessage="enter valid password"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">
                    <asp:Label ID="Label12" runat="server" Text="CONFIRM PASSWORD"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
                <td>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox6" ControlToValidate="TextBox7" ErrorMessage="password missmatch"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style9"></td>
                <td class="auto-style4">
                    <asp:Button ID="Button1" runat="server" Text="DISPLAY" OnClick="Button1_Click" />
                </td>
                <td class="auto-style4">
                </td>
                <td class="auto-style4"></td>
            </tr>
            <tr>
                <td class="auto-style12"></td>
                <td class="auto-style13">
                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="REGISTER" />
                </td>
                <td class="auto-style13">
                    &nbsp;</td>
                <td class="auto-style13"></td>
            </tr>
            <tr>
                <td class="auto-style8"></td>
                <td class="auto-style2">
                    <asp:Label ID="Label42" runat="server" Text="Label"></asp:Label>
                </td>
                <td class="auto-style2">
                    &nbsp;</td>
                <td class="auto-style2"></td>
            </tr>
            <tr>
                <td class="auto-style6">
                    <asp:Panel ID="Panel1" runat="server" OnDataBinding="Panel1_DataBinding" Visible="False">
                        <table class="auto-style1">
                            <tr>
                                <td>
                                    <asp:Label ID="Label20" runat="server" Text="NAME"></asp:Label>
                                </td>
                                <td class="auto-style10">
                                    <asp:Label ID="Label33" runat="server" Text="Label"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style2">
                                    <asp:Label ID="Label21" runat="server" Text="AGE"></asp:Label>
                                </td>
                                <td class="auto-style11">
                                    <asp:Label ID="Label34" runat="server" Text="Label"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label22" runat="server" Text="ADDRESS"></asp:Label>
                                </td>
                                <td class="auto-style10">
                                    <asp:Label ID="Label35" runat="server" Text="Label"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label23" runat="server" Text="PHONE"></asp:Label>
                                </td>
                                <td class="auto-style10">
                                    <asp:Label ID="Label36" runat="server" Text="Label"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label24" runat="server" Text="EMAIL"></asp:Label>
                                </td>
                                <td class="auto-style10">
                                    <asp:Label ID="Label37" runat="server" Text="Label"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label25" runat="server" Text="GENDER"></asp:Label>
                                </td>
                                <td class="auto-style10">
                                    <asp:Label ID="Label26" runat="server" Text="Label"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label28" runat="server" Text="STATE"></asp:Label>
                                </td>
                                <td class="auto-style10">
                                    <asp:Label ID="Label27" runat="server" Text="Label"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label29" runat="server" Text="QUALIFICATION"></asp:Label>
                                </td>
                                <td class="auto-style10">
                                    <asp:Label ID="Label38" runat="server" Text="Label"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label30" runat="server" Text="PHOTO"></asp:Label>
                                </td>
                                <td class="auto-style10">
                                    <asp:Image ID="Image1" runat="server" Height="162px" Width="143px" />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label31" runat="server" Text="USERNAME"></asp:Label>
                                </td>
                                <td class="auto-style10">
                                    <asp:Label ID="Label40" runat="server" Text="Label"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style2">
                                    <asp:Label ID="Label32" runat="server" Text="PASSWORD"></asp:Label>
                                </td>
                                <td class="auto-style11">
                                    <asp:Label ID="Label41" runat="server" Text="Label"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td class="auto-style10">&nbsp;</td>
                            </tr>
                        </table>
                    </asp:Panel>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style8"></td>
                <td class="auto-style2"></td>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style2"></td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <div>
        </div>
    </form>
</body>
</html>
