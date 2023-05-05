using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace school
{
    public partial class register : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("server=KOUMUDI-PC;Integrated Security=true;DataBase=project");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into logindetails(usertype,name,uid,password,mobilenumber,question,answer,usercreation) values(@usertype,@name,@uid,@password,@mobilenumber,@question,@answer,@usercreation)", con);
            cmd.Parameters.AddWithValue("@usertype", DropDownList2.SelectedValue.ToString());

            cmd.Parameters.AddWithValue("@name", TxtBoxName.Text);
            cmd.Parameters.AddWithValue("@uid", TxtBoxId.Text);
            cmd.Parameters.AddWithValue("@password", TxtBoxPs.Text);
            cmd.Parameters.AddWithValue("@mobilenumber", TxtBoxNum.Text);
            cmd.Parameters.AddWithValue("@question", DropDownList1.SelectedValue.ToString());
            cmd.Parameters.AddWithValue("@answer",TextBoxAns.Text);
            cmd.Parameters.AddWithValue("@usercreation",DateTime.Now.ToString());

            cmd.ExecuteNonQuery();
            con.Close();
            Response.Write("registered successfully");
            Response.Redirect("index.aspx");
        }
    }
}