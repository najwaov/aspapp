using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace aspapp
{
    public partial class page8 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("pagee.aspx?na="+TextBox1.Text+"&&ag="+TextBox2.Text+"");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Server.Transfer("server.aspx");
        }
    }
}