using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace Home_Page
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

      
            protected void B1_Click(object sender, EventArgs e)
            {

            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\SEMESTER 3\ASP .NET\C# PROGRAMS\Home_Page\App_Data\SignUpData.mdf;Integrated Security=True");
            con.Open();
            string email = T1.Text;
            string pass = T2.Text;

            if (R1.Checked)
            {
                SqlConnection con1 = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\SEMESTER 3\ASP .NET\C# PROGRAMS\Home_Page\App_Data\Registration2.mdf;Integrated Security=True");
                con1.Open();
                string query1 = "select eid from register where eid='" + email + "'";
                SqlCommand cmd1 = new SqlCommand(query1, con1);
                SqlDataReader reader1 = cmd1.ExecuteReader();
                int count2 = 0;
                while (reader1.Read())
                {
                    count2++;
                }


                string query = "select emailid, pwd from signup where emailid='" + email + "' and pwd ='" + pass + "'";
                SqlCommand cmd = new SqlCommand(query, con);
                SqlDataReader reader = cmd.ExecuteReader();
                int count = 0;
                while (reader.Read())
                {
                    count++;
                }

                if (count > 0 && count2 > 0)
                {
                    Session["eid"] = T1.Text;
                    Session["pwd"] = T2.Text;
                    Response.Redirect("Status_User.aspx");
                }
                else if(count > 0)
                {
                    Session["eid"] = T1.Text;
                    Session["pwd"] = T2.Text;
                    Response.Redirect("SignUp.aspx");
                }
                else
                {

                }

            }
            else if (R2.Checked)
            {
                string query1 = "select emailid, pwd from admin where emailid='" + email + "' and pwd ='" + pass + "'";
                SqlCommand cmd1 = new SqlCommand(query1, con);
                SqlDataReader reader = cmd1.ExecuteReader();
                int count = 0;
                while (reader.Read())
                {
                    count++;

                }

                if (count > 0)
                {
                    Session["eid"] = T1.Text;
                    Session["pwd"] = T2.Text;
                    Response.Redirect("Date_Fee_Approval.aspx");
                }

            }
            else
            {
                Response.Write("Select Radio Button");
            }



            con.Close();






        }

           
        }
    }
