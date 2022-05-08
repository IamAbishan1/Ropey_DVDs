using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ropey_DVDs
{
    public partial class Guest_Page : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

       
        protected void allDVD_Click(object sender, EventArgs e)
        {

            string conStr = @"Data Source = .\SQLEXPRESS;" +
                "Database = DVDStore;" +
                "Trusted_Connection = True;";
            String search = searchTxt.Text;

            //string str = ConfigurationManager.ConnectionStrings[conStr].ConnectionString;
            SqlConnection con = new SqlConnection(conStr);
            con.Open();
            SqlDataAdapter sda = new SqlDataAdapter("select DVDDetail.DVDNumber, DVDDetail.DVDTitle, DVDDetail.DateReleased from DVDDetail inner join CastMember on DVDDetail.DVDNumber = CastMember.DVDNumber inner join Actor on CastMember.ActorNumber = actor.actor where Actor.ActorSurname Like '%" + searchTxt.Text + "%'", con);
            DataTable dt = new DataTable();
            sda.Fill(dt);

            GridView1.DataSourceID = "";
            GridView1.DataSource = dt;
            GridView1.DataBind();
            con.Close();

        }

        protected void availableDVDB_Click(object sender, EventArgs e)
        {

            string conStr = @"Data Source = .\SQLEXPRESS;" +
                "Database = DVDStore;" +
                "Trusted_Connection = True;";
            String search = searchTxt.Text;

            //string str = ConfigurationManager.ConnectionStrings[conStr].ConnectionString;
            /* SqlConnection con = new SqlConnection(conStr);
             con.Open();
             SqlDataAdapter sda = new SqlDataAdapter("select DVDDetail.DVDNumber, DVDDetail.DVDTitle, DVDDetail.DateReleased from DVDDetail inner join CastMember on DVDDetail.DVDNumber = CastMember.DVDNumber inner join Actor on CastMember.ActorNumber = actor.actor where Actor.ActorSurname Like '%" + searchTxt.Text + "%' except"+

        "select Distinct DVDDetail.DVDNumber,"+
        "DVDDetail.DVDTitle,"+
        "DVDDetail.DateReleased,"+
        "DVDCopy.CopyNumber"+
 "from DVDDetail"+
       " inner join DVDCopy on DVDDetail.DVDNumber = DVDCopy.DVDNumber"+

        "inner join CastMember on DVDDetail.DVDNumber = CastMember.DVDNumber"+
        "inner join Actor on CastMember.ActorNumber = actor.actor"+
        "inner join Loan on DVDCopy.CopyNumber = Loan.CopyNumber"+
        "where Loan.DateReturned is null", con);
             DataTable dt = new DataTable();
             sda.Fill(dt);*/

            string query = "spGetAvailableDVD";

            using (SqlConnection connection = new SqlConnection(conStr))
            {
                SqlCommand cmd = new SqlCommand(query, connection);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@actorSurname", searchTxt.Text);


                SqlDataAdapter adapter = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                adapter.Fill(dt);
                GridView1.DataSourceID = "";
                GridView1.DataSource = dt;
                GridView1.DataBind();

                /* DataSet ds = new DataSet();
                 adapter.Fill(ds);
                 if (ds.Tables[0].Rows.Count >0)
                 {
                     //valid login details -> Authenticate user

                     GridView1.DataSourceID = "";
                     GridView1.DataSource = adapter;
                     GridView1.DataBind();



                 }
                 else
                 {
                     //Invalid login Details -> show error msg
                     Response.Write("<p>No DVD is available for this Surname of Actor for now.</p>");
                 */
            }

            //};



            /* string query = "select DVDDetail.DVDNumber,
        DVDDetail.DVDTitle,
        DVDDetail.DateReleased
 from DVDDetail
        inner join CastMember on DVDDetail.DVDNumber = CastMember.DVDNumber

        inner join Actor on CastMember.ActorNumber = actor.actor

        where Actor.ActorSurname Like '%a%'";*/
        }
    }
}