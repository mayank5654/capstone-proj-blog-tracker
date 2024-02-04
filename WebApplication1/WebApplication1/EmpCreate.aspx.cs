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
    public partial class EmpCreate : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Server=DESKTOP-D9AQSGN;Database=Capstone;Trusted_Connection=True");
            
            SqlCommand cmd = new SqlCommand("insert into Employee(EmpId,Name,DOJ,Passcode) values(@empid,@name,@doj,@passcode)", con);
            cmd.Parameters.AddWithValue("@empid", TextBox1.Text);
            cmd.Parameters.AddWithValue("@name", TextBox2.Text);
            cmd.Parameters.AddWithValue("@doj", TextBox3.Text);
            cmd.Parameters.AddWithValue("@passcode", TextBox4.Text);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds, "Employee");
            Response.Redirect("Emp.aspx");
            //if (ds.Tables["Employee"].Rows.Count == 0)
            //{
            //    Response.Write("Invalid user");
            //}
            //else
            //{
            //    Response.Redirect("Emp.aspx");
            //}
        }
    }
}