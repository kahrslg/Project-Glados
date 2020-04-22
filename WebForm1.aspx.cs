using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project_Glados_master
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] != null)
            {
                string name = Session["username"].ToString();
                usernameDisplay.InnerHtml = "<h4 style = 'color: RoyalBlue;' > username:" + name + "</ h4 >";
            }
            else
            {
                usernameDisplay.InnerHtml = "<h4 style = 'color: RoyalBlue;' > no username </ h4 >";
            }
        }

        protected void BtnLogout_Click(object sender, EventArgs e)
        {
            Session["username"] = null;
            Response.Redirect("Login.aspx");
        }
    }
}