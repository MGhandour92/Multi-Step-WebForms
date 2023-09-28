<%@ Page Title="Thanks" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Thanks.aspx.cs" Inherits="Multi_Step_Reg.Thanks" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="thank-you-container">
        <h2>Thank You <u>
            <asp:Label ID="lblFullName" runat="server" Text=""></asp:Label>
        </u>for Registering!</h2>
        <p>Your registration is complete.</p>
        <p>We appreciate your interest in our website.</p>
        <p><a href="Default.aspx">Return to Home Page</a></p>
    </div>
</asp:Content>
