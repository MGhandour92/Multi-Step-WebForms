<%@ Page Title="Multi Form - Personal Information" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" EnableViewState="true" CodeBehind="Page_PersonalInformation.aspx.cs" Inherits="Multi_Step_Reg.Page_PersonalInformation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div id="pnlPersonalInfo" class="step-panel">
        <h2>Personal Information - (Step 1 of 3)</h2>
        <div class="form-group">
            <label for="txtFullName">Full Name:</label>
            <asp:TextBox ID="txtFullName" runat="server" CssClass="form-control" placeholder="Full Name"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvFullName" runat="server" ControlToValidate="txtFullName" ErrorMessage="Full Name is required." Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="regexFullName" runat="server" ControlToValidate="txtFullName"
                ValidationExpression="^(?:\S+\s+){1,}\S+$"
                ErrorMessage="Please enter at least two words for the Full Name." ForeColor="Red"
                Display="Dynamic" EnableClientScript="true" />
        </div>
        <div class="form-group">
            <label for="txtAddress">Address:</label>
            <asp:TextBox ID="txtAddress" runat="server" CssClass="form-control" placeholder="Address"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvAddress" runat="server" ControlToValidate="txtAddress" ErrorMessage="Address is required." Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="revAddress" runat="server" ControlToValidate="txtAddress"
                ValidationExpression="^.{10,}$" ErrorMessage="Please enter at least 10 characters." Display="Dynamic" ForeColor="Red">
            </asp:RegularExpressionValidator>
        </div>
        <div class="form-group">
            <label for="ddlCountry">Country:</label>
            <asp:DropDownList ID="ddlCountry" runat="server" CssClass="form-control">
                <asp:ListItem Text="USA" Value="USA" />
                <asp:ListItem Text="Canada" Value="Canada" />
                <asp:ListItem Text="UK" Value="UK" />
            </asp:DropDownList>
        </div>

        <asp:Button ID="btnNext" style="margin: 45px 0 5px 5px;" CssClass="btn btn-lg btn-warning navigation-btns" runat="server" Text="Next" OnClick="btnNext_Click" />
    </div>
</asp:Content>
