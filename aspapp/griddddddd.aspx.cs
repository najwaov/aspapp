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
    public partial class griddddddd : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"server=NAJWA\SQLEXPRESS;database=school;Integrated Security=true");
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public void bind_grid()
        {
            string s = "select * from t2 ";
            SqlDataAdapter da = new SqlDataAdapter(s, con);
            DataSet ds = new DataSet();
            da.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();

        }

        protected void LinkButton1_Command(object sender, CommandEventArgs e)
        {
            int getid = Convert.ToInt32(e.CommandArgument);
            string del="delete from t2 where id="+getid+"";
            con.Open();
            SqlCommand cmd = new SqlCommand(del,con);
            cmd.ExecuteNonQuery();
            con.Close();
            bind_grid();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            bind_grid();
        }

        protected void GridView1_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
        {
            GridViewRow rw = GridView1.Rows[e.NewSelectedIndex];
            Label1.Text=rw.Cells[0].Text;
            Label2.Text = rw.Cells[1].Text;

        }
    }
}