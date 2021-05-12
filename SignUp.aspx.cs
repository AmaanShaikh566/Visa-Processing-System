using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace Home_Page
{
    public partial class SignUp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\SEMESTER 3\ASP .NET\C# PROGRAMS\Home_Page\App_Data\SignUpData.mdf;Integrated Security=True");
            con.Open();
            string query1 = "select fname,lname from signup where emailid='" + Session["eid"] + "'";
            SqlCommand cmd1 = new SqlCommand(query1, con);
            SqlDataReader reader = cmd1.ExecuteReader();
            string s1 = "";
            string s2 = "";
            while (reader.Read())
            {
                s1= reader.GetString(0);
                s2 = reader.GetString(1);
            }
            Label1.Text = s1;
            Label2.Text = s2;
            con.Close();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
            
            Response.Redirect("Instruction_Signup.aspx");
        }
    }
}