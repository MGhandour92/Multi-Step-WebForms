<%@ Page Title="Wizard Form" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WizardForm.aspx.cs" Inherits="Multi_Step_Reg.WizardForm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Wizard ID="registrationWizard" runat="server" StepNextButtonType="Button" DisplaySideBar="false" OnActiveStepChanged="registrationWizard_ActiveStepChanged"
        OnFinishButtonClick="registrationWizard_FinishButtonClick" Width="100%" CssClass="step-panel"
        StartNextButtonStyle-CssClass="btn btn-lg btn-warning" StepNextButtonStyle-CssClass="btn btn-lg btn-warning"
        StepPreviousButtonStyle-CssClass="btn btn-lg btn-info" CellPadding="20" FinishPreviousButtonStyle-CssClass="btn btn-lg btn-info"
        NavigationStyle-HorizontalAlign="Left"
        FinishCompleteButtonStyle-CssClass="btn btn-lg btn-success">
        <WizardSteps>
            <asp:WizardStep ID="stepPersonalInfo" runat="server" Title="Personal Information">
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
            </asp:WizardStep>

            <asp:WizardStep ID="stepAccountSetup" runat="server" Title="Account Setup">
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
            </asp:WizardStep>

            <asp:WizardStep ID="stepConfirmation" runat="server" Title="Confirmation">
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
            </asp:WizardStep>
        </WizardSteps>
    </asp:Wizard>
</asp:Content>
