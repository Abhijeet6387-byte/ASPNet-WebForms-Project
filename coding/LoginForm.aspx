<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="LoginForm.aspx.cs" Inherits="SignUpandLoginForm.LoginForm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        body {
        font-family: Arial, sans-serif;
        background-color: #f3f3f3;
    }

    
    .auto-style3 {
    }
    table{
        margin: 60px auto;
        padding: 20px;
        width: 350px;
        border-radius: 15px;
        box-shadow: 0 0 15px rgba(0,0,0,0.2);
        background-color: #ffffff;
    }
    .auto-style3{
        text-align: center;
        font-size: 28px;
        font-weight: bold;
        color: #4A148C;
        padding-bottom: 20px;
    }
    .link {
        text-align: center;
        margin-top: 10px;
        font-size: 14px;
        color: #555;
    }

    .link a {
        color: #4A148C;
        text-decoration: none;
        font-weight: bold;
    }

    .link a:hover {
        text-decoration: underline;
    }
    .btn-login{
        border:none;
        border-radius:5px;
        width:188px;
        color:white;
        background-color:#9182C4;
        transition-duration:2s;
    }
    .btn-login:hover{
        transition-duration:2s;
        box-shadow:0px 0px 8px #9182C4;
         background-color: #6a5acd;
    }
    .text-box{
        border-radius:5px;
        padding: 8px 10px;
        border: 1px solid #ccc;
        font-size: 14px;
    }
    .text-box:focus {
        outline: none;
        border-color: #9182C4;
        box-shadow: 0 0 5px #9182C4;
    }
    td {
        padding: 10px;
        font-size: 16px;
        color: #333;
    }

</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
    <table cellpadding="5" cellspacing="5" >
        <tr>
            <td class="auto-style3" colspan="2" id="heading">LOGIN FORM</td>
        </tr>
        <tr>
            <td >Username:</td>
            <td class="auto-style2">
                <asp:TextBox ID="UserTextBox" runat="server" Height="31px" cssclass="text-box"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="UserTextBox" Display="Dynamic" ErrorMessage="User Name is Required" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td >Password:</td>
            <td class="auto-style2">
                <asp:TextBox ID="PasswordTextBox" runat="server" TextMode="Password" Height="31px" cssclass="text-box"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="PasswordTextBox" Display="Dynamic" ErrorMessage="Password is Required" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td >&nbsp;</td>
            <td class="auto-style2">
                <asp:Button ID="LoginButton" runat="server" Text="LOGIN" OnClick="LoginButton_Click" class ="btn-login" Height="34px" />
            </td>
        </tr>
        <tr>
            <td colspan="2" class ="link">
                Not registered,<a href="SignUpForm.aspx">Sign Up..</a>
            </td>
        </tr>
    </table>
</div>
</asp:Content>
