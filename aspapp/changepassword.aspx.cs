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
    public partial class changepassword : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"server=NAJWA\SQLEXPRESS;database=school;Integrated Security=true");

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string s = "select password from t2 where ID=" + Session["uid"] + "";
                SqlCommand cmd = new SqlCommand(s, con);
                con.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    TextBox1.Text = dr["password"].ToString();
                }
                con.Close();
            }
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            string se= " update t2 set password='" + TextBox2.Text + "' where ID=" + Session["uid"] + "";
            SqlCommand cmd = new SqlCommand(se, con);
            con.Open();
            int i1 = cmd.ExecuteNonQuery();
            con.Close();
            if (i1 == 1)
            {
                Label4 .Text = "password changed sucessfully";
            }
        }
    }
}