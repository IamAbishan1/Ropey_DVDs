using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ropey_DVDs.MemberDetails
{
    public partial class MemberDetailsMaster : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void MemberDetailsB_Click(object sender, EventArgs e)
        {
            Response.Redirect("AllMemberDetails.aspx");
        }

        protected void DVDLoanB_Click(object sender, EventArgs e)
        {
            Response.Redirect("DVDonLoan.aspx");
        }

        protected void LastLoanB_Click(object sender, EventArgs e)
        {
            Response.Redirect("LastLoan.aspx");
        }
    }
}