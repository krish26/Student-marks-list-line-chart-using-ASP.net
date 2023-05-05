using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace school
{
    public partial class AddEvent_Admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btmSubmit_Click(object sender, EventArgs e)
        {
            
                String result;
            string apiKey = "b8l9himktdI-yP4m6gUgD3dn8HZksPmWV7wY8oFyx2";
                string numbers = txtNum.Text; // in a comma seperated list
                string message = txtMessage.Text;
                string send= "";

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
                }

                HttpWebResponse objResponse = (HttpWebResponse)objRequest.GetResponse();
                using (StreamReader sr = new StreamReader(objResponse.GetResponseStream()))
                {
                    result = sr.ReadToEnd();
                    // Close and clean up the StreamReader
                    sr.Close();
                }
             //  return result;
                Response.Write(result);
           
            }

        protected void Button1_Click(object sender, EventArgs e)
        { 
            txtMessage.Text = "";
            txtNum.Text = "";
            

        }
    }
    
    }
