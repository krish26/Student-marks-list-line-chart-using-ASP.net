using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Net;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace school
{
    public partial class forgotpswd : System.Web.UI.Page
    {
        string randomNumber;
        SqlConnection con = new SqlConnection("server=KOUMUDI-PC;Integrated Security=true;DataBase=project");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            
           con.Open();
            SqlCommand cmd1 = new SqlCommand("select mobilenumber from logindetails where mobilenumber=@mobile", con);
           cmd1.Parameters.AddWithValue("mobile",TxtNum.Text.ToString());
          

           SqlDataAdapter da = new SqlDataAdapter(cmd1);
            DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)

           {
                String result;
                string apiKey = "b8l9himktdI-yP4m6gUgD3dn8HZksPmWV7wY8oFyx2";
                string numbers = TxtNum.Text; // in a comma seperated list
                string send = "";
                Random rand = new Random();
                randomNumber = (rand.Next(100000, 999999)).ToString();
                string message = "your requested OTP is :" + randomNumber ;

                String url = "https://api.textlocal.in/send/?apikey=" + apiKey + "&numbers=" + numbers + "&message=" + message + "&sender=" + send;
                //refer to parameters to complete correct url string

                StreamWriter myWriter = null;
                HttpWebRequest objRequest = (HttpWebRequest)WebRequest.Create(url);

                objRequest.Method = "POST";
                objRequest.ContentLength = Encoding.UTF8.GetByteCount(url);
                objRequest.ContentType = "application/x-www-form-urlencoded";
                try
                {
                    myWriter = new StreamWriter(objRequest.GetRequestStream());
                    myWriter.Write(url);
                }
                catch (Exception ex)
                {
                    // return e.Message;
                    Response.Write("error is " + ex.Message);
                }
                finally
                {
                    myWriter.Close();
                    con.Close();
                }

                HttpWebResponse objResponse = (HttpWebResponse)objRequest.GetResponse();
                using (StreamReader sr = new StreamReader(objResponse.GetResponseStream()))
                {
                    result = sr.ReadToEnd();
                    // Close and clean up the StreamReader
                    sr.Close();
                }
                //  return result;
                Response.Write("<script language='javascript'>alert('OTP sent')</script>");

            }
            else
            {
                Response.Write("<script language='javascript'>alert('invalid mobile number')</script>");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if(TextBox1.Text == randomNumber)
            {
                 Response.Redirect("newpswd.aspx");
                
            }
            else
            {
                Response.Write("<script language='javascript'>alert('invalid otp')</script>");
            }
                
        }
    }
    }
