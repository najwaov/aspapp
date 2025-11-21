<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="griddddddd.aspx.cs" Inherits="aspapp.griddddddd" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" OnSelectedIndexChanging="GridView1_SelectedIndexChanging">
                <Columns>
                    <asp:BoundField DataField="name" HeaderText="name" />
                    <asp:ImageField DataImageUrlField="photo" HeaderText="photoo">
                        <ControlStyle Height="100px" Width="100px" />
                    </asp:ImageField>
                    <asp:TemplateField HeaderText="delete">
                        <ItemTemplate>
                            <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%# Eval("id") %>' OnCommand="LinkButton1_Command">select</asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:CommandField ShowSelectButton="True" />
                </Columns>
            </asp:GridView>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
        </div>
    </form>
</body>
</html>
