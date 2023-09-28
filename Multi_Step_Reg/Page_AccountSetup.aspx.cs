using Multi_Step_Reg.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Multi_Step_Reg
{
	public partial class Page_AccountSetup : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{
			//don't lose if hitted
			if (IsPostBack)
			{
				SaveData();
			}

			// Retrieve Data from Session
			var userData = Session["AccountSetupData"] as AccountSetupModel;

			//Populate Data
			if (userData != null)
			{
				txtUsername.Text = userData.Username;
			}
		}

		protected void btnPrevious_Click(object sender, EventArgs e)
		{
			SaveData();
			Response.Redirect("Page_PersonalInformation.aspx?cleardata=false");
		}

		protected void btnNext_Click(object sender, EventArgs e)
		{
			SaveData();
			Response.Redirect("Page_Confirm.aspx");
		}

		private void SaveData()
		{
			var Data = new AccountSetupModel
			{
				Username = txtUsername.Text.Trim(),
			};

			// Store in session variable
			Session["AccountSetupData"] = Data;
		}
	}
}