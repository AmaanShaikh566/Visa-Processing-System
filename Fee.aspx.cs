using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace Home_Page
{
    public partial class Fee : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\SEMESTER 3\ASP .NET\C# PROGRAMS\Home_Page\App_Data\Registration2.mdf;Integrated Security=True");
            con.Open();
            string query1 = "select f_name,l_name,visa from register where eid='" + Session["eid"] + "'";
            SqlCommand cmd1 = new SqlCommand(query1, con);
            SqlDataReader reader = cmd1.ExecuteReader();
            string s1 = "";
            string s2 = "";
           
            while (reader.Read())
            {
                s1 = reader.GetString(0);
                s2 = reader.GetString(1);
                
            }
            Label1.Text = s1;
            Label2.Text = s2;

            con.Close();


           /* SqlConnection conss = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\SEMESTER 3\ASP .NET\C# PROGRAMS\Home_Page\App_Data\Fee.mdf;Integrated Security=True");
            conss.Open();
            string query2 = "select status from fees where eid='" + Session["eid"] + "'";
            SqlCommand cmd2 = new SqlCommand(query2, conss);
            SqlDataReader reader1 = cmd2.ExecuteReader();
            string s4 = "";

            while (reader1.Read())
            {
                s4 = reader1.GetString(0);
            }

            if(s4 == "PENDING")
            {
                
                Response.Write("<style> </style><script LANGUAGE='JavaScript' >alert('PAYMENT PENDING')</script>");
            }
            
            
            conss.Close(); */
        
        }
        protected void B1_Click(object sender, EventArgs e)
        {
            Multiview1.ActiveViewIndex = 0;
            SqlConnection con3 = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\SEMESTER 3\ASP .NET\C# PROGRAMS\Home_Page\App_Data\Fee.mdf;Integrated Security=True");
            con3.Open();
            string query5 = "select amt from fees where eid='" + Session["eid"] + "'";
            SqlCommand cmd4 = new SqlCommand(query5, con3);
            SqlDataReader reader3 = cmd4.ExecuteReader();
            int s5 = 0;

            while (reader3.Read())
            {
                s5 = reader3.GetInt32(0);
               

            }
            Label3.Text = s5.ToString();

        }

        protected void B2_Click(object sender, EventArgs e)
        {
            SqlConnection cons = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\SEMESTER 3\ASP .NET\C# PROGRAMS\Home_Page\App_Data\Fee.mdf;Integrated Security=True");
            cons.Open();

            string query3 = "UPDATE fees SET status = 'PAID' WHERE eid = '" + Session["eid"] + "' ";
            SqlCommand cmd3 = new SqlCommand(query3, cons);
            int x4 = cmd3.ExecuteNonQuery();
           if(x4 > 0)
            {
                Label4.Text = "PAYMENT SUCCESSFUL !!!";
            }
        
        }

        protected void B3_Click(object sender, EventArgs e)
        {
            Multiview1.ActiveViewIndex = 1;
            SqlConnection con5 = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\SEMESTER 3\ASP .NET\C# PROGRAMS\Home_Page\App_Data\Fee.mdf;Integrated Security=True");
            con5.Open();
            string query7 = "select * from fees where eid='" + Session["eid"] +"'";
            SqlCommand cmd8 = new SqlCommand(query7, con5);
            GridView1.DataSource = cmd8.ExecuteReader();
            GridView1.DataBind();

            con5.Close();
        }

        protected void B4_Click(object sender, EventArgs e)
        {
            Response.Redirect("PrintBill.aspx");
        }
    }
}