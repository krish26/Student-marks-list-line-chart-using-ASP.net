using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace school
{
    public partial class user_sevenresult : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["rollnum"] = TextBox1.Text;
            Session["exam"] = Ddexam.SelectedValue;
        }

        protected void BtnChart_Click(object sender, EventArgs e)
        {
            Response.Redirect("seventhlinechart.aspx");
        }

        protected void BtnResult_Click(object sender, EventArgs e)
        {
            Response.Redirect("sevenresults.aspx");
        }
    }
}