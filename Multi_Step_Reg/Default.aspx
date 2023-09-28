<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Multi_Step_Reg._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <main>
        <section class="row" aria-labelledby="aspnetTitle">
            <h1 id="aspnetTitle">Welcome to Multi Step Registeration App Forms</h1>
            <p class="lead">I have built the form with multiple approaches, you can find simple description and a button to Navigate you to the desired approach</p>
        </section>

        <div class="row">
            <section class="col-md-4" aria-labelledby="gettingStartedTitle">
                <h2 class="text-primary">Multi-Page</h2>
                <p>
                    At this approach I have created separate ASPX page for each step of the registration process and used server-side to handle navigation.
                <p>
                    <a href="Page_PersonalInformation.aspx" class="btn btn-primary btn-md">Start &raquo;</a>
                </p>
            </section>
            <section class="col-md-4" aria-labelledby="librariesTitle">
                <h2 class="text-success">Wizard Control</h2>
                <p>
                    At this approach I have used the Wizard control added to the page and defined steps using WizardStep controls.
                </p>
                <p>
                    <a href="WizardForm.aspx" class="btn btn-success btn-md">Start &raquo;</a>
                </p>
            </section>
            <section class="col-md-4" aria-labelledby="hostingTitle">
                <h2 class="text-danger">AJAX</h2>
                <p>
                    At this approach I have used AJAX and UpdatePanels, and that allowed me to load form sections asynchronously without causing a full-page postback.
                </p>
                <p>
                    <a href="AJAXForm.aspx" class="btn btn-danger btn-md">Start &raquo;</a>
                </p>
            </section>
        </div>
    </main>

</asp:Content>
