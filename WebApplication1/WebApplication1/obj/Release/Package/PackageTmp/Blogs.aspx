<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Blogs.aspx.cs" Inherits="WebApplication1.Blogs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style1 {
        width: 752px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="w-100">
    <tr>
        <td class="auto-style1" colspan="2">Blogs</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style1" colspan="2">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="BlogId" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowSelectButton="True" />
                    <asp:BoundField DataField="BlogId" HeaderText="BlogId" ReadOnly="True" SortExpression="BlogId" />
                    <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
                    <asp:BoundField DataField="Subject" HeaderText="Subject" SortExpression="Subject" />
                    <asp:BoundField DataField="DOC" HeaderText="DOC" SortExpression="DOC" />
                    <asp:BoundField DataField="BlogURL" HeaderText="BlogURL" SortExpression="BlogURL" />
                    <asp:BoundField DataField="EmpId" HeaderText="EmpId" SortExpression="EmpId" />
                </Columns>
                <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
                <RowStyle BackColor="White" ForeColor="#003399" />
                <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                <SortedAscendingCellStyle BackColor="#EDF6F6" />
                <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
                <SortedDescendingCellStyle BackColor="#D6DFDF" />
                <SortedDescendingHeaderStyle BackColor="#002876" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:CapstoneConnectionString5 %>" DeleteCommand="DELETE FROM [BlogInfo] WHERE [BlogId] = @original_BlogId AND (([Title] = @original_Title) OR ([Title] IS NULL AND @original_Title IS NULL)) AND (([Subject] = @original_Subject) OR ([Subject] IS NULL AND @original_Subject IS NULL)) AND (([DOC] = @original_DOC) OR ([DOC] IS NULL AND @original_DOC IS NULL)) AND (([BlogURL] = @original_BlogURL) OR ([BlogURL] IS NULL AND @original_BlogURL IS NULL)) AND (([EmpId] = @original_EmpId) OR ([EmpId] IS NULL AND @original_EmpId IS NULL))" InsertCommand="INSERT INTO [BlogInfo] ([BlogId], [Title], [Subject], [DOC], [BlogURL], [EmpId]) VALUES (@BlogId, @Title, @Subject, @DOC, @BlogURL, @EmpId)" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:CapstoneConnectionString5.ProviderName %>" SelectCommand="SELECT * FROM [BlogInfo]" UpdateCommand="UPDATE [BlogInfo] SET [Title] = @Title, [Subject] = @Subject, [DOC] = @DOC, [BlogURL] = @BlogURL, [EmpId] = @EmpId WHERE [BlogId] = @original_BlogId AND (([Title] = @original_Title) OR ([Title] IS NULL AND @original_Title IS NULL)) AND (([Subject] = @original_Subject) OR ([Subject] IS NULL AND @original_Subject IS NULL)) AND (([DOC] = @original_DOC) OR ([DOC] IS NULL AND @original_DOC IS NULL)) AND (([BlogURL] = @original_BlogURL) OR ([BlogURL] IS NULL AND @original_BlogURL IS NULL)) AND (([EmpId] = @original_EmpId) OR ([EmpId] IS NULL AND @original_EmpId IS NULL))">
                <DeleteParameters>
                    <asp:Parameter Name="original_BlogId" Type="Int32" />
                    <asp:Parameter Name="original_Title" Type="String" />
                    <asp:Parameter Name="original_Subject" Type="String" />
                    <asp:Parameter Name="original_DOC" Type="DateTime" />
                    <asp:Parameter Name="original_BlogURL" Type="String" />
                    <asp:Parameter Name="original_EmpId" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="BlogId" Type="Int32" />
                    <asp:Parameter Name="Title" Type="String" />
                    <asp:Parameter Name="Subject" Type="String" />
                    <asp:Parameter Name="DOC" Type="DateTime" />
                    <asp:Parameter Name="BlogURL" Type="String" />
                    <asp:Parameter Name="EmpId" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Title" Type="String" />
                    <asp:Parameter Name="Subject" Type="String" />
                    <asp:Parameter Name="DOC" Type="DateTime" />
                    <asp:Parameter Name="BlogURL" Type="String" />
                    <asp:Parameter Name="EmpId" Type="String" />
                    <asp:Parameter Name="original_BlogId" Type="Int32" />
                    <asp:Parameter Name="original_Title" Type="String" />
                    <asp:Parameter Name="original_Subject" Type="String" />
                    <asp:Parameter Name="original_DOC" Type="DateTime" />
                    <asp:Parameter Name="original_BlogURL" Type="String" />
                    <asp:Parameter Name="original_EmpId" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </td>
        <td rowspan="2">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style1">
            <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/BlogCreate.aspx">Add Blogs</asp:HyperLink>
        </td>
        <td class="auto-style1">
            <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/Home.aspx">Logout</asp:HyperLink>
        </td>
    </tr>
</table>
</asp:Content>
