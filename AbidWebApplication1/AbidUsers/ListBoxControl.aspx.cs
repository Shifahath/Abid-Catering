using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AbidWebApplication1.AbidUsers
{
    public partial class ListBoxControl : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                

            }
            
        }
  

        protected void CheckBoxList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            
            ListBox1.Items.Clear();
            foreach (ListItem li in CheckBoxList1.Items)
            {
                if (li.Selected)
                {

                    ListBox1.Items.Add(li + li.Value);

                    //getting total
                    Label2.Text= li.Value;
                    

                }
            }
        }

      
    }
}