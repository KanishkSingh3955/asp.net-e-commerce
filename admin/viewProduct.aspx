<%@ Page Title="" Language="C#" MasterPageFile="~/admin/adminPage.master" AutoEventWireup="true" CodeFile="viewProduct.aspx.cs" Inherits="admin_viewProduct" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container">
        <asp:Label ID="Label1" runat="server"></asp:Label>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical" OnRowDataBound="GridView1_RowDataBound" OnRowCommand="GridView1_RowCommand">
            <AlternatingRowStyle BackColor="#CCCCCC" />
            <Columns>
                <asp:BoundField DataField="ProductId" HeaderText="Id" />
                <asp:BoundField DataField="Pname" HeaderText="prductname" />
                <asp:BoundField DataField="Pprice" HeaderText="price" />
                <asp:BoundField DataField="Pdesc" HeaderText="description" />
                <asp:TemplateField HeaderText="image" ItemStyle-Height="50px" ItemStyle-Width="50px">
                    <ItemTemplate>
                        <asp:Image runat="server" ID="img" Width="200" Height="200" />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="delete">
                    <ItemTemplate>

                        <asp:Button ID="Button2" runat="server" Text="Delete" CommandName="DEL" CommandArgument='<%# Eval("ProductId") %>' CssClass="btn btn-danger" />
                    </ItemTemplate>
                </asp:TemplateField>
             

            </Columns>
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#808080" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView>
    </div>


</asp:Content>

