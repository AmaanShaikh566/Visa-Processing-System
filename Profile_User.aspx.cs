using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace Home_Page
{
    public partial class Profile_User : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\SEMESTER 3\ASP .NET\C# PROGRAMS\Home_Page\App_Data\Registration2.mdf;Integrated Security=True");
            con.Open();
            string query1 = "select * from register where eid='" + Session["eid"] + "'";
            SqlCommand cmd1 = new SqlCommand(query1, con);
            SqlDataReader reader = cmd1.ExecuteReader();
            string s1 = "";
            string s2 = "";
            string s3 = "";
            string s4 = "";
            string s5 = "";
            string s6 = "";
            string s7 = "";
            string s8 = "";
            string s9 = "";
            string s10 = "";
            string s11 = "";
            string s12 = "";
            string s13 = "";
            string s14 = "";
            string s15 = "";
            string s16 = "";
            string s17 = "";
            string s18 = "";
            string s19 = "";
            string s20 = "";
            string s21 = "";
            int s22 = 0;
            int s23 = 0;
            string s24 = "";
            string s25 = "";
            int s26 = 0;
            while (reader.Read())
            {
                s1 = reader.GetString(0);
                s2 = reader.GetString(1);
                s3 = reader.GetString(2);
                s4 = reader.GetString(3);
                s5 = reader.GetString(4);
                s6 = reader.GetString(5);
                s7 = reader.GetString(6);
                s8 = Convert.ToString(reader.GetSqlValue(7));
                s9 = reader.GetString(8);
                s10 = reader.GetString(9);
                s11 = reader.GetString(10);
                s12 = reader.GetString(11);
                s13 = reader.GetString(12);
                s14 = reader.GetString(13);
                s15 = reader.GetString(14);
                s16 = Convert.ToString(reader.GetSqlValue(15));
                s17 = reader.GetString(16);
                s18 = reader.GetString(17);
                s19 = reader.GetString(18);
                s20 = reader.GetString(19);
                s21 = reader.GetString(20);
                s22 = reader.GetInt32(21);
                s23 = reader.GetInt32(22);
                s24 = reader.GetString(23);
                s25 = reader.GetString(24);
                s26 = reader.GetInt32(25);
            }
            T1.Text = s1;
            T2.Text = s2;
            T3.Text = s3;
            T4.Text = s4;
            T5.Text = s5;
            T6.Text = s6;
            T7.Text = s7;
            T8.Text = s8;
            T9.Text = s9;
            T10.Text = s10;
            T11.Text = s11;
            T12.Text = s12;
            T13.Text = s13;
            T14.Text = s14.ToString();
            T15.Text = s15;
            T16.Text = s16;
            T17.Text = s17;
            T18.Text = s18.ToString();
            T19.Text = s19;

            T20.Text = s20;
            T21.Text = s21;
            T22.Text = s22.ToString();
            T23.Text = s23.ToString();
            T24.Text = s24;
            T25.Text = s25;
            T26.Text = s26.ToString();
            con.Close();
        }

        protected void B1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Update_User.aspx");
        }
    }
}