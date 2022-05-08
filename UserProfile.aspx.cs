using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ropey_DVDs
{
    public partial class UserProfile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            userNameL.Text = Helper.Username;
            userTypeL.Text = getUserType().ToString();
            /*if (getUserType() == 0)
            {
                userTypeL.Text = "Staff";
                AdminPanel.Visible = false;
            }
            else if(getUserType() == 1)
            {
                userTypeL.Text = "Admin";
                StaffPanel.Visible = false;
            }*/


        }

        public string getUserType()
        {
            /* string connectionString = ConfigurationManager
                 .ConnectionStrings[""]
                 .ConnectionString.ToString();*/

            string conStr = @"Data Source = .\SQLEXPRESS;" +
                  "Database = DVDStore;" +
                  "Trusted_Connection = True;";

            //string query = "spGetUserWithCredentials";

            string query = "select UserType from Users"
                + " where UserName='" + userNameL.Text + "' ";

            SqlConnection connection = new SqlConnection(conStr);
            connection.Open();
            SqlCommand cmd = new SqlCommand(query, connection);
            string type = cmd.ExecuteNonQuery().ToString();


            //return Math.Abs(type);
            return type;
        }

        protected void changePasswordB_Click(object sender, EventArgs e)
        {

            string constr = ConfigurationManager.ConnectionStrings["DVDStoreConnectionString"].ConnectionString;
            try
            {

                string oldpass = txtOldPass.Text;
                string newpass = txtNewPass.Text;
                string conpass = txtConfirmPass.Text;
                //string pass = password.Text;
                int updated;

                using (SqlConnection con = new SqlConnection(constr))
                {
                    con.Open();
                    string qry = "select * from Users where UserName='" + userNameL.Text + "' and UserPassword='" + oldpass + "'";
                    SqlCommand cmd = new SqlCommand(qry, con);
                    SqlDataReader sdr = cmd.ExecuteReader();

                    if (sdr.Read())
                    {
                        if (newpass == conpass)
                        {
                            string connection = ConfigurationManager.ConnectionStrings["DVDStoreConnectionString"].ConnectionString;
                            using (var conn = new SqlConnection(connection))
                            {
                                conn.Open();
                                string updSql = @"UPDATE Users SET UserPassword = '" + newpass + "'  WHERE UserName = '" + userNameL.Text + "'";

                                using (var cmd1 = new SqlCommand(updSql, conn))
                                {
                                    //cmd.Parameters.Add("@Name", SqlDbType.NVarChar).Value = txtRemoveUser.Text;
                                    updated = cmd1.ExecuteNonQuery();

                                    txtOldPass.Text = "";
                                    txtNewPass.Text = "";
                                    txtConfirmPass.Text = "";
                                    conpass = "";
                                    Response.Write("<script language=javascript>alert('Your Password is now Updated.');</script>");

                                }
                            }
                        }
                        else
                        {
                            Response.Write("<script language=javascript>alert('Failed ! New Password and Confirm New Password do not match');</script>");

                        }
                    }
                    else
                    {

                        Response.Write("<script language=javascript>alert('Password Updation Failed ! Please Try Again.');</script>");

                    }
                    con.Close();

                }
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }
    }
}