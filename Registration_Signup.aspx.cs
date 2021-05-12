using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.IO;
namespace Home_Page
{
    public partial class Registration_Signup : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            T3.Text = Session["eid"].ToString();

        }

        protected void B1_Click(object sender, EventArgs e)
        {
            
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\SEMESTER 3\ASP .NET\C# PROGRAMS\Home_Page\App_Data\Registration2.mdf;Integrated Security=True");
            con.Open();
            T27.SaveAs(Server.MapPath("~/Image/") + Path.GetFileName(T27.FileName));
            String link1 = "Image/" + Path.GetFileName(T27.FileName);

            T28.SaveAs(Server.MapPath("~/Image/") + Path.GetFileName(T28.FileName));
            String link2 = "Image/" + Path.GetFileName(T28.FileName);

            T29.SaveAs(Server.MapPath("~/Image/") + Path.GetFileName(T29.FileName));
            String link3 = "Image/" + Path.GetFileName(T29.FileName);


            String query = "insert into register values('" +T1.Text+ "','"+T2.Text+"','"+T3.Text+ "','" + T4.Text + "','" + T5.Text + "','" + T6.Text + "','" + T7.Text + "','" + T8.Text + "','" + T9.Text + "','" + T10.Text + "','" + T11.Text + "','" + T12.Text + "','" + T13.Text + "',"+ T14.Text+ ",'" + T15.Text + "','" + T16.Text + "','" + T17.Text + "'," + T18.Text + ",'" + T19.Text + "','" + T20.Text + "','" + T21.Text + "'," + T22.Text + "," + T23.Text + ",'" + T24.Text + "','" + T25.Text + "'," + T26.Text + ",'" + link1 + "','" + link2 + "','" + link3 + "')";
            SqlCommand cmd = new SqlCommand(query, con);
            int x = cmd.ExecuteNonQuery();

            if (x > 0)
                Label1.Text = "Registered Successfully!! Proceed To Pay....";
                
           


            int i = 0;

            if (T4.Text == "Student")
            {
                i = 10000;
            }
            else if (T4.Text == "Medical")
            {
                i = 5000;
            }
            else
            {
                i = 15000;
            }
            con.Close();


            SqlConnection cons = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\SEMESTER 3\ASP .NET\C# PROGRAMS\Home_Page\App_Data\Fee.mdf;Integrated Security=True");
            cons.Open();

            string query1 = "insert into fees values('" + Session["eid"] + "','" + T5.Text + "','" + T6.Text + "'," + i + ",'" + "PENDING" + "')";
            SqlCommand cmd1 = new SqlCommand(query1, cons);

            cmd1.ExecuteNonQuery();
            
            cons.Close();

        }

        
    }
}