<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Pearson_User_Access_Rights.WebForm1" Culture="Auto" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
            height: 46px;
            width: 921px;
            margin-left: 200px;
        }
        .auto-style3 {
            width: 66%;
            margin-left: 320px;
        }
        .auto-style4 {
            width: 230px;
            text-align: right;
        }
        .auto-style5 {
            width: 345px;
            height: 23px;
        }
        .auto-style6 {
            width: 230px;
            text-align: right;
            height: 25px;
        }
        .auto-style7 {
            width: 345px;
            height: 25px;
        }
        .auto-style8 {
            height: 25px;
            width: 229px;
        }
        .auto-style9 {
            width: 345px;
            text-align: center;
        }
        .auto-style10 {
            height: 318px;
            margin-left: 280px;
        }
        .auto-style11 {
            width: 230px;
            text-align: right;
            height: 23px;
        }
        .auto-style12 {
            height: 23px;
            width: 229px;
        }
        .auto-style13 {
            width: 229px;
        }
        .auto-style14 {
            margin-left: 63px;
        }
    </style>
</head>
<body style="height: 632px; width: 1084px;">
    <form id="form1" runat="server">
    <div title="Login">
    
    </div>
        <div class="auto-style10">
            <asp:Image ID="Image1" runat="server" CssClass="auto-style14" Height="255px" ImageUrl="~/images/Pearson.png" Width="595px" />
        </div>
        <div aria-expanded="false" class="auto-style1">
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="XX-Large" ForeColor="#666666" Text="Sign-in"></asp:Label>
        </div>
        <table align="center" class="auto-style3">
            <tr>
                <td class="auto-style11"></td>
                <td class="auto-style5"></td>
                <td class="auto-style12"></td>
            </tr>
            <tr>
                <td class="auto-style4">Username :</td>
                <td class="auto-style9">
                    <asp:TextBox ID="txtUsername" runat="server" BackColor="#0099FF" ForeColor="#0066FF" Width="311px"></asp:TextBox>
                    *</td>
                <td class="auto-style13">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtUsername" ErrorMessage="Username is required *" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style9">&nbsp;</td>
                <td class="auto-style13">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">Password :</td>
                <td class="auto-style9">
                    <asp:TextBox ID="txtPassword" runat="server" BackColor="#0099FF" ForeColor="#0066FF" TabIndex="1" TextMode="Password" Width="311px"></asp:TextBox>
                    *</td>
                <td class="auto-style13">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPassword" ErrorMessage="Password is required *" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style6"></td>
                <td class="auto-style7"></td>
                <td class="auto-style8"></td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style9">
                    <asp:ImageButton ID="ImageButton1" runat="server" Height="67px" ImageUrl="~/images/sign_in_button.png" OnClick="ImageButton1_Click" Width="209px" />
                </td>
                <td class="auto-style13">&nbsp;</td>
            </tr>
        </table>
</body>
</html>
    </form>
