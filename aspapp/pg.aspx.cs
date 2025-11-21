using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace aspapp
{
    public partial class pg : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Request.Browser.Cookies)
            {
                HttpCookie hc = new HttpCookie("login");
                hc["una"] = TextBox1.Text;
                hc["pw"] = TextBox2.Text;
                hc.Expires = DateTime.Now.AddDays(1);
                Response.Cookies.Add(hc);
            }
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            if (Request.Browser.Cookies)
            {
                if (Request.Cookies["login"] != null)
                {
                    if (Request.Cookies["login"]["una"] != null)
                    {
                        Label1.Text = Request.Cookies["login"]["una"];
                        Label2.Text = Request.Cookies["login"]["pw"];

                    }



                }
            }
        }

       
    }
}