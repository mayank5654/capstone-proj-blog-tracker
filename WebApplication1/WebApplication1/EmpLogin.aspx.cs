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
    public partial class EmpLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Server=DESKTOP-D9AQSGN;Database=Capstone;Trusted_Connection=True");
            SqlCommand cmd = new SqlCommand("Select * from Employee where EmpId = @empid and Passcode = @password", con);
            cmd.Parameters.AddWithValue("@empid", TextBox1.Text);
            cmd.Parameters.AddWithValue("@password", TextBox2.Text);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds, "Employee");
            if (ds.Tables["Employee"].Rows.Count == 0)
            {
                Response.Write("Invalid user");
            }
            else
            {
                Response.Redirect("Blogs.aspx");
            }
        }
    }
}