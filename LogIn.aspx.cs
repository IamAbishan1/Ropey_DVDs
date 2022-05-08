using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ropey_DVDs
{
    public partial class LogIn : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void skipB_Click(object sender, EventArgs e)
        {
            Response.Redirect("Guest_Page.aspx");
        }

        protected void BtnLogin_Click(object sender, EventArgs e)
        {
            /*string connectionString = ConfigurationManager
                .ConnectionStrings[""]
                .ConnectionString.ToString();*/

            string conStr = @"Data Source = .\SQLEXPRESS;" +
                "Database = DVDStore;" +
                "Trusted_Connection = True;";

            string query = "spGetUserWithCredentials";

            /*string query = "select * from LogInTable"
                + " where email='" + TxtBoxEmail.Text + "' and password = '" + TxtBoxPassword.Text + "' ";*/

            using (SqlConnection connection = new SqlConnection(conStr))
            {
                SqlCommand cmd = new SqlCommand(query, connection);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@email", TxtBoxEmail.Text);
                cmd.Parameters.AddWithValue("@pw", TxtBoxPassword.Text);

                SqlDataAdapter adapter = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                adapter.Fill(ds);
                if (ds.Tables[0].Rows.Count == 1)
                {
                    //valid login details -> Authenticate user
                    Session["username"] = TxtBoxEmail.Text.ToString();
                    FormsAuthentication.RedirectFromLoginPage(TxtBoxEmail.Text, false);
                    Helper.Username = TxtBoxEmail.Text;
                    //Response.Redirect("HomeMain.aspx");




                }
                else
                {
                    //Invalid login Details -> show error msg
                    Response.Write("<p>Invalid LogIn Attempt</p>");
                }

            };
        }
    }
}