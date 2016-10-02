using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AbidWebApplication1.AbidUsers
{
    public partial class WelcomeUsers : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (User.Identity.IsAuthenticated)
            {
                string username = User.Identity.Name;
                userName.Text = username;
            }

        }
    }
}