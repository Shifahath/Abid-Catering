using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AbidWebApplication1.AbidUsers
{
    public partial class abidCart : System.Web.UI.Page
    {
        string url;
        decimal grandTotal = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            
            string s2 = System.Web.HttpContext.Current.User.Identity.Name;
            userName.Text = s2;
            Response.Cookies["uname"].Value = s2;
            //string s3 = Request.Cookies["price"].Value;
            //Label1.Text = grandTotal.ToString();
            grandTotal = 0;
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
        {

        }

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {

            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                decimal rowTotal = Convert.ToDecimal(DataBinder.Eval(e.Row.DataItem, "price"));
                grandTotal = grandTotal + rowTotal;


            }
            Response.Cookies["price"].Value = grandTotal.ToString();
            TextBox2.Text = grandTotal.ToString();
            HyperLink1.ImageUrl = "~/img/checkout.jpg";
            HyperLink1.NavigateUrl = "https://www.paypal.com/uk/cgi-bin/webscr?cmd=_flow&SESSION=-7wo67cmT-KrMEPOTaWs1JYuTK1HyABHBvbjqgFwVKGtM3AtYzkkOJj37IO&dispatch=50a222a57771920b6a3d7b606239e4d529b525e0b7e69bf0224adecfb0124e9b61f737ba21b08198ecd47ed44bac94cd6fd721232afa4155" + "&item_name=Total of Cart&item_number=132&amount=" + grandTotal;
        }



        protected void GridView1_RowDeleted(object sender, GridViewDeletedEventArgs e)
        {
            Response.Redirect("abidCart.aspx");
        }
        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        {

            Response.Redirect("https://www.paypal.com/uk/cgi-bin/webscr?cmd=_flow&SESSION=-7wo67cmT-KrMEPOTaWs1JYuTK1HyABHBvbjqgFwVKGtM3AtYzkkOJj37IO&dispatch=50a222a57771920b6a3d7b606239e4d529b525e0b7e69bf0224adecfb0124e9b61f737ba21b08198ecd47ed44bac94cd6fd721232afa4155");
        }
    }
}