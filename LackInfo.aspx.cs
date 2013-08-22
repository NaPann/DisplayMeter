using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DisplayMeter
{
    public partial class LaskInfo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request.QueryString["UN"] != null)
                {
                    if (Session["Uniq_"] != null) { Session.Remove("Uniq_"); }

                    if (Session["USER_"] != null)
                    {
                        this.lblUser.Text = ((sec_User)Session["USER_"]).UserDescription.Trim();
                    }
                    else
                    {
                        this.lblUser.Text = "** UNKNOWN **";
                    }

                    DGV(1);
                }
            }
        }

        private void DGV(int p)
        {
            Guid LackUniq = new Guid(Request.QueryString["UN"].Trim());
            List<stp_get_LastMeter_ByUniqResult> result = DisplayMeterClass.getDetailList(LackUniq);
            this.RadGrid1.DataSource = result;

            if (p == 1)
                this.RadGrid1.DataBind();
        }
    }
}