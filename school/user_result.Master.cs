using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace school
{
    public partial class user_result : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Btn7_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/user/user_sevenresult.aspx");
        }

        protected void Btn6_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/user/user_sixresult.aspx");
        }

        protected void Btn8_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/user/user_eightresult.aspx");
        }

        protected void Btn9_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/user/user_nineresult.aspx");
        }
    }
}