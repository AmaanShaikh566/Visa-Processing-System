using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace Home_Page
{
    public partial class ApproveApplicant : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string ed = Request.QueryString["eid"];
            
        }

        protected void B1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Date_Fee_Approval.aspx");
        }

        protected void B2_Click(object sender, EventArgs e)
        {
            string ed = Request.QueryString["eid"];
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\SEMESTER 3\ASP .NET\C# PROGRAMS\Home_Page\App_Data\Approve.mdf;Integrated Security=True");
            con.Open();

            string query = "insert into approves values('" + ed +"', 'Approve' )";
            SqlCommand cmd = new SqlCommand(query, con);

            string query1 = "insert into DateApprove values('" + ed + "', 'Approve' )";
            SqlCommand cmd1 = new SqlCommand(query1, con);
            
            int x = cmd.ExecuteNonQuery();
            int y = cmd1.ExecuteNonQuery();
            
            if (x > 0 && y > 0)
            {
                Label1.Text = "Application Approved";
            }
            con.Close();
        }
    }
}