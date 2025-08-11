using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SignUpandLoginForm
{
    public partial class LoginForm : System.Web.UI.Page
    {
        String cs = ConfigurationManager.ConnectionStrings["myDB"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LoginButton_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(cs);
            string query = "select *  from [SignUp] where username = @username and password = @password";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@username",UserTextBox.Text);
            cmd.Parameters.AddWithValue("@password", PasswordTextBox.Text);
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                Session["user"] = UserTextBox.Text;
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Login Successfull')</script>");
                Response.Redirect("Dashboard.aspx");
            }
            else
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Login Failed')</script>");
            }
            con.Close();
        }
    }
}