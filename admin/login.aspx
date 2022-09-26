<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="admin_login" enableEventValidation="false" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>AdminLOgin</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>


</head>
<body>
    <form id="form1" runat="server">
        <br />
        <br />
        <div class="container" style="border-radius: 67px; background: linear-gradient(225deg, #a7d2d7, #8cb0b5); box-shadow: -5px 5px 10px #7a999d,
             5px -5px 10px #beeff5;">

            <div class="row">

                <div class="col-md-6" style="margin-top: 12rem;">
                    <h2 style="margin-left: 20rem; margin-bottom: 28px;">Login Form</h2>
                    <form >
                        <div class="form-group">
                            <label for="email">Email:</label>

                            <asp:TextBox ID="TextBox1" runat="server" class="form-control " placeholder="Enter email" Style=""></asp:TextBox>


                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="enter the valid email" ValidationGroup="save" ControlToValidate="TextBox1" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter the email" ControlToValidate="TextBox1" ValidationGroup="save" ForeColor="Red"></asp:RequiredFieldValidator>

                        </div>
                        <div class="form-group">
                            <label for="pwd">Password:</label>

                            <asp:TextBox ID="TextBox2" runat="server" class="form-control" placeholder="Enter password"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter the password" BorderStyle="None" ControlToValidate="TextBox2" ForeColor="#FF3300" ValidationGroup="save"></asp:RequiredFieldValidator>
                        </div>

                        <asp:Button ID="Button1" runat="server" class="btn btn-default" Text="submit" OnClick="Button1_Click" ValidationGroup="save" />

                    </form>
                </div>

                <div class="col-md-6">
                    <img src="../Content/OIP-removebg-preview.png" />
                </div>

            </div>

            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
        </div>
    </form>


</body>
</html>
