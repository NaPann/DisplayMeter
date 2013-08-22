using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DisplayMeter
{
    public partial class LoginInfo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                this.txtUser.Focus();
        }

        protected void btnLogin_Click(object sender, ImageClickEventArgs e)
        {
            if (string.IsNullOrEmpty(this.txtUser.Text.Trim()))
            {
                ScriptManager.RegisterStartupScript(Page, Page.GetType(), Guid.NewGuid().ToString(), "alert('Please entry Username !!');", true);
                this.txtUser.Focus();
                return;
            }

            if (string.IsNullOrEmpty(this.txtPwd.Text.Trim()))
            {
                ScriptManager.RegisterStartupScript(Page, Page.GetType(), Guid.NewGuid().ToString(), "alert('Please entry Password !!');", true);
                this.txtPwd.Focus();
                return;
            }

            if (Request.QueryString["UN"] != null)
            {
                sec_User result = DisplayMeterClass.ChkUserPwd(this.txtUser.Text.Trim(), this.txtPwd.Text.Trim());

                if (result == null)
                {
                    Session["ERR_"] = "Invalid Username & Password !!"; Session.Timeout = 10;
                    string radalertscript = "CloseAndRebind('navigateToInserted');";
                    ScriptManager.RegisterStartupScript(Page, Page.GetType(), Guid.NewGuid().ToString(), radalertscript, true);
                }
                else
                {
                    if (Session["USER_"] != null) { Session.Remove("USER_"); }
                    Session["USER_"] = result; Session.Timeout = 100;
                    Session["Uniq_"] = Request.QueryString["UN"].Trim();
                    string radalertscript = "CloseAndRebind('navigateToInserted');";
                    ScriptManager.RegisterStartupScript(Page, Page.GetType(), Guid.NewGuid().ToString(), radalertscript, true);
                }

            }
        }

    }
}