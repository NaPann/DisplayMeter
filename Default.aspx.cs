using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Telerik.Web.UI;

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

        protected void RadListView1_ItemDataBound(object sender, Telerik.Web.UI.RadListViewItemEventArgs e)
        {
            if ((e.Item.ItemType == RadListViewItemType.DataItem) || (e.Item.ItemType == RadListViewItemType.AlternatingItem)) 
            {
                RadListViewDataItem item = e.Item as RadListViewDataItem;
                Label lblUniq = ((Label)item.FindControl("lblUniq"));
                ImageButton btnMore = ((ImageButton)item.FindControl("btnMore"));
                btnMore.Attributes.Add("OnClick", "return ShowEditForm('" +  lblUniq.Text.Trim() + "');");
            }
        }

        protected void RadAjaxManager1_AjaxRequest(object sender, AjaxRequestEventArgs e)
        {
            if (e.Argument == "Rebind")
            {
                ScriptManager.RegisterStartupScript(Page, Page.GetType(), Guid.NewGuid().ToString(), "alert('NP1 !!');", true); return;
            }
            else if (e.Argument == "RebindAndNavigate")
            {
                getLastUpdateLack();
                
                if (Session["ERR_"] != null)
                {
                    this.notifyWarn.Text = Session["ERR_"].ToString(); this.notifyWarn.Show();
                    Session.Remove("ERR_");
                }
                if (Session["USER_"] != null)
                {
                    Response.Redirect("LackInfo.aspx?UN=" + Session["Uniq_"].ToString());
                }
            }
        }
    }
    
}