using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ropey_DVDs
{
    public partial class DVDDetailsMaster : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void homeB_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/HomeMain.apsx");
        }

        protected void newDVD_Click(object sender, EventArgs e)
        {
            Response.Redirect("AddNewDVD.aspx");

        }

        protected void deleteDVD_Click(object sender, EventArgs e)
        {
            Response.Redirect("DVDRemove.aspx");
        }

        protected void dvdOnLoanB_Click(object sender, EventArgs e)
        {
            Response.Redirect("DVDLoan.aspx");

        }

        protected void dvdDetailsB_Click(object sender, EventArgs e)
        {
            Response.Redirect("AllDVD.aspx");

        }
    }
}