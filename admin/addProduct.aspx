<%@ Page Title="" Language="C#" MasterPageFile="~/admin/adminPage.master" AutoEventWireup="true" CodeFile="addProduct.aspx.cs" Inherits="admin_addProduct" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <br />
    <br />
    <section>
        <div class="container" style="background-color: lightblue; margin-bottom: -16px; padding-bottom: 43px;">
            <h2 class="text-center" style="padding-bottom:2rem;">Add <span style="color:red;">Product:</span> </h2>
            
            <div class="row">
                <div class="col-md-6">
                    <asp:TextBox ID="TextBox1" class="form-control" runat="server" placeholder="NAME"></asp:TextBox><br />

                    <asp:TextBox ID="TextBox2" class="form-control" runat="server" placeholder="PRICE"></asp:TextBox><br />
                    <asp:FileUpload ID="FileUpload1" runat="server" /><br /><br />

                    <asp:DropDownList ID="drdcategory" runat="server" DataSourceID="SqlDataSource1" DataTextField="categoryname" DataValueField="Pcategory">

                    </asp:DropDownList><br />
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Pcategory], [categoryname] FROM [categoryTable]"></asp:SqlDataSource>
                    <br />
                    <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control" placeholder="DESCRIPTION" TextMode="MultiLine"></asp:TextBox><br />

                    <asp:Button ID="addProduct" runat="server" CssClass="form-control btn-danger" Text="AddProduct" OnClick="addProduct_Click" />

                </div>
                <div class="col-md-6">
                    <img  src="download%20(1).png"  style="width: 89%; height: 74%; border-radius: 49px; background: linear-gradient(225deg, #aef3ff, #93cce6); box-shadow: -5px 5px 3px #729fb3,
             5px -5px 3px #d4ffff;" />

                </div>
                <div>
                    <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                </div>
            </div>

        </div>
    </section>
</asp:Content>

