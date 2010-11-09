using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication8
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void CreateUserWizard1_CreatedUser(object sender, EventArgs e)
        {

        }

        protected void CreateUserWizard1_ContinueButtonClick(object sender, EventArgs e)
        {
            WebProfile.Current.FirstName = txtFirstName.Text;
            WebProfile.Current.MidleName = txtMiddleName.Text;
            WebProfile.Current.LastName = txtLastName.Text;
            WebProfile.Current.Save();
        }

        protected void CreateUserWizard1_FinishButtonClick(object sender, WizardNavigationEventArgs e)
        {

        }

        protected void CreateUserWizard1_FinishButtonClick1(object sender, WizardNavigationEventArgs e)
        {

        }
    }
}