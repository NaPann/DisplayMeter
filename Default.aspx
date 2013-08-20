<%@ Page Title="" Language="C#" MasterPageFile="~/Meter.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="DisplayMeter.Default" %>
<%@ Register assembly="Telerik.Web.UI" namespace="Telerik.Web.UI" tagprefix="telerik" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="server">
    <telerik:RadListView ID="RadListView1" runat="server" ItemPlaceholderID="MeterContainer" >
                 <LayoutTemplate>
             
                      <fieldset style="width: 990px">
                        <legend>Log Meter Transaction</legend>
                          <asp:PlaceHolder ID="MeterContainer" runat="server">
                        </asp:PlaceHolder>
                    </fieldset>
                         

                 </LayoutTemplate>

                     <ItemTemplate>
                         
                        <fieldset style="float:left;width: 480px;">
                        <legend>IP Address :
                            <%#Eval("LackIPAddress")%>
                        </legend>
                
                        </fieldset>
                       
                     </ItemTemplate>
                 </telerik:RadListView>
</asp:Content>
