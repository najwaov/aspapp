using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace aspapp
{
    public partial class page5 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Label1.Visible = true;
            Label2.Visible = true;
            Label1.Text = DropDownList1.SelectedItem.Text;
            Label2.Text = DropDownList1.SelectedItem.Value;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Label3.Text = RadioButtonList1.SelectedItem.Text;
            Label4.Text = RadioButtonList1.SelectedItem.Value;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Label5.Text = ListBox1.SelectedItem.Text;
            Label6.Text = ListBox1.SelectedValue;
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Label1.Visible = true;
            Label2.Visible = true;
            Label1.Text = DropDownList1.SelectedItem.Text;
            Label2.Text = DropDownList1.SelectedItem.Value;
        }
    }
}