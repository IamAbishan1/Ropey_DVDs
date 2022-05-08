using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ropey_DVDs
{
    public partial class AboutDVD: System.Web.UI.Page

    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void dvdDetailsB_Click(object sender, EventArgs e)
        {
            Response.Redirect("DVDDetails/AllDVD.aspx");

        }

        protected void deleteDVD_Click(object sender, EventArgs e)
        {
            Response.Redirect("DVDDetails/DVDRemove.aspx");
        }

        protected void dvdOnLoanB_Click(object sender, EventArgs e)
        {
            Response.Redirect("DVDDetils/DVDLoan.aspx");

        }

        

        protected void AddNewDVDB_Click(object sender, EventArgs e)
        {
            Response.Redirect("DVDDetails/AddNewDVD.aspx");

        }
    }
}