using Multi_Step_Reg.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Multi_Step_Reg
{
	public partial class Page_Confirm : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{
			// Retrieve Data from Session
			var userData1 = Session["AccountSetupData"] as AccountSetupModel;
			var userData2 = Session["PersonalInfoData"] as PersonalInfoModel;

			//Populate Data
			if (userData1 != null && userData2 != null)
			{
				lblFullName.Text = userData2.FullName;
				lblAddress.Text = userData2.Address;
				lblCountry.Text = userData2.Country;
				lblUsername.Text = userData1.Username;
			}
		}

		protected void btnPrevious_Click(object sender, EventArgs e)
		{
			Response.Redirect("Page_AccountSetup.aspx");
		}

		protected void btnSubmit_Click(object sender, EventArgs e)
		{
			//Clear all sessions
			Session["PersonalInfoData"] = null;
			Session["AccountSetupData"] = null;     
			
			// Store in session variable
			Session["ThanksName"] = lblFullName.Text; 
			
			Response.Redirect("Thanks.aspx");
		}
	}
}