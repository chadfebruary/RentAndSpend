<%@ Page Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="LawnAndGarden.aspx.cs" Inherits="Guest_LawnAndGarden" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT [ProductName], [ProductDescription], [RentalDailyRate] FROM [Products] WHERE ([CategoryName] = @CategoryName)">
        <SelectParameters>
            <asp:Parameter DefaultValue="Lawn and Garden" Name="CategoryName" 
                Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server">
    </asp:GridView>
</asp:Content>