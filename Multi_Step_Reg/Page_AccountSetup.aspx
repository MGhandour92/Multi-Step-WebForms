<%@ Page Title="Multi Page - Account Setup" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" EnableViewState="true" CodeBehind="Page_AccountSetup.aspx.cs" Inherits="Multi_Step_Reg.Page_AccountSetup" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div id="pnlAccountSetup" class="step-panel">
        <h2>Account Setup - (Step 2 of 3)</h2>

        <div class="form-group">
            <label for="txtUsername">Username:</label>
            <asp:TextBox ID="txtUsername" runat="server" CssClass="form-control" placeholder="Username"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvUsername" runat="server" ControlToValidate="txtUsername" ErrorMessage="Username is required." Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="revUsername" runat="server" ControlToValidate="txtUsername"
                ValidationExpression="^(?=.*[A-Za-z0-9])[A-Za-z0-9]{6,}$"
                ErrorMessage="Username must be at least 6 characters long and contain only alphanumeric characters." Display="Dynamic" ForeColor="Red">
            </asp:RegularExpressionValidator>
        </div>
        <div class="form-group">
            <label for="txtPassword">Password:</label>
            <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control" placeholder="Password" TextMode="Password"></asp:TextBox>

            <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ControlToValidate="txtPassword" ErrorMessage="Password is required." Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="revPassword" runat="server" ControlToValidate="txtPassword"
                ErrorMessage="Password must be at least 8 characters long with a mix of letters, numbers, and special characters."
                ValidationExpression="^(?=.*[a-zA-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$"
                Display="Dynamic" ForeColor="Red"></asp:RegularExpressionValidator>

        </div>
        <div class="form-group">
            <label for="txtConfirmPassword">Confirm Password:</label>
            <asp:TextBox ID="txtConfirmPassword" runat="server" CssClass="form-control" placeholder="Confirm Password" TextMode="Password"></asp:TextBox>

            <asp:RequiredFieldValidator ID="rfvConfirmPassword" runat="server" ControlToValidate="txtConfirmPassword" ErrorMessage="Confirm Password is required." Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>

            <asp:CompareValidator ID="cvConfirmPassword" runat="server" ControlToValidate="txtConfirmPassword"
                ControlToCompare="txtPassword" ErrorMessage="Passwords do not match." Display="Dynamic" ForeColor="Red"></asp:CompareValidator>
        </div>


        <asp:Button ID="btnPrevious" style="margin: 45px 0 5px 5px;" CausesValidation="false" CssClass="btn btn-lg btn-info" runat="server" Text="Previous" OnClick="btnPrevious_Click" />
        <asp:Button ID="btnNext" style="margin: 45px 0 5px 5px;" CssClass="btn btn-lg btn-warning" runat="server" Text="Next" OnClick="btnNext_Click" />

    </div>

</asp:Content>
