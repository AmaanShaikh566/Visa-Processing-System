using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace Home_Page
{
    public partial class Status_User : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\SEMESTER 3\ASP .NET\C# PROGRAMS\Home_Page\App_Data\Approve.mdf;Integrated Security=True");
            con.Open();
            string query = "select * from approves where eid='" + Session["eid"] + "' ";
            SqlCommand cmd = new SqlCommand(query, con);
            SqlDataReader reader = cmd.ExecuteReader();
            int count = 0;
            while (reader.Read())
            {
                count++;
            }

            if (count > 0)
            {
                Label1.Text = "YOUR APPLICATION IS SUCCESSFULLY APPROVED.";
            }
            else
            {
                Label1.Text = "YOUR APPLICATION IS ON HOLD.";
            }
            con.Close();

            SqlConnection con1 = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\SEMESTER 3\ASP .NET\C# PROGRAMS\Home_Page\App_Data\Approve.mdf;Integrated Security=True");
            con1.Open();
            string query1 = "select * from DateApprove where eid='" + Session["eid"] + "' ";
            SqlCommand cmd1 = new SqlCommand(query1, con1);
            SqlDataReader reader1 = cmd1.ExecuteReader();
            int counts = 0;
            while (reader1.Read())
            {
                counts++;
            }

            if (counts > 0)
            {
                Label2.Text = "YOUR APPOINTMENT (DATE & TIME) IS CONFIRMED.";
            }
            else
            {
                Label2.Text = "YOUR APPOINTMENT (DATE & TIME) IS ON HOLD.";
            }

            con1.Close();
        }
    }
}