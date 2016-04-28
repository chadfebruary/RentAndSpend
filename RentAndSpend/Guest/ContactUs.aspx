<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="ContactUs.aspx.cs" Inherits="Guest_ContactUs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
    .style1
    {
        width: 100%;
    }
    .style2
    {
        width: 124px;
    }
</style>
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="MainContent" Runat="Server">
    Contact us<br />
<table class="style1">
    <tr>
        <td class="style2">
            Name:</td>
        <td>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style2">
            Email:</td>
        <td>
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style2">
            Contact:</td>
        <td>
            <asp:CheckBox ID="CheckBox1" runat="server" Text="Anita" />
            <asp:CheckBox ID="CheckBox2" runat="server" Text="Chase" />
            <asp:CheckBox ID="CheckBox3" runat="server" 
                oncheckedchanged="CheckBox3_CheckedChanged" Text="Chad" />
        </td>
    </tr>
    <tr>
        <td class="style2">
            Query:</td>
        <td>
            <asp:TextBox ID="TextBox3" runat="server" Height="111px" Width="255px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style2">
            <asp:Button ID="Button1" runat="server" Text="Submit" />
        </td>
        <td>
            &nbsp;</td>
    </tr>
</table>
</asp:Content>

