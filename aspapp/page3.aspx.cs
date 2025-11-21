using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace aspapp
{
    public partial class page3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Label3.Visible = false;
            int num1 = Convert.ToInt32(TextBox1.Text);
            int num2 = Convert.ToInt32(TextBox2.Text);
            int sum = num1 + num2;
            Label3.Text = sum.ToString();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Label3.Visible = false;

            int num3 = Convert.ToInt32(TextBox1.Text);
            int num4 = Convert.ToInt32(TextBox2.Text);
            int sub = num3 - num4;
            Label3.Text = sub.ToString();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {            Label3.Visible = false;

            int num5 = Convert.ToInt32(TextBox1.Text);
            int num6 = Convert.ToInt32(TextBox2.Text);
            int sub = num5 * num6;
            Label3.Text = sub.ToString();
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Label3.Visible = false;

            Label3.Text = (Convert.ToDouble(TextBox1.Text) / Convert.ToDouble(TextBox2.Text)).ToString();
        }
    }
}