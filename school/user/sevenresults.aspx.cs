using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using iTextSharp.text;
using iTextSharp.text.pdf;
using iTextSharp.text.html.simpleparser;
using System.IO;
using System;

namespace school
{
    public partial class sevenresults : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("server=KOUMUDI-PC;Integrated Security=true;DataBase=project");
        protected void Page_Load(object sender, EventArgs e)
        {
            Lblrollnumber.Text = Session["rollnum"] as String;
            LblExam.Text = Session["exam"] as string;

            if (!IsPostBack)
            {
                bindData();
            }

        }
        public void bindData()
        {
            //sqlconnection con = new sqlconnection("server=koumudi-pc;integrated security=true;database=project");
            DataTable dt = new DataTable();
            con.Open();
            SqlDataReader myreader = null;
            SqlCommand cmd = new SqlCommand("select * from sevenres where rollnumber='" + Lblrollnumber.Text + "' or name='" + Lblrollnumber.Text + "' and exam='" + LblExam.Text + "'", con);
            myreader = cmd.ExecuteReader();
            while (myreader.Read())
            {
                Lblnam.Text = (myreader["name"].ToString());
                Lblsec.Text = (myreader["section"].ToString());
                Label1.Text = (myreader["telugu"].ToString());
                Label2.Text = (myreader["hindi"].ToString());
                Label3.Text = (myreader["english"].ToString());
                Label4.Text = (myreader["maths"].ToString());
                Label5.Text = (myreader["science"].ToString());
                Label6.Text = (myreader["social"].ToString());
                Label7.Text = (myreader["total"].ToString());
            }

            con.Close();
        }

    }
}