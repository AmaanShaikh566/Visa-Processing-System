using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace Home_Page
{
    public partial class FeedBack : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BB_Click(object sender, EventArgs e)
        {
            
        }

        protected void BB_Click1(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\SEMESTER 3\ASP .NET\C# PROGRAMS\Home_Page\App_Data\FeedBack.mdf;Integrated Security=True");
            con.Open();

            string query = "insert into feedback values('" + T1.Text + "','" + T2.Text + "','" + T3.Text + "','" + T4.Text + "')";
            SqlCommand cmd = new SqlCommand(query, con);

            int x = cmd.ExecuteNonQuery();
            if (x > 0)
            {
                Label1.Text = "FeedBack Sent";
            }
            con.Close();
        }
    }
}