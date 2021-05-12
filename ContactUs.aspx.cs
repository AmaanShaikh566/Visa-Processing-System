using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Data.SqlClient;
using System.Net;
namespace Home_Page
{
    public partial class ContactUs : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void B1_Click(object sender, EventArgs e)
        {

            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\SEMESTER 3\ASP .NET\C# PROGRAMS\Home_Page\App_Data\ContactUs.mdf;Integrated Security=True");
            con.Open();

            string query = "insert into contactus values('" + T1.Text + "','" + T2.Text + "','" + T3.Text + "')";
            SqlCommand cmd = new SqlCommand(query, con);

            int x = cmd.ExecuteNonQuery();
            if (x > 0)
            {
                Label1.Text = "Mail Sent";
            }
            con.Close();
        }
    }
}