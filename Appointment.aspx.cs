using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace Home_Page
{
    public partial class Appointment : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con1 = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\SEMESTER 3\ASP .NET\C# PROGRAMS\Home_Page\App_Data\Fee.mdf;Integrated Security=True");
            con1.Open();
            string query1="select timee,datee from app where eid = '" + Session["eid"] +"'";
            SqlCommand cmd1 = new SqlCommand(query1, con1);
            SqlDataReader reader = cmd1.ExecuteReader();
            string s1 = "";
            string s2 = "";
            int count = 0;
            while (reader.Read())
            {
                s1 = Convert.ToString(reader.GetSqlValue(0));
                s2 = Convert.ToString(reader.GetSqlValue(1));
                count++;
            }

           

            if (count > 0)
            {
                Label1.Text = "YOUR APPOINTMENT IS SCHEDULED ON " + s2 + " AT " + s1 + "";
            }
            else
            {
                Label1.Text = "SELECT DATE AND TIME";
            }
            con1.Close();
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            T2.Text = Calendar1.SelectedDate.ToShortDateString();
            
        }

        protected void B1_Click(object sender, EventArgs e)
        {
            SqlConnection con5 = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\SEMESTER 3\ASP .NET\C# PROGRAMS\Home_Page\App_Data\Fee.mdf;Integrated Security=True");
            con5.Open();

            string query = "insert into app values('" + T1.Text + "','" + T2.Text + "','" + Session["eid"] + "')";
            SqlCommand cmd = new SqlCommand(query, con5);

            int x = cmd.ExecuteNonQuery();
            if (x > 0)
            {
                Label1.Text = "YOUR APPOINTMENT IS SCHEDULED SUCCESSFULLY!!!";
            }
            con5.Close();

        }

        protected void B2_Click(object sender, EventArgs e)
        {
            SqlConnection con3 = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\SEMESTER 3\ASP .NET\C# PROGRAMS\Home_Page\App_Data\Fee.mdf;Integrated Security=True");
            con3.Open();
            string query3 = "delete from app where eid='" + Session["eid"]+ "'";
            SqlCommand cmd3 = new SqlCommand(query3, con3);
            int x3 = cmd3.ExecuteNonQuery();

            if (x3 > 0)
                Label1.Text = "YOUR APPOINTMENT IS CANCELLED!!!";

            con3.Close();

        }
    }
}