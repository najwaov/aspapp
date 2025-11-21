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
    public partial class paggee : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"server=NAJWA\SQLEXPRESS;database=school;Integrated Security=true");

        protected void Page_Load(object sender, EventArgs e)
        {
            string s = "select * from t2";
            SqlDataAdapter da = new SqlDataAdapter(s, con);
            DataSet ds = new DataSet();
            da.Fill(ds);
            DataList1.DataSource = ds;
            DataList1.DataBind();
        }
    }
}