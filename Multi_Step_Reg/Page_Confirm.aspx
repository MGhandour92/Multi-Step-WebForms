<%@ Page Title="Multi Page - Confirm" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" EnableViewState="true" CodeBehind="Page_Confirm.aspx.cs" Inherits="Multi_Step_Reg.Page_Confirm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
<div id="pnlConfirmation" class="step-panel">
    <h2>Confirmation - (Step 3 of 3)</h2>
    <p>Please review the information you entered:</p>

    <div class="confirmation-details">
        <h3>Personal Information</h3>
        <div>
            <strong>Full Name:</strong>
            <asp:Label ID="lblFullName" runat="server" Text=""></asp:Label>
        </div>

        <div>
            <strong>Address:</strong>
            <asp:Label ID="lblAddress" runat="server" Text=""></asp:Label>
        </div>

        <div>
            <strong>Country:</strong>
            <asp:Label ID="lblCountry" runat="server" Text=""></asp:Label>
        </div>
    </div>

    <div class="confirmation-details">
        <h3>Account Setup</h3>
        <div>
            <strong>Username:</strong>
            <asp:Label ID="lblUsername" runat="server" Text=""></asp:Label>
        </div>
    </div>

    <asp:Button ID="btnPrevious"  style="margin: 45px 0 5px 5px;" CausesValidation="false" CssClass="btn btn-lg btn-info" runat="server" Text="Previous" OnClick="btnPrevious_Click"  />
    <asp:Button ID="btnSubmit" style="margin: 45px 0 5px 5px;" CssClass="btn btn-lg btn-success" runat="server" Text="Submit" OnClick="btnSubmit_Click"  />
</div>


</asp:Content>
