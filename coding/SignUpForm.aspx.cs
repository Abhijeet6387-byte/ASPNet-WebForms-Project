using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace SignUpandLoginForm
{
    public partial class SignUpForm : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["myDB"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SignUpButton_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(cs);
            string query = "INSERT INTO SignUp values(@fname,@lname,@gender,@email,@address,@username,@password)";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@fname", FirstNameTextBox.Text);
            cmd.Parameters.AddWithValue("@lname", LastNameTextBox.Text);
            cmd.Parameters.AddWithValue("@gender", GenderDropDownList.SelectedItem.Value);
            cmd.Parameters.AddWithValue("@email",EmailTextBox.Text);
            cmd.Parameters.AddWithValue("@address", AddressTextBox.Text);
            cmd.Parameters.AddWithValue("@username", UsernameTextbox.Text);
            cmd.Parameters.AddWithValue("@password", PasswordTextBox.Text);
            con.Open();
            int a = cmd.ExecuteNonQuery();
            if (a > 0)
            {
                ClientScript.RegisterStartupScript(typeof(Page), "script", "alert('SignUp Successfully.. Username is: "+UsernameTextbox.Text+" and Password is: "+PasswordTextBox.Text+"');",true);
                ClearControls();
            }
            else
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "script", "<script>alert('SignUp Failed')</script>");
            }
                con.Close();
        }

        void ClearControls()
        {
            FirstNameTextBox.Text = LastNameTextBox.Text = EmailTextBox.Text = AddressTextBox.Text = UsernameTextbox.Text = PasswordTextBox.Text = ConfirmPassTextBox.Text = "";
            GenderDropDownList.ClearSelection();
        }
    }
}