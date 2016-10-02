using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AbidWebApplication1.AbidUsers
{
    public partial class MyAccount : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (User.Identity.IsAuthenticated)
            {
                string username = User.Identity.Name;
                userName.Text = username;
                LabelUser.Text = username;
                Session["UserName"] = username;
            }

        }

        protected void ButtonCart_Click(object sender, EventArgs e)
        {
            Response.Redirect("abidCart.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("abidResetPassword.aspx");
        }

        
    }
}