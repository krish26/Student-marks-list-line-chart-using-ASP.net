using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace school
{
    public partial class usertype : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            string s1 = "";
            s1 = DropDownList1.SelectedItem.Text;
            if (s1=="Admin")
            {
                Response.Redirect("~/Admin/index.aspx");
            }
            else
            {
                Response.Redirect("../result_home.aspx");
            }
           
           
           

        }
    }
}