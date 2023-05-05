using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace school
{
    public partial class eight_admin : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("server=KOUMUDI-PC;Integrated Security=true;DataBase=project");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnInsert_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into eightres(rollnumber,name,section,telugu,hindi,english,maths,science,social,exam,total,createdon) values(@rollnumber,@name,@section,@telugu,@hindi,@english,@maths,@science,@social,@exam,@total,@createdon)", con);
            cmd.Parameters.AddWithValue("@section", DdSection.SelectedValue.ToString());

            cmd.Parameters.AddWithValue("@rollnumber", TbId.Text);
            cmd.Parameters.AddWithValue("@name", TbName.Text);
            cmd.Parameters.AddWithValue("@telugu", TextBox1.Text);
            cmd.Parameters.AddWithValue("@hindi", TextBox2.Text);
            cmd.Parameters.AddWithValue("@english", TextBox3.Text);
            cmd.Parameters.AddWithValue("@maths", TextBox4.Text);
            cmd.Parameters.AddWithValue("@science", TextBox5.Text);
            cmd.Parameters.AddWithValue("@social", TextBox7.Text);
            cmd.Parameters.AddWithValue("@total", TextBox8.Text);
            cmd.Parameters.AddWithValue("@exam", DdExam.SelectedValue.ToString());
            cmd.Parameters.AddWithValue("@createdon", DateTime.Now.ToString());
            cmd.ExecuteNonQuery();

            Response.Write("<script language = 'javascript' > alert('record inserted successfully') </ script >");
            clear();
            Response.Redirect("eight_admin.aspx");
            con.Close();


        }

        //protected void BtnCal_Click(object sender, EventArgs e)
        //{
        //    int a = Convert.ToInt16(TextBox1.Text);

        //    int b = Convert.ToInt16(TextBox2.Text);

        //    int c = Convert.ToInt16(TextBox3.Text);

        //    int d = Convert.ToInt16(TextBox4.Text);

        //    int g = Convert.ToInt16(TextBox5.Text);

        //    int f = Convert.ToInt16(TextBox7.Text);
        //    //  TextBox8.Text = (Convert.ToInt16(TextBox1.Text) + Convert.ToInt16(TextBox2.Text) + Convert.ToInt16(TextBox3.Text) + Convert.ToInt16(TextBox4.Text) + Convert.ToInt16(TextBox5.Text) + Convert.ToInt16(TextBox7.Text).ToString());
        //    int sum = a + b + c + d + g + f;
        //    TextBox8.Text = sum.ToString();
        //}
        private void clear()
        {
            DdSection.SelectedIndex = 0;
            TbId.Text = "";
            TbName.Text = "";
            DdExam.SelectedIndex = 0;

            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            TextBox7.Text = "";
            TextBox8.Text = "";
        }

    }
}