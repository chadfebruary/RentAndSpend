<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="ProductList.aspx.cs" Inherits="Guest_ProductList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="MainContent" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
    DataKeyNames="categoryname" DataSourceID="SqlDataSource1" 
        onselectedindexchanged="GridView1_SelectedIndexChanged" Width="574px">
        <Columns>
            <asp:BoundField DataField="categoryname" HeaderText="categoryname" 
                ReadOnly="True" SortExpression="categoryname" />
            <asp:BoundField DataField="picturepath" HeaderText="picturepath" 
                SortExpression="picturepath" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConflictDetection="CompareAllValues" 
    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
    DeleteCommand="DELETE FROM [category] WHERE [categoryname] = @original_categoryname AND [picturepath] = @original_picturepath" 
    InsertCommand="INSERT INTO [category] ([categoryname], [picturepath]) VALUES (@categoryname, @picturepath)" 
    OldValuesParameterFormatString="original_{0}" 
    SelectCommand="SELECT * FROM [category]" 
    
        UpdateCommand="UPDATE [category] SET [picturepath] = @picturepath WHERE [categoryname] = @original_categoryname AND [picturepath] = @original_picturepath">
        <DeleteParameters>
            <asp:Parameter Name="original_categoryname" Type="String" />
            <asp:Parameter Name="original_picturepath" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="categoryname" Type="String" />
            <asp:Parameter Name="picturepath" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="picturepath" Type="String" />
            <asp:Parameter Name="original_categoryname" Type="String" />
            <asp:Parameter Name="original_picturepath" Type="String" />
        </UpdateParameters>
</asp:SqlDataSource>
    </asp:Content>

