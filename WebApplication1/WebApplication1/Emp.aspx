<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Emp.aspx.cs" Inherits="WebApplication1.Emp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style1 {
        width: 591px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="w-100">
    <tr>
        <td class="auto-style1">Employee Details</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style1">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="EmpId" DataSourceID="SqlDataSource1" AllowPaging="True" AllowSorting="True" CellPadding="4" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                    <asp:BoundField DataField="EmpId" HeaderText="EmpId" ReadOnly="True" SortExpression="EmpId" />
                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                    <asp:BoundField DataField="DOJ" HeaderText="DOJ" SortExpression="DOJ" />
                    <asp:BoundField DataField="Passcode" HeaderText="Passcode" SortExpression="Passcode" />
                </Columns>
                <EditRowStyle BackColor="#999999" />
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:CapstoneConnectionString4 %>" DeleteCommand="DELETE FROM [Employee] WHERE [EmpId] = @original_EmpId AND (([Name] = @original_Name) OR ([Name] IS NULL AND @original_Name IS NULL)) AND (([DOJ] = @original_DOJ) OR ([DOJ] IS NULL AND @original_DOJ IS NULL)) AND (([Passcode] = @original_Passcode) OR ([Passcode] IS NULL AND @original_Passcode IS NULL))" InsertCommand="INSERT INTO [Employee] ([EmpId], [Name], [DOJ], [Passcode]) VALUES (@EmpId, @Name, @DOJ, @Passcode)" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:CapstoneConnectionString4.ProviderName %>" SelectCommand="SELECT * FROM [Employee]" UpdateCommand="UPDATE [Employee] SET [Name] = @Name, [DOJ] = @DOJ, [Passcode] = @Passcode WHERE [EmpId] = @original_EmpId AND (([Name] = @original_Name) OR ([Name] IS NULL AND @original_Name IS NULL)) AND (([DOJ] = @original_DOJ) OR ([DOJ] IS NULL AND @original_DOJ IS NULL)) AND (([Passcode] = @original_Passcode) OR ([Passcode] IS NULL AND @original_Passcode IS NULL))">
                <DeleteParameters>
                    <asp:Parameter Name="original_EmpId" Type="String" />
                    <asp:Parameter Name="original_Name" Type="String" />
                    <asp:Parameter DbType="Date" Name="original_DOJ" />
                    <asp:Parameter Name="original_Passcode" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="EmpId" Type="String" />
                    <asp:Parameter Name="Name" Type="String" />
                    <asp:Parameter DbType="Date" Name="DOJ" />
                    <asp:Parameter Name="Passcode" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Name" Type="String" />
                    <asp:Parameter DbType="Date" Name="DOJ" />
                    <asp:Parameter Name="Passcode" Type="Int32" />
                    <asp:Parameter Name="original_EmpId" Type="String" />
                    <asp:Parameter Name="original_Name" Type="String" />
                    <asp:Parameter DbType="Date" Name="original_DOJ" />
                    <asp:Parameter Name="original_Passcode" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style1">
            <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/EmpCreate.aspx">Create</asp:HyperLink>
        </td>
        <td>
            <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/Home.aspx">Logout</asp:HyperLink>
        </td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style1">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>
</asp:Content>
