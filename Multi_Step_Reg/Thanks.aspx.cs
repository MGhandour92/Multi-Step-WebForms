using Multi_Step_Reg.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Multi_Step_Reg
{
	public partial class Thanks : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{
			var userData2 = Session["ThanksName"];

			//Populate Data
			if (userData2 != null)
			{
				lblFullName.Text = userData2.ToString();
			}
		}
	}
}