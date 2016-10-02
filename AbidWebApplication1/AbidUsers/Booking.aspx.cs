using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Web.Security;
using System.Data;
using System.Net;
using System.Net.Mail;
using System.IO;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Web.Security;
using System.Drawing;

namespace AbidWebApplication1.AbidUsers
{
    public partial class Booking : System.Web.UI.Page
    {
        protected void Calendar1_DayRender(object sender, DayRenderEventArgs e)
        {
            if (e.Day.Date.CompareTo(DateTime.Today) < 0)
            {
                e.Day.IsSelectable = false;
            }
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            Calendar1.SelectedDate = DateTime.Today;
            if (User.Identity.IsAuthenticated)
            {
                string username = User.Identity.Name;
                userName.Text = username;
            }

            if (!IsPostBack)
            {
                
                string CS = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
                using (SqlConnection con = new SqlConnection(CS))
                {
                    //for event dropdown
                    SqlCommand cmd = new SqlCommand("Select eId, eName from tblEvents", con);
                    con.Open();
                    SqlDataReader rdr = cmd.ExecuteReader();
                    DropDownListEvents.DataTextField = "eName";
                    DropDownListEvents.DataValueField = "eId";
                    DropDownListEvents.DataSource = rdr;
                    DropDownListEvents.DataBind();
                }
                using (SqlConnection con2 = new SqlConnection(CS))
                {
                    //for venue dropdown
                    SqlCommand cmd2 = new SqlCommand("Select vId, vName, vLocation, vImage, vDescription, vCapacity from tblVenues", con2);
                    con2.Open();
                    SqlDataReader rdr2 = cmd2.ExecuteReader();
                    DropDownListVenue.DataTextField = "vName";
                    DropDownListVenue.DataValueField = "vId";
                    DropDownListVenue.DataSource = rdr2;
                    DropDownListVenue.DataBind();
                }
            }

        }

        

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
           TextBoxDate.Text= Calendar1.SelectedDate.ToShortDateString();
           
        }

        protected void ButtonNextPage_Click(object sender, EventArgs e)
        {
            Response.Redirect("../AbidUsers/ChooseMenu.aspx?Eid=" + Server.UrlEncode(DropDownListEvents.Text)
                                             + "&FI=" + Server.UrlEncode(TextBoxFI.Text)
                                             + "&NG=" + Server.UrlEncode(TextBoxG.Text)
                                             + "&Vid=" + Server.UrlEncode(DropDownListVenue.Text)
                                             + "&ED=" + Server.UrlEncode(TextBoxDate.Text)
                                             + "&UN=" + Server.UrlEncode(userName.Text)
                                             );
        }

        

        

        
    }
}