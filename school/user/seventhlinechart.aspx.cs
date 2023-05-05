using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace school
{
    public partial class seventhlinechart : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            txtline.Text = Session["rollnum"] as string;
            Txtexam.Text = Session["exam"] as string;

            if (!IsPostBack)
            {
                Bindchart();

            }
        }
        private void Bindchart()
        {
            decimal[] marks = new decimal[6];
            decimal[] marks1 = new decimal[6];
            decimal[] marks2 = new decimal[6];
            string[] subject = new string[6];
            SqlConnection con = new SqlConnection("server=KOUMUDI-PC;Integrated Security=true;DataBase=project");
            con.Open();
            if (Txtexam.Text == "mid1")
            {
                SqlCommand cmd1 = new SqlCommand("select * from sevenres where rollnumber=@rollnum and exam='mid1'", con);
                cmd1.Parameters.AddWithValue("rollnum", txtline.Text);
                SqlDataAdapter da = new SqlDataAdapter();
                da.SelectCommand = cmd1;
                DataSet ds = new DataSet();
                da.Fill(ds);
                if (ds.Tables[0].Rows.Count > 0)
                {
                    marks[0] = Convert.ToInt16(ds.Tables[0].Rows[0]["telugu"].ToString());
                    marks[1] = Convert.ToInt16(ds.Tables[0].Rows[0]["hindi"].ToString());
                    marks[2] = Convert.ToInt16(ds.Tables[0].Rows[0]["english"].ToString());
                    marks[3] = Convert.ToInt16(ds.Tables[0].Rows[0]["maths"].ToString());
                    marks[4] = Convert.ToInt16(ds.Tables[0].Rows[0]["science"].ToString());
                    marks[5] = Convert.ToInt16(ds.Tables[0].Rows[0]["social"].ToString());
                    subject[0] = "telugu";
                    subject[1] = "hindi";
                    subject[2] = "english";
                    subject[3] = "maths";
                    subject[4] = "science";
                    subject[5] = "social";
                }
                else
                {
                    Response.Write("<script language='javascript'>alert('please enter correct rollnumber')</script>");
                }
            }
            if (Txtexam.Text == "mid2")
            {
                SqlCommand cmd1 = new SqlCommand("select * from sevenres where rollnumber=@rollnum and exam='mid2'", con);
                cmd1.Parameters.AddWithValue("rollnum", txtline.Text);
                SqlDataAdapter da = new SqlDataAdapter();
                da.SelectCommand = cmd1;
                DataSet ds = new DataSet();
                da.Fill(ds);
                if (ds.Tables[0].Rows.Count > 0)
                {
                    marks[0] = Convert.ToInt16(ds.Tables[0].Rows[0]["telugu"].ToString());
                    marks[1] = Convert.ToInt16(ds.Tables[0].Rows[0]["hindi"].ToString());
                    marks[2] = Convert.ToInt16(ds.Tables[0].Rows[0]["english"].ToString());
                    marks[3] = Convert.ToInt16(ds.Tables[0].Rows[0]["maths"].ToString());
                    marks[4] = Convert.ToInt16(ds.Tables[0].Rows[0]["science"].ToString());
                    marks[5] = Convert.ToInt16(ds.Tables[0].Rows[0]["social"].ToString());
                    subject[0] = "telugu";
                    subject[1] = "hindi";
                    subject[2] = "english";
                    subject[3] = "maths";
                    subject[4] = "science";
                    subject[5] = "social";
                }
            }
            if (Txtexam.Text == "mid3")
            {

                SqlCommand cmd1 = new SqlCommand("select * from sevenres where rollnumber=@rollnum", con);
                cmd1.Parameters.AddWithValue("rollnum", txtline.Text);
                SqlDataAdapter da = new SqlDataAdapter();
                da.SelectCommand = cmd1;
                DataSet ds = new DataSet();
                da.Fill(ds);
                if (ds.Tables[0].Rows.Count > 0)
                {
                    marks[0] = Convert.ToInt16(ds.Tables[0].Rows[0]["telugu"].ToString());
                    marks[1] = Convert.ToInt16(ds.Tables[0].Rows[0]["hindi"].ToString());
                    marks[2] = Convert.ToInt16(ds.Tables[0].Rows[0]["english"].ToString());
                    marks[3] = Convert.ToInt16(ds.Tables[0].Rows[0]["maths"].ToString());
                    marks[4] = Convert.ToInt16(ds.Tables[0].Rows[0]["science"].ToString());
                    marks[5] = Convert.ToInt16(ds.Tables[0].Rows[0]["social"].ToString());
                    subject[0] = "telugu";
                    subject[1] = "hindi";
                    subject[2] = "english";
                    subject[3] = "maths";
                    subject[4] = "science";
                    subject[5] = "social";
                }
                if (ds.Tables[0].Rows.Count > 0)
                {
                    marks1[0] = Convert.ToInt16(ds.Tables[0].Rows[1]["telugu"].ToString());
                    marks1[1] = Convert.ToInt16(ds.Tables[0].Rows[1]["hindi"].ToString());
                    marks1[2] = Convert.ToInt16(ds.Tables[0].Rows[1]["english"].ToString());
                    marks1[3] = Convert.ToInt16(ds.Tables[0].Rows[1]["maths"].ToString());
                    marks1[4] = Convert.ToInt16(ds.Tables[0].Rows[1]["science"].ToString());
                    marks1[5] = Convert.ToInt16(ds.Tables[0].Rows[1]["social"].ToString());
                    subject[0] = "telugu";
                    subject[1] = "hindi";
                    subject[2] = "english";
                    subject[3] = "maths";
                    subject[4] = "science";
                    subject[5] = "social";
                }
                if (ds.Tables[0].Rows.Count > 0)
                {
                    marks2[0] = Convert.ToInt16(ds.Tables[0].Rows[2]["telugu"].ToString());
                    marks2[1] = Convert.ToInt16(ds.Tables[0].Rows[2]["hindi"].ToString());
                    marks2[2] = Convert.ToInt16(ds.Tables[0].Rows[2]["english"].ToString());
                    marks2[3] = Convert.ToInt16(ds.Tables[0].Rows[2]["maths"].ToString());
                    marks2[4] = Convert.ToInt16(ds.Tables[0].Rows[2]["science"].ToString());
                    marks2[5] = Convert.ToInt16(ds.Tables[0].Rows[2]["social"].ToString());
                    subject[0] = "telugu";
                    subject[1] = "hindi";
                    subject[2] = "english";
                    subject[3] = "maths";
                    subject[4] = "science";
                    subject[5] = "social";
                }

            }
            con.Close();
            LineChart1.Series.Add(new AjaxControlToolkit.LineChartSeries { Data = marks });
            LineChart1.Series.Add(new AjaxControlToolkit.LineChartSeries { Data = marks1 });
            LineChart1.Series.Add(new AjaxControlToolkit.LineChartSeries { Data = marks2 });
            LineChart1.CategoriesAxis = string.Join(",", subject);

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/user/user_sixresult.aspx");
        }

        // LineChart1.ChartTitle = "Five ODI Matches Performance :" + DropDownList1.SelectedValue;
    }
}
