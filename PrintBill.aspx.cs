using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace Home_Page
{
    public partial class PrintBill : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con5 = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\SEMESTER 3\ASP .NET\C# PROGRAMS\Home_Page\App_Data\Fee.mdf;Integrated Security=True");
            con5.Open();
            string query7 = "select * from fees where eid='" + Session["eid"] + "'";
            SqlCommand cmd8 = new SqlCommand(query7, con5);
            GridView1.DataSource = cmd8.ExecuteReader();
            GridView1.DataBind();
            con5.Close();
        }
    }
}