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

namespace AbidWebApplication1.Admin
{
    public partial class CreateVenues : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public void clearContent()
        {
            TextBoxVN.Text = "";
            TextBoxVL.Text = "";
            TextBoxVenueDescription.Text = "";
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            // If the Page has no validation errors
            if (Page.IsValid)
            {
                if (FileUpload1.HasFile)
                {
                    string fileName = Path.GetFileName(FileUpload1.PostedFile.FileName);
                    FileUpload1.PostedFile.SaveAs(Server.MapPath("~/img/venues/") + fileName);
                    //Response.Redirect(Request.Url.AbsoluteUri);
                }


            }



            // Read the connection string from web.config.
            // ConfigurationManager class is in System.Configuration namespace
            string CS = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
            // SqlConnection is in System.Data.SqlClient namespace
            using (SqlConnection con = new SqlConnection(CS))
            {
                SqlCommand cmd1 = new SqlCommand("spCreateVenue", con);
                cmd1.CommandType = CommandType.StoredProcedure;

                SqlParameter venueName = new SqlParameter("@vName", TextBoxVN.Text);
                SqlParameter venueLocation = new SqlParameter("@vLocation", TextBoxVL.Text);

                string fileName = "~/img/venues/" + Path.GetFileName(FileUpload1.PostedFile.FileName);
                SqlParameter imageFile = new SqlParameter("@vImage", fileName);

                SqlParameter venueDescription = new SqlParameter("@vDescription", TextBoxVenueDescription.Text);
                SqlParameter venueCapacity = new SqlParameter("@vCapacity", TextBoxVC.Text);

                cmd1.Parameters.Add(venueName);
                cmd1.Parameters.Add(venueLocation);
                cmd1.Parameters.Add(imageFile);
                cmd1.Parameters.Add(venueDescription);
                cmd1.Parameters.Add(venueCapacity);

                con.Open();
                int ReturnCode = (int)cmd1.ExecuteScalar();
                if (ReturnCode == -1)
                {
                    MessageLabel.Text = "Venue already in use, please choose another";
                }
                else
                {
                    MessageLabel.Text = "Venue Created Successful!!";
                    MessageLabel.ForeColor = System.Drawing.Color.DarkCyan;
                    clearContent();

                }
            }

        }
    }
}