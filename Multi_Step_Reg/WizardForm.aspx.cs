using Multi_Step_Reg.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Multi_Step_Reg
{
	public partial class WizardForm : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{

		}

		protected void registrationWizard_ActiveStepChanged(object sender, EventArgs e)
		{
			if (registrationWizard.ActiveStep == stepConfirmation)
			{
				// Display a summary of entered information
				lblFullName.Text = txtFullName.Text;
				lblAddress.Text = txtAddress.Text;
				lblCountry.Text = ddlCountry.SelectedValue;
				lblUsername.Text = txtUsername.Text;
			}
		}
		protected void registrationWizard_FinishButtonClick(object sender, WizardNavigationEventArgs e)
		{
			// Store in session variable
			Session["ThanksName"] = txtFullName.Text.Trim();

			Response.Redirect("Thanks.aspx");
		}
	}
}