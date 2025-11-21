using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace aspapp
{
    public partial class page6 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string items = "";
            for(int i = 0; i < CheckBoxList1.Items.Count; i++)
            {
                if (CheckBoxList1.Items[i].Selected)
                {
                    items += CheckBoxList1.Items[i].Text + ",";
                }
            }
            Label1.Text = items;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Panel2.Visible = true;
            string p = "~/najwa/" + FileUpload1.FileName;
            FileUpload1.SaveAs(MapPath(p));
            Label3.Text = p;
            Image1.ImageUrl = p;
        }
    }
}