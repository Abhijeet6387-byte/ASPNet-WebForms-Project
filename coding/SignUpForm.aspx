<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="SignUpForm.aspx.cs" Inherits="SignUpandLoginForm.SignUpForm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        body {
            background-color: #f3f3f3;
            font-family: Arial, sans-serif;
        }

        .auto-style1 {
            width: 600px;
            margin: 40px auto;
            border-radius: 15px;
            box-shadow: 0px 0px 20px rgba(0,0,0,0.1);
            background-color: #ffffff;
            padding: 20px;
        }

        .auto-style2 {
            text-align: center;
            font-size: 30px;
            font-weight: bold;
            color: #4A148C;
            padding-bottom: 20px;
        }

        .auto-style4 {
            width: 189px;
            height: 45px;
        }

        .auto-style5 {
            height: 45px;
        }

        .link {
            text-align: center;
        }

            .link a {
                text-decoration: none;
            }

        .btn-login {
            background-color: #9182C4;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 6px;
            font-size: 16px;
            font-weight: bold;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

            .btn-login:hover {
                transition-duration: 2s;
                box-shadow: 0px 0px 8px #9182C4;
                background-color: #6a5acd;
            }

        .text-box {
            border-radius: 5px;
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
            padding: 5px;
            font-size: 16px;
            color: #333;
        }

        .summary-validate {
            background-color: #ffe6e6;
            border: 3px solid red;
            width: 80%;
            margin: 30px auto;
            color: red;
            border-radius: 6px;
            font-size: 15px;
            box-shadow: 0 0 10px rgba(255, 77, 77, 0.2);
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table cellpadding="5" cellspacing="5" class="auto-style1">
        <tr>
            <td class="auto-style2" colspan="2">Sign Up Form</td>
        </tr>
        <tr>
            <td class="auto-style3">First Name:</td>
            <td>
                <asp:TextBox ID="FirstNameTextBox" runat="server" Width="284px " CssClass="text-box"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="FirstNameTextBox" Display="Dynamic" ErrorMessage="Please Enter first Name " ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Last Name:</td>
            <td>
                <asp:TextBox ID="LastNameTextBox" runat="server" Width="282px" CssClass="text-box"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="LastNameTextBox" Display="Dynamic" ErrorMessage="Please Enter Last Name " ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Gender:</td>
            <td>
                <asp:DropDownList ID="GenderDropDownList" runat="server" Width="302px" CssClass="text-box">
                    <asp:ListItem>--Select--</asp:ListItem>
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="GenderDropDownList" Display="Dynamic" ErrorMessage="Please Select Gender" ForeColor="Red" InitialValue="--Select--" SetFocusOnError="True">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Email:</td>
            <td>
                <asp:TextBox ID="EmailTextBox" runat="server" Width="282px" CssClass="text-box"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="EmailTextBox" Display="Dynamic" ErrorMessage="Please Enter your Email " ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="EmailTextBox" ErrorMessage="Email is not Valid" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Address:</td>
            <td>
                <asp:TextBox ID="AddressTextBox" runat="server" Width="282px" CssClass="text-box"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="AddressTextBox" Display="Dynamic" ErrorMessage="Please Enter your Address" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">Username:</td>
            <td class="auto-style5">
                <asp:TextBox ID="UsernameTextbox" runat="server" Width="282px" CssClass="text-box"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="UsernameTextbox" Display="Dynamic" ErrorMessage="Please Enter your Username" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Password:</td>
            <td>
                <asp:TextBox ID="PasswordTextBox" runat="server" Width="282px" CssClass="text-box"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="PasswordTextBox" Display="Dynamic" ErrorMessage="Please Enter Password" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="PasswordTextBox" ErrorMessage="Please Enter a Strong Password(Use atleast one of UpperCase,LowerCase , Number and Character)" ForeColor="Red" Display="Dynamic" SetFocusOnError="True" ValidationExpression="^(?![.])(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*\W).{8,}$">*</asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Confirm Password:</td>
            <td>
                <asp:TextBox ID="ConfirmPassTextBox" runat="server" Width="282px" CssClass="text-box"></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="PasswordTextBox" ControlToValidate="ConfirmPassTextBox" ErrorMessage="Password is Not Identical" ForeColor="Red" Display="Dynamic" SetFocusOnError="True">*</asp:CompareValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="ConfirmPassTextBox" Display="Dynamic" ErrorMessage="Please Enter Confirm Password" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style3"><a href="LoginForm.aspx">Back to Login Form</a></td>
            <td>
                <asp:Button ID="SignUpButton" runat="server" Text="Sign Up" OnClick="SignUpButton_Click" CssClass="btn-login" />
            </td>
        </tr>
    </table>
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" CssClass="summary-validate" />
</asp:Content>
