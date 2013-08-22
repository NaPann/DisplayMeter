<%@ Page Title="" Language="C#" MasterPageFile="~/Meter.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="DisplayMeter.Default" %>
<%@ Register assembly="Telerik.Web.UI" namespace="Telerik.Web.UI" tagprefix="telerik" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="server">
    <telerik:RadAjaxManager ID="RadAjaxManager1" runat="server" OnAjaxRequest="RadAjaxManager1_AjaxRequest">
        <AjaxSettings>
            <telerik:AjaxSetting AjaxControlID="RadAjaxManager1">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="RadListView1" LoadingPanelID="RadAjaxLoadingPanel1" UpdatePanelCssClass="" />
                    <telerik:AjaxUpdatedControl ControlID="notifyWarn" UpdatePanelCssClass="" />
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="RadListView1">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="RadListView1" LoadingPanelID="RadAjaxLoadingPanel1" />
                    <telerik:AjaxUpdatedControl ControlID="notifyWarn" />
                </UpdatedControls>
            </telerik:AjaxSetting>
        </AjaxSettings>
    </telerik:RadAjaxManager>
    <telerik:RadAjaxLoadingPanel ID="RadAjaxLoadingPanel1" runat="server" Skin="Simple"></telerik:RadAjaxLoadingPanel>
    <telerik:RadListView ID="RadListView1" runat="server" ItemPlaceholderID="MeterContainer" DataKeyNames="LackUniq" OnItemDataBound="RadListView1_ItemDataBound" >
                 <LayoutTemplate>
             
                      <fieldset style="width: 990px">
                        <legend>Log Meter Transaction</legend>
                          <asp:PlaceHolder ID="MeterContainer" runat="server">
                        </asp:PlaceHolder>
                    </fieldset>
                         

                 </LayoutTemplate>

                     <ItemTemplate>
                         
                         <div style="float:left;width: 470px;padding:10px 5px 10px 10px ;">
                        <fieldset>
                        <legend>IP Address :<font color="#0000A0"><b>
                            <%#Eval("LackIPAddress")%></b></font>
                        </legend>

                            <div style="padding:10px 10px 10px 10px;background-color:#FFE13C;border:1px dashed #E8E8E8;">
                                <table width="99%">
                                    <tr>
                                        <td align="right" style="font:bold 13px Tahoma;color:#006800;height:20px;">
                                            <asp:Label ID="lblUniq" runat="server" Visible="false" Text='<%#Eval("LackUniq") %>'></asp:Label>  <%#Eval("LackDescription")%>
                                        </td>
                                    </tr>
                                       <tr>
                                        <td align="center" style="font:bold italic 15px Tahoma;color:#CD0000;background-color:#323232;height:50px;">
                                            
                                            <table cellspacing="1" cellpadding="1" width="100%">
                                                <tr>
                                                    <td style="width:22%;"><%#Eval("LogMeter1")%></td>
                                                    <td style="width:22%;"><%#Eval("LogMeter2")%></td>
                                                    <td style="width:22%;"><%#Eval("LogMeter3")%></td>
                                                    <td style="width:22%;"><%#Eval("LogMeter4")%></td>
                                                </tr>
                                            </table>
                                                                                        
                                        </td>
                                    </tr>
                                      <tr>
                                        <td align="center" style="font:bold italic 20px Tahoma;color:#CD0000;background-color:#d8d8d8;height:40px;">
                                            <asp:ImageButton ID="btnMore" runat="server" ImageUrl="img/moreinfo.png" />
                                        </td>
                                    </tr>
                                </table>
                            </div>
                
                        </fieldset>
                       </div>
                     </ItemTemplate>
                 </telerik:RadListView>
    <telerik:RadCodeBlock ID="RadCodeBlock1" runat="server">
            <script type="text/javascript">

                function confirmdelete() {
                    if (confirm("Do you want to Delete ?") == true)
                        return true;
                    else
                        return false;
                }

                function ShowEditForm(arg) {
                    //alert(CID);
                    window.radopen("LoginInfo.aspx?un=" + arg + "", "UserListDialog");
                    return false;
                }

                function refreshGrid(arg) {
                    if (!arg) {
                        $find("<%= RadAjaxManager1.ClientID %>").ajaxRequest("Rebind");
                    }
                    else {
                        $find("<%= RadAjaxManager1.ClientID %>").ajaxRequest("RebindAndNavigate");
                    }
                }

                function OnClientLoad(sender, args) {
                    var wndMng = sender.get_windowManager();

                    wndMng.set_width(700); //set desired width  
                    wndMng.set_height(850); //set desired height  
                    wndMng.autoSize(true);
                }

                function more(ty) {
                    window.open('http://192.168.73.39/ACCPAC/PJC-OPReportExcel.asp?typ=2txtID=' + ty);
                }

                //<![CDATA[
                function StandardConfirm(sender, args) {
                    args.set_cancel(!window.confirm("Do you want to delete ?"));
                }

                //]]>

            </script>
   </telerik:RadCodeBlock>
    <telerik:RadWindowManager ID="RadWindowManager1" runat="server" 
        EnableShadow="True" EnableViewState="false"
        VisibleTitlebar="false" >
            <Windows>
                <telerik:RadWindow ID="UserListDialog" runat="server" Title="[ แก้ไข ]" Height="500px"
                    Width="720px" Left="150px" ReloadOnShow="true" ShowContentDuringLoad="false" 
                    Modal="true" MinWidth="800px" />
            </Windows>
        </telerik:RadWindowManager>
    <telerik:RadNotification ID="notifyWarn" runat="server" Font-Bold="True" Font-Size="15px" ForeColor="Maroon" Height="150px" Position="BottomCenter" Width="400px" AutoCloseDelay="5000" OffsetY="-30" Skin="Sunset"></telerik:RadNotification>
</asp:Content>
