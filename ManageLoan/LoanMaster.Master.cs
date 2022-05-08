using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ropey_DVDs.ManageLoan
{
    public partial class LoanMaster : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void returnDVDB_Click(object sender, EventArgs e)
        {
            Response.Redirect("DVDReturn.aspx");

        }

        protected void IssueLoanB_Click(object sender, EventArgs e)
        {
            Response.Redirect("IssueLoan.aspx");

        }
    }
}