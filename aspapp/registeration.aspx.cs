using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace aspapp
{
    public partial class registeration : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"server=NAJWA\SQLEXPRESS;database=school;Integrated Security=true"); 
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            Panel1.Visible = true;
            Label33.Text=TextBox1.Text;
            Label34.Text = TextBox2.Text;

            Label35.Text = TextBox8.Text;
            Label36.Text = TextBox3.Text;
            Label37.Text = TextBox4.Text;
            Label26.Text = RadioButtonList1.SelectedItem.Text;
            Label27.Text = DropDownList2.SelectedItem.Text;
            Label38.Text = CheckBoxList1.SelectedItem.Text;
            Label40.Text = TextBox5.Text;
            Label41.Text = TextBox7.Text;
            
            string p = "~/najwa/" + FileUpload1.FileName;
            FileUpload1.SaveAs(MapPath(p));
            Image1.ImageUrl = p;



        }

        protected void Panel1_DataBinding(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string p = "~/dataaa/" + FileUpload1.FileName;
            FileUpload1.SaveAs(MapPath(p));
            string sel = "";
            for(int i = 0; i < CheckBoxList1.Items.Count; i++)
            {
                if (CheckBoxList1.Items[i].Selected)
                {
                    sel += CheckBoxList1.Items[i].Text + ",";
                }
            }

            string st = "insert into t2 values('" + TextBox1.Text + "'," + TextBox2.Text + ",'" + TextBox8.Text + "'," +
                "" + TextBox3.Text + ",'" + TextBox4.Text + "','" + RadioButtonList1.SelectedItem.Text + "'," +
                "'" + DropDownList2.SelectedItem.Text + "','" + sel + "','" + p + "','" + TextBox5.Text + "','" + TextBox7.Text + "')";
            SqlCommand cmd = new SqlCommand(st, con);
            con.Open();
            int i1 = cmd.ExecuteNonQuery();
            con.Close();
            if (i1 == 1)
            {
                Label42.Text = "inserted";
            }
        }

        protected void TextBox5_TextChanged(object sender, EventArgs e)
        {
            string sel = "select count(id) from t2 where username='" + TextBox5.Text + "'";
            SqlCommand cmd = new SqlCommand(sel, con);
            con.Open();
            string i1 = cmd.ExecuteScalar().ToString();
            con.Close();
            int id1 = Convert.ToInt32(i1);
            if (id1 >= 1)
            {
                Label43.Visible = true;
                Label43.Text = "username already exist";
            }
            else
            {
                Label43.Visible = false;
            }
        }
    }
}