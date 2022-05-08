using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ropey_DVDs
{
    public partial class AllPage : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

      

        public void HomeB_Click(object sender, EventArgs e)
        {
            Response.Redirect("RopeyHome.aspx");

        }

        protected void DVDdetailsB_Click(object sender, EventArgs e)
        {
            Response.Redirect("AboutDVD.aspx");
        }

        protected void manageLoanB_Click(object sender, EventArgs e)
        {
            Response.Redirect("LoanHome.aspx");
        }

        protected void MemberDetailB_Click(object sender, EventArgs e)
        {
            Response.Redirect("MemberHome.aspx");
        }

        protected void ProfileB_Click(object sender, EventArgs e)
        {
            Response.Redirect("UserProfile.aspx");
        }

        protected void logOutB_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("LogIn.aspx");
        }
    }
}