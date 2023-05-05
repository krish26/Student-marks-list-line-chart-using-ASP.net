using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace school
{
    public partial class index : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("server=KOUMUDI-PC;Integrated Security=true;DataBase=project");
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["name"] = txtuname.Text;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string user = txtuname.Text;
            string pass = txtpwd.Text;

            con.Open();
            SqlCommand cmd = new SqlCommand("insert into log(username,loggedon) values(@username,@loggedon)", con);
            cmd.Parameters.AddWithValue("username", txtuname.Text);
            cmd.Parameters.AddWithValue("@loggedon", DateTime.Now.ToString());
            cmd.ExecuteNonQuery();
            SqlCommand cmd1 = new SqlCommand("select uid,password from logindetails where uid= @user and password=@pass", con);
            cmd1.Parameters.AddWithValue("user", user);
            cmd1.Parameters.AddWithValue("pass", pass);


          //  SqlDataReader sdr = cmd1.ExecuteReader();

            SqlDataAdapter da = new SqlDataAdapter(cmd1);
            DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count>0)

            {
                Response.Redirect("admin.aspx");
            }
            else
            {
                Response.Write("<script language='javascript'>alert('invalid details')</script>");
            }
           
            con.Close();
        }
    }
}