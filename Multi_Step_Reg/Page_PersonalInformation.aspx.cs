using Multi_Step_Reg.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Multi_Step_Reg
{
	public partial class Page_PersonalInformation : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{
			var clearDataFlag =Request.QueryString["cleardata"];
			//if not coming from previous step
			if (!IsPostBack && clearDataFlag is null)
			{
				//Clear all sessions
				Session["PersonalInfoData"] = null;
				Session["AccountSetupData"] = null;
			}

			// Retrieve Data from Session
			var userData = Session["PersonalInfoData"] as PersonalInfoModel;

			//Populate Data
			if (userData != null)
			{
				txtFullName.Text = userData.FullName;
				txtAddress.Text = userData.Address;
				ddlCountry.SelectedValue = userData.Country;
			}
		}

		protected void btnNext_Click(object sender, EventArgs e)
		{
			var Data = new PersonalInfoModel
			{
				FullName = txtFullName.Text.Trim(),
				Address = txtAddress.Text.Trim(),
				Country = ddlCountry.SelectedValue
			};

			// Store in session variable
			Session["PersonalInfoData"] = Data;

			Response.Redirect("Page_AccountSetup.aspx");
		}
	}
}