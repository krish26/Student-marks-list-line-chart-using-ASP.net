using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace school
{
    public partial class newpswd : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("server=KOUMUDI-PC;Integrated Security=true;DataBase=project");
        protected void Page_Load(object sender, EventArgs e)
        {
            Label4.Text = Session["name"] as string;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("update logindetails set password='" + TextBox1.Text + "' where uid=@name" ,con);
            cmd.Parameters.AddWithValue("name", Label4.Text);
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("index.aspx");
        }
    }
}