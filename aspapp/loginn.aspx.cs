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
    public partial class loginn : System.Web.UI.Page
    {
        SqlConnection con=new SqlConnection(@"server=NAJWA\SQLEXPRESS;database=school;Integrated Security=true");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string s = "select count(id) from t2 where username='" + TextBox1.Text + "' and password='" + TextBox2.Text + "'";
            SqlCommand cmd = new SqlCommand(s, con);
            con.Open();
            string i1 = cmd.ExecuteScalar().ToString();
            con.Close();
            if (i1 == "1")
            {
                string se = "select id from t2 where username='" + TextBox1.Text + "' and password='" + TextBox2.Text + "'";
                SqlCommand cmd1 = new SqlCommand(se, con);

                con.Open();
                //SqlDataReader dr = cmd.ExecuteReader();
                //int id = 0;
                //while (dr.Read())
                //{
                //    id = Convert.ToInt32(dr["id"]);

                //}

                string id = cmd.ExecuteScalar().ToString();

                con.Close();
                Session["uid"] = id;
                Response.Redirect("profile.aspx");
                //Label3.Text = "entering";
            }
            else
            {
                Label3.Text = "Invalid username or password.";
            }
        }
    }
}