using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace school
{
    public partial class user_sixresult : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
          Session["rollnum"] = TextBox1.Text;
                Session["exam"] = DdExam.SelectedValue;
        
        }
        
        protected void BtnChart_Click(object sender, EventArgs e)
        {
           
                Response.Redirect("sixthlinechart1.aspx");
           
            
        }

        protected void BtnResult_Click(object sender, EventArgs e)
        {
            Response.Redirect("sixresults.aspx");
         }
    }
}