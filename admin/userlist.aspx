<%@ Page Title="" Language="C#" MasterPageFile="~/admin/adminPage.master" AutoEventWireup="true" CodeFile="userlist.aspx.cs" Inherits="admin_userlist" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:Label ID="Label1" runat="server"></asp:Label>
    <div class="container-md">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" OnRowDataBound="GridView1_RowDataBound" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black" Width="1053px" OnRowCommand="GridView1_RowCommand">
            <Columns>
                <asp:BoundField DataField="userId" HeaderText="id" />
                <asp:BoundField DataField="name" HeaderText="name" />
                <asp:BoundField DataField="lastname" HeaderText="lastname" />
                <asp:BoundField DataField="email" HeaderText="email" />
                <asp:BoundField DataField="password" HeaderText="password" />

                <asp:BoundField DataField="confirmpass" HeaderText="confirmPassword" />
                <asp:TemplateField HeaderText="delete">
                    <ItemTemplate>

                        <asp:Button ID="Button2" runat="server" Text="Delete" CommandName="DEL" CommandArgument='<%# Eval("userId") %>' CssClass="btn btn-danger" />
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
            <RowStyle BackColor="White" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#808080" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView>
    </div>


</asp:Content>

