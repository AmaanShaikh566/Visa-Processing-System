using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Home_Page
{
    public partial class Instruction_Signup : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if(RadioButton1.Checked)
            {
                Response.Redirect("Registration_Signup.aspx");
            }
            
        }
    }
}