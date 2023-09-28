using Multi_Step_Reg.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Multi_Step_Reg
{
	public partial class AJAXForm : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{
			if (!IsPostBack)
			{
				// Initialize the form by showing the first step
				ShowStep(1);
			}
		}

		private void ShowStep(int step)
		{
			// Hide all steps
			step1.Visible = false;
			step2.Visible = false;
			step3.Visible = false;

			// Show the specified step
			if (step == 1)
			{
				step1.Visible = true;
			}
			else if (step == 2)
			{
				step2.Visible = true;
			}
			else if (step == 3)
			{
				step3.Visible = true;
				// Display a summary of entered information
				lblFullName.Text = txtFullName.Text;
				lblAddress.Text = txtAddress.Text;
				lblCountry.Text = ddlCountry.SelectedValue;
				lblUsername.Text = txtUsername.Text;
			}
		}

		protected void btnNext1_Click(object sender, EventArgs e)
		{
			// Move to Step 2
			ShowStep(2);
		}

		protected void btnPrevious2_Click(object sender, EventArgs e)
		{
			// Move back to Step 1
			ShowStep(1);
		}

		protected void btnNext2_Click(object sender, EventArgs e)
		{
			// Move to Step 3
			ShowStep(3);
		}

		protected void btnPrevious3_Click(object sender, EventArgs e)
		{
			// Move back to Step 2
			ShowStep(2);
		}

		protected void btnSubmit_Click(object sender, EventArgs e)
		{
			// Store in session variable
			Session["ThanksName"] = txtFullName.Text.Trim();

			Response.Redirect("Thanks.aspx");
		}
	}
}