using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace Home_Page
{
    public partial class Application_View : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           /* SqlConnection con1 = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\SEMESTER 3\ASP .NET\C# PROGRAMS\Home_Page\App_Data\Registration2.mdf;Integrated Security=True");
            con1.Open();
            string query1 = "select pass_type,nation,eid,f_name,l_name,place_visit,duration_visa from register";
            SqlCommand cmd1 = new SqlCommand(query1, con1);
            GridView1.DataSource = cmd1.ExecuteReader();
            GridView1.DataBind();

            con1.Close(); */
        }
    }
}