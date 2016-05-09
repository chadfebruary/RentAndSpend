<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="RentItem.aspx.cs" Inherits="User_RentItem" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 120px;
        }
        .style3
        {
            width: 186px;
            margin-left: 40px;
        }
        .style4
        {
            width: 120px;
            height: 26px;
        }
        .style5
        {
            width: 186px;
            height: 26px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="MainContent" Runat="Server">
    <table class="style1">
        <tr>
            <td class="style4">
                Rental number:</td>
            <td class="style5">
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style2">
                Name:</td>
            <td class="style3">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2">
                Surname:</td>
            <td class="style3">
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2">
                Phone number:</td>
            <td class="style3">
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2">
                Street address:</td>
            <td class="style3">
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2">
                City:</td>
            <td class="style3">
                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2">
                Province:</td>
            <td class="style3">
                <asp:DropDownList ID="DropDownList1" runat="server" 
                    DataSourceID="SqlDataSource1" DataTextField="provincename" 
                    DataValueField="provincename">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConflictDetection="CompareAllValues" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    DeleteCommand="DELETE FROM [provinces] WHERE [provincename] = @original_provincename" 
                    InsertCommand="INSERT INTO [provinces] ([provincename]) VALUES (@provincename)" 
                    OldValuesParameterFormatString="original_{0}" 
                    SelectCommand="SELECT * FROM [provinces]">
                    <DeleteParameters>
                        <asp:Parameter Name="original_provincename" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="provincename" Type="String" />
                    </InsertParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="style2">
                Post code:</td>
            <td class="style3">
                <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2">
                Rent date:</td>
            <td class="style3">
                <asp:ImageButton ID="ImageButton1" runat="server" Height="30px" 
                    ImageUrl="~/Images/images.png" onclick="ImageButton1_Click1" Width="50px" />
                <asp:Calendar ID="Calendar1" runat="server" 
                    style="z-index: 1; left: 511px; top: 284px; position: absolute; height: 160px; width: 200px">
                </asp:Calendar>
            </td>
        </tr>
        <tr>
            <td class="style2">
                Return date:
            </td>
            <td class="style3">
                <asp:ImageButton ID="ImageButton2" runat="server" Height="30px" 
                    ImageUrl="~/Images/images.png" onclick="ImageButton2_Click" Width="50px" />
                <asp:Calendar ID="Calendar2" runat="server" 
                    onselectionchanged="Calendar2_SelectionChanged" 
                    style="z-index: 1; left: 511px; top: 283px; position: absolute; height: 160px; width: 200px">
                </asp:Calendar>
            </td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Submit" />
            </td>
            <td class="style3">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

