using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class BlogCreate : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Server=DESKTOP-D9AQSGN;Database=Capstone;Trusted_Connection=True");

            SqlCommand cmd = new SqlCommand("insert into BlogInfo(BlogId,Title,Subject,DOC,BlogURL,EmpId) values(@blogid,@title,@sub,@doc,@url,@empid)", con);
            cmd.Parameters.AddWithValue("@blogid", TextBox1.Text);
            cmd.Parameters.AddWithValue("@title", TextBox2.Text);
            cmd.Parameters.AddWithValue("@sub", TextBox3.Text);
            cmd.Parameters.AddWithValue("@doc", TextBox4.Text);
            cmd.Parameters.AddWithValue("@url", TextBox5.Text);
            cmd.Parameters.AddWithValue("@empid", TextBox6.Text);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds, "BlogInfo");
            Response.Redirect("Blogs.aspx");
        }
    }
}