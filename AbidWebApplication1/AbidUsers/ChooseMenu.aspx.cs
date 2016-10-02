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

namespace AbidWebApplication1.AbidUsers
{
    public partial class ChooseMenu : System.Web.UI.Page
    {
        int VenuePriceRate = 2;  //per 1capacity
        String VenueName;

        protected void Page_Load(object sender, EventArgs e)
        {
            
            userName.Text = Request.QueryString["UN"]; ;
            

            // Read the QueryString values 
            eventId.Text = Request.QueryString["Eid"];
            furtherInfo.Text = Request.QueryString["FI"];

            noOfGuests.Text = Request.QueryString["NG"];
            venueId.Text = Request.QueryString["Vid"];
            eventDate.Text = Request.QueryString["ED"];

            //VenuePriceRate = VenuePriceRate * Convert.ToInt32(noOfGuests.Text);
            //LabelVprice.Text = "£ " + VenuePriceRate.ToString();

            //VenuePriceRate = 0;

            Label2.Text = "0";

            string CS = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
            using (SqlConnection con = new SqlConnection(CS))
            {
                //for event dropdown
                SqlCommand cmd = new SqlCommand("select [vCapacity] from tblVenues WHERE [vId] = '" + venueId.Text + "'  ", con);
                con.Open();
                SqlDataReader rdr = cmd.ExecuteReader();
                if (rdr.Read())
                {
                    String vcap;
                    vcap = rdr.GetValue(0).ToString();

                    LabelVcapacity.Text = vcap + "guests";
                    VenuePriceRate = VenuePriceRate * Convert.ToInt32(vcap);
                    LabelVprice.Text = "£ " + VenuePriceRate;


                    rdr.Close();

                }

                else
                {
                    rdr.Close();
                  

                }
                
            }

            //to get venue name

            
            string CSS = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
            using (SqlConnection con = new SqlConnection(CSS))
            {
                //for event dropdown
                SqlCommand cmd = new SqlCommand("select [vName] from tblVenues WHERE [vId] = '" + venueId.Text + "'  ", con);
                con.Open();
                SqlDataReader rdr = cmd.ExecuteReader();
                if (rdr.Read())
                {
                    
                    VenueName = rdr.GetValue(0).ToString();

                    rdr.Close();
                }

                else
                {
                    rdr.Close();
                }
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
        //    // Read the connection string from web.config.
        //    // ConfigurationManager class is in System.Configuration namespace
        //    string CS = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
        //    // SqlConnection is in System.Data.SqlClient namespace
        //    using (SqlConnection con = new SqlConnection(CS))
        //    {
        //        SqlCommand cmd1 = new SqlCommand("spAddBookings", con);
        //        cmd1.CommandType = CommandType.StoredProcedure;
        //        //booking date???
        //        String test = DateTime.Now.ToString("dd.MM.yyy");
        //        SqlParameter bookingD = new SqlParameter("@bDate", test);

        //        SqlParameter eventD = new SqlParameter("@eDate", eventDate.Text);
        //        //userID???
        //        //SqlParameter uId = new SqlParameter("@Id", userid);
        //        SqlParameter eID = new SqlParameter("@eId", eventId.Text);
        //        SqlParameter vID = new SqlParameter("@vId", venueId.Text);
        //        SqlParameter fI = new SqlParameter("@furtherInfo", furtherInfo.Text);

        //        cmd1.Parameters.Add(bookingD);
        //        cmd1.Parameters.Add(eventD);
        //        //cmd1.Parameters.Add(userID);
        //        cmd1.Parameters.Add(eID);
        //        cmd1.Parameters.Add(vID);
        //        cmd1.Parameters.Add(fI);

        //        con.Open();
        //        int ReturnCode = (int)cmd1.ExecuteScalar();
        //        if (ReturnCode == -1)
        //        {
        //            MessageLabel.Text = "Event already in use, please choose another";
        //        }
        //        else
        //        {


        //        }
        //    }

        }



        protected void Button1_Click1(object sender, EventArgs e)
        {
            string CS = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
            using (SqlConnection con = new SqlConnection(CS))
            {
                //for event dropdown
                SqlCommand cmd = new SqlCommand("select [Id] from tblUsers WHERE [UserName] = '" + userName.Text + "'  ", con);
                con.Open();
                SqlDataReader rdr = cmd.ExecuteReader();
                if (rdr.Read())
                {
                    String userid;
                    userid = rdr.GetValue(0).ToString();
                    int uid;
                    uid = Convert.ToInt32(userid);

                    Label4.Text = uid.ToString();

                    rdr.Close();
                }

                else
                {
                    rdr.Close();
                }

            }

            using (SqlConnection con = new SqlConnection(CS))
            {
                SqlCommand cmd1 = new SqlCommand("spAddBookings", con);
                cmd1.CommandType = CommandType.StoredProcedure;
                //booking date???
                String test = DateTime.Now.ToString("dd.MM.yyy");
                SqlParameter bookingD = new SqlParameter("@bDate", test);

                SqlParameter eventD = new SqlParameter("@eDate", eventDate.Text);
                //userID???
                SqlParameter uId = new SqlParameter("@Id", Label4.Text);
                SqlParameter eID = new SqlParameter("@eId", eventId.Text);
                SqlParameter vID = new SqlParameter("@vId", venueId.Text);
                SqlParameter fI = new SqlParameter("@furtherInfo", furtherInfo.Text);

                cmd1.Parameters.Add(bookingD);
                cmd1.Parameters.Add(eventD);
                cmd1.Parameters.Add(uId);
                cmd1.Parameters.Add(eID);
                cmd1.Parameters.Add(vID);
                cmd1.Parameters.Add(fI);

                con.Open();
                int ReturnCode = (int)cmd1.ExecuteScalar();
                if (ReturnCode == -1)
                {
                    MessageLabel.Text = "Event already booked, please choose another";
                    MessageLabel.ForeColor = System.Drawing.Color.Red;
                }
                else
                {
                    MessageLabel.Text = "Event booked Successfully, Please confirm your food basket";
                    

                    Label4.Text = "0";
                }
            }

            // Read the connection string from web.config.
            // ConfigurationManager class is in System.Configuration namespace
            //string CS = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
            // SqlConnection is in System.Data.SqlClient namespace
            using (SqlConnection con2 = new SqlConnection(CS))
            {
                SqlCommand cmd2 = new SqlCommand("spAddToAbidCart", con2);
                cmd2.CommandType = CommandType.StoredProcedure;

                SqlParameter uName = new SqlParameter("@uName", userName.Text);
                SqlParameter pName = new SqlParameter("@pName", VenueName);

                SqlParameter eDate = new SqlParameter("@eDate", eventDate.Text);
                SqlParameter guests = new SqlParameter("@guests", noOfGuests.Text);
                SqlParameter price = new SqlParameter("@price", VenuePriceRate);

                cmd2.Parameters.Add(uName);
                cmd2.Parameters.Add(pName);
                cmd2.Parameters.Add(eDate);
                cmd2.Parameters.Add(guests);
                cmd2.Parameters.Add(price);

                Int32 rowsAffected;

                con2.Open();
                //int ReturnCode = (int)cmd1.ExecuteScalar();

                rowsAffected = cmd2.ExecuteNonQuery();


            }
            

        }

        protected void CheckBoxList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            float foodCost = 0, totalFoodCost = 0;
            ListBox1.Items.Clear();
            foreach (ListItem li in CheckBoxList1.Items)
            {

                if (li.Selected)
                {

                    ListBox1.Items.Add(li);

                    //getting total
                    foodCost = foodCost + float.Parse(li.Value);
                    Label2.Text = foodCost.ToString();

                    //Label4.Text = (foodCost * float.Parse(noOfGuests.Text)).ToString();
                }
                
            }
            totalFoodCost = float.Parse(noOfGuests.Text) * foodCost;
            Label4.Text = totalFoodCost.ToString();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            // Read the connection string from web.config.
            // ConfigurationManager class is in System.Configuration namespace
            string CS = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
            // SqlConnection is in System.Data.SqlClient namespace
            using (SqlConnection con = new SqlConnection(CS))
            {
                SqlCommand cmd1 = new SqlCommand("spAddToAbidCart", con);
                cmd1.CommandType = CommandType.StoredProcedure;

                SqlParameter uName = new SqlParameter("@uName", userName.Text);
                SqlParameter pName = new SqlParameter("@pName", "Food Menus");

                SqlParameter eDate = new SqlParameter("@eDate", eventDate.Text);
                SqlParameter guests = new SqlParameter("@guests", noOfGuests.Text);
                SqlParameter price = new SqlParameter("@price", Label4.Text);

                cmd1.Parameters.Add(uName);
                cmd1.Parameters.Add(pName);
                cmd1.Parameters.Add(eDate);
                cmd1.Parameters.Add(guests);
                cmd1.Parameters.Add(price);

                Int32 rowsAffected;

                con.Open();
                //int ReturnCode = (int)cmd1.ExecuteScalar();
                
                rowsAffected = cmd1.ExecuteNonQuery();

                
            }
            Response.Redirect("abidCart.aspx");
        }

        








    }
}