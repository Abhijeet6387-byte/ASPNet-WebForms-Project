using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SignUpandLoginForm
{
    public partial class DashBoard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] != null)
            {
                UserLabel.Text = "Welcome " + Session["user"].ToString();
            }
            else
            {
                Response.Redirect("LoginForm.aspx");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("LoginForm.aspx");
        }
    }
}