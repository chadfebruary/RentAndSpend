<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="ProductList.aspx.cs" Inherits="Guest_ProductList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="MainContent" Runat="Server">
    <asp:UpdatePanel ID="UpdatePanel2" runat="server">
    <ContentTemplate>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConflictDetection="CompareAllValues" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            DeleteCommand="DELETE FROM [Products] WHERE [SerialNumber] = @original_SerialNumber AND [ProductName] = @original_ProductName AND (([ProductDescription] = @original_ProductDescription) OR ([ProductDescription] IS NULL AND @original_ProductDescription IS NULL)) AND (([RentalDailyRate] = @original_RentalDailyRate) OR ([RentalDailyRate] IS NULL AND @original_RentalDailyRate IS NULL))" 
            InsertCommand="INSERT INTO [Products] ([SerialNumber], [ProductName], [ProductDescription], [RentalDailyRate]) VALUES (@SerialNumber, @ProductName, @ProductDescription, @RentalDailyRate)" 
            OldValuesParameterFormatString="original_{0}" 
            SelectCommand="SELECT [SerialNumber], [ProductName], [ProductDescription], [RentalDailyRate] FROM [Products]" 
            UpdateCommand="UPDATE [Products] SET [ProductName] = @ProductName, [ProductDescription] = @ProductDescription, [RentalDailyRate] = @RentalDailyRate WHERE [SerialNumber] = @original_SerialNumber AND [ProductName] = @original_ProductName AND (([ProductDescription] = @original_ProductDescription) OR ([ProductDescription] IS NULL AND @original_ProductDescription IS NULL)) AND (([RentalDailyRate] = @original_RentalDailyRate) OR ([RentalDailyRate] IS NULL AND @original_RentalDailyRate IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_SerialNumber" Type="String" />
                <asp:Parameter Name="original_ProductName" Type="String" />
                <asp:Parameter Name="original_ProductDescription" Type="String" />
                <asp:Parameter Name="original_RentalDailyRate" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="SerialNumber" Type="String" />
                <asp:Parameter Name="ProductName" Type="String" />
                <asp:Parameter Name="ProductDescription" Type="String" />
                <asp:Parameter Name="RentalDailyRate" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="ProductName" Type="String" />
                <asp:Parameter Name="ProductDescription" Type="String" />
                <asp:Parameter Name="RentalDailyRate" Type="Int32" />
                <asp:Parameter Name="original_SerialNumber" Type="String" />
                <asp:Parameter Name="original_ProductName" Type="String" />
                <asp:Parameter Name="original_ProductDescription" Type="String" />
                <asp:Parameter Name="original_RentalDailyRate" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="SerialNumber" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="SerialNumber" HeaderText="SerialNumber" 
                    ReadOnly="True" SortExpression="SerialNumber" />
                <asp:BoundField DataField="ProductName" HeaderText="ProductName" 
                    SortExpression="ProductName" />
                <asp:BoundField DataField="ProductDescription" HeaderText="ProductDescription" 
                    SortExpression="ProductDescription" />
                <asp:BoundField DataField="RentalDailyRate" HeaderText="RentalDailyRate" 
                    SortExpression="RentalDailyRate" />
            </Columns>
        </asp:GridView>
    </ContentTemplate>
</asp:UpdatePanel>
    </asp:Content>

