using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ropey_DVDs
{
    public partial class HomeMain : System.Web.UI.Page
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

            HomeGrid.DataSourceID = "";
            HomeGrid.DataSource = dt;
            HomeGrid.DataBind();
            con.Close();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {

        }
    }
}