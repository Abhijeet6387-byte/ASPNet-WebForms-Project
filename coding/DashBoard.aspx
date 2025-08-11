<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="DashBoard.aspx.cs" Inherits="SignUpandLoginForm.DashBoard" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .logout-btn {
    background-color: #9182C4;
    color: white;
    padding: 10px 20px;
    border: none;
    border-radius: 6px;
    font-size: 16px;
    font-weight: bold;
    cursor: pointer;
    transition: background-color 0.3s ease;
    transition-duration:2s;
}

    .logout-btn:hover {
        transition-duration: 2s;
        box-shadow: 0px 0px 8px #9182C4;
        background-color: #6a5acd;
    }
    .user-label {
        font-size: 28px;
        font-weight: bold;
        color: #4A148C;
        display: block;
        text-align: center;
        margin-top: 80px;
        margin-bottom: 40px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="UserLabel" runat="server" Text="Label" CssClass="user-label"></asp:Label>
    <br />
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Log Out" cssclass="logout-btn"/>
    <br />
</asp:Content>
