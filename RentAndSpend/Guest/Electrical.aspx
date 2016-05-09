<%@ Page Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Electrical.aspx.cs" Inherits="Guest_Electrical" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">

    <asp:UpdatePanel ID="UpdatePanel2" runat="server">
    </asp:UpdatePanel>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT [ProductName], [ProductDescription], [RentalDailyRate] FROM [Products] WHERE ([CategoryName] = @CategoryName)">
        <SelectParameters>
            <asp:Parameter DefaultValue="Electrical" Name="CategoryName" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="ProductName" HeaderText="ProductName" 
                SortExpression="ProductName" />
            <asp:BoundField DataField="ProductDescription" HeaderText="ProductDescription" 
                SortExpression="ProductDescription" />
            <asp:BoundField DataField="RentalDailyRate" HeaderText="RentalDailyRate" 
                SortExpression="RentalDailyRate" />
        </Columns>
    </asp:GridView>

</asp:Content>
