using System;
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

namespace school
{
    public partial class sixresults : System.Web.UI.Page
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
            SqlCommand cmd = new SqlCommand("select * from sixres where rollnumber='" + Lblrollnumber.Text + "' or name='"+Lblrollnumber.Text+"' and exam='" + LblExam.Text + "'", con);

            myreader = cmd.ExecuteReader();
            while (myreader.Read())
            {
                Lblnam.Text = (myreader["name"].ToString());
                Lblsec.Text = (myreader["section"].ToString());
                Label1.Text = (myreader["telugu"].ToString());
                Label2.Text= (myreader["hindi"].ToString());
                Label3.Text = (myreader["english"].ToString());
                Label4.Text = (myreader["maths"].ToString());
                Label5.Text = (myreader["science"].ToString());
                Label6.Text = (myreader["social"].ToString());
                Label7.Text = (myreader["total"].ToString());
            }
            
            con.Close();
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.ContentType = "application/pdf";
            Response.AddHeader("content-disposition", "attachment;filename=result.pdf");
            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            StringWriter sw = new StringWriter();
            HtmlTextWriter hw = new HtmlTextWriter(sw);
            //GridView1.AllowPaging = false;
            //GridView1.DataBind();
            //RenderControl(hw);
            StringReader sr = new StringReader(sw.ToString());
            Document pdfDoc = new Document(PageSize.A2, 7f, 7f, 7f, 0f);
            HTMLWorker htmlparser = new HTMLWorker(pdfDoc);
            PdfWriter.GetInstance(pdfDoc, Response.OutputStream);
            pdfDoc.Open();
            htmlparser.Parse(sr);
            pdfDoc.Close();
            Response.Write(pdfDoc);
            Response.End();
        }
        public override void VerifyRenderingInServerForm(Control control)
        {
            //
        }
    }
}