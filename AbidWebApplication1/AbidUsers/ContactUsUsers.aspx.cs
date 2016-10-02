using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Net;
using System.Net.Mail;
using System.IO;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Web.Security;

namespace AbidWebApplication1.AbidUsers
{
    public partial class ContactUsUsers : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (User.Identity.IsAuthenticated)
            {
                string username = User.Identity.Name;
                userName.Text = username;
            }

        }

        protected void btnSendMsg_Click(object sender, EventArgs e)
        {
            string Email = TextBoxEM.Text;
            String message = "\nInquiry: \n " + TextBoxMsg.Text + "\n\nFrom: " + Email + " ";
            String message2 = "Thank you for the inquiry. We will get back to you within 3 working days.\n\n\nYours Abid Catering\n\nU.K.";
            String customerEmail = TextBoxEM.Text;

            try
            {

                MailMessage msg = new MailMessage();
                msg.From = new MailAddress("abidcaterings@gmail.com");
                msg.To.Add("abidcaterings@gmail.com");
                msg.Subject = "Customer's Inquiry. Please reply.";
                msg.Body = message;
                SmtpClient sc = new SmtpClient("smtp.gmail.com");
                sc.Port = 25;
                sc.Credentials = new NetworkCredential("abidcaterings@gmail.com", "abidcaterings1234");
                sc.EnableSsl = true;
                sc.Send(msg);
                MessageLabel.Text = "Mail send, Thank you for the inquiry. We will get back to you within 3 working days";
                MessageLabel.ForeColor = System.Drawing.Color.DarkCyan;


                MailMessage msg2 = new MailMessage();
                msg2.From = new MailAddress("abidcaterings@gmail.com");
                msg2.To.Add(customerEmail);
                msg2.Subject = "Thank you for the inquiry";
                msg2.Body = message2;
                SmtpClient sc1 = new SmtpClient("smtp.gmail.com");
                sc1.Port = 25;
                sc1.Credentials = new NetworkCredential("abidcaterings@gmail.com", "abidcaterings1234");
                sc1.EnableSsl = true;
                sc1.Send(msg2);

                //MessageLabel.Text = "Mail send, please check your inbox";
                //MessageLabel.ForeColor = System.Drawing.Color.DarkCyan;
            }//End try

            catch
            {
                //MessageLabel.Text = "Server authentication is failed, please check your email";
                //MessageLabel.ForeColor = System.Drawing.Color.Red;
            }
        }
    }
}