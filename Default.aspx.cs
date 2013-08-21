using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DisplayMeter
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                getLastUpdateLack();
            }
        }
        private void getLastUpdateLack()
        {
            List<stp_get_LastMeterResult> result = DisplayMeterClass.getLastMaster();
            this.RadListView1.DataSource = result;
        }
    }
    
}