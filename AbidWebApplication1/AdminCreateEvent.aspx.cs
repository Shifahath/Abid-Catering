using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Collections.Generic;

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

namespace AbidWebApplication1
{
    public partial class AdminCreateEvent : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        

        protected void Button1_Click(object sender, EventArgs e)
        {
            // If the Page has no validation errors
            if (Page.IsValid)
            {
                if (FileUpload1.HasFile)
                {
                    string fileName = Path.GetFileName(FileUpload1.PostedFile.FileName);
                    FileUpload1.PostedFile.SaveAs(Server.MapPath("~/img/events/") + fileName);
                    //Response.Redirect(Request.Url.AbsoluteUri);
                }


            }



            // Read the connection string from web.config.
            // ConfigurationManager class is in System.Configuration namespace
            string CS = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
            // SqlConnection is in System.Data.SqlClient namespace
            using (SqlConnection con = new SqlConnection(CS))
            {
                SqlCommand cmd1 = new SqlCommand("spCreateEvent", con);
                cmd1.CommandType = CommandType.StoredProcedure;

                SqlParameter eventName = new SqlParameter("@eName", TextBoxEN.Text);

                string fileName = Path.GetFileName(FileUpload1.PostedFile.FileName);

                SqlParameter imageFile = new SqlParameter("@eImage", fileName);

                SqlParameter eventDiscription = new SqlParameter("@eDescription", TextBoxEventDescription.Text);

                cmd1.Parameters.Add(eventName);
                cmd1.Parameters.Add(imageFile);
                cmd1.Parameters.Add(eventDiscription);

                con.Open();
                int ReturnCode = (int)cmd1.ExecuteScalar();
                if (ReturnCode == -1)
                {
                    MessageLabel.Text = "Event already in use, please choose another";
                }
                else
                {
                    MessageLabel.Text = "Event Created Successful!!";
                    MessageLabel.ForeColor = System.Drawing.Color.DarkCyan;

                }
            }

        }
    }
}