<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginInfo.aspx.cs" Inherits="DisplayMeter.LoginInfo" %>

<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>

<!DOCTYPE html>
<!--[if lt IE 7]> <html class="lt-ie9 lt-ie8 lt-ie7" lang="en"> <![endif]-->
<!--[if IE 7]> <html class="lt-ie9 lt-ie8" lang="en"> <![endif]-->
<!--[if IE 8]> <html class="lt-ie9" lang="en"> <![endif]-->
<!--[if gt IE 8]><!--> <html lang="en"> <!--<![endif]-->
<head runat="server">
   <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <title>Display Meter -- Login</title>
  <link rel="stylesheet" href="css/style.css">
  <!--[if lt IE 9]><script src="//html5shim.googlecode.com/svn/trunk/html5.js"></script><![endif]-->
</head>
<body>
        
        <script language="javascript">

         function CloseAndRebind(args) {
             GetRadWindow().BrowserWindow.refreshGrid(args);
             GetRadWindow().close();
         }

            function GetRadWindow() {
                var oWindow = null;
                if (window.radWindow) oWindow = window.radWindow; //Will work in Moz in all cases, including clasic dialog
                else if (window.frameElement.radWindow) oWindow = window.frameElement.radWindow; //IE (and Moz as well)

                return oWindow;
            }

            function CancelEdit() {
                GetRadWindow().close();
            }

          
        
            // --------- Function ---------------------				

            function GetValueQueryString(key, default_) {
                if (default_ == null) default_ = "";
                key = key.replace(/[\[]/, "\\\[").replace(/[\]]/, "\\\]");
                var regex = new RegExp("[\\?&]" + key + "=([^&#]*)");
                var qs = regex.exec(window.location.href);
                if (qs == null)
                    return default_;
                else
                    return qs[1];
            }

       
            function btnClose_OnClick() {
                CloseAndRebind('navigateToInserted');
                return false;
                //SubM();
            }


</script>	

    <form id="NP" name="NP" runat="server">
        <telerik:RadScriptManager ID="RadScriptManager1" runat="server"></telerik:RadScriptManager>
           <section class="container">
    <div class="login">
        <h1>Authentication User</h1>
             
        <p><telerik:RadTextBox ID="txtUser" runat="server"  Width="300px"></telerik:RadTextBox></p>
        <p><telerik:RadTextBox ID="txtPwd" runat="server"  Width="300px" TextMode="Password"></telerik:RadTextBox></p>
      
        <p class="submit"><asp:ImageButton ID="btnLogin" runat="server" ImageUrl="~/img/login.png"  OnClick="btnLogin_Click" /></p>
        <p class="submit_c"><asp:ImageButton ID="btnClose" runat="server" ImageUrl="~/img/close.png" OnClientClick="btnClose_OnClick();" /></p>
  	  
        </div>
<section class="about">    <p class="about-author">      &copy;2013 CopyRight - All Reserved<br />      <a href="mailto:napan.np@gmail.com" target="_blank"># Webmaster #</a>  </section>

  </section>

  

	
   </form>
</body>
</html>
