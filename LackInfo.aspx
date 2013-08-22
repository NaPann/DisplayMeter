<%@ Page Title="" Language="C#" MasterPageFile="~/Meter.Master" AutoEventWireup="true" CodeBehind="LackInfo.aspx.cs" Inherits="DisplayMeter.LaskInfo" %>

<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>
<%@ Register assembly="Telerik.Web.UI" namespace="Telerik.Charting" tagprefix="telerik" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="server">
      <div style="padding:10px 10px 10px 10px ;background-color:#f1f6ab;text-align:center">
                <asp:Label ID="Label1" runat="server" Text="Welcome Khun" Font-Bold="True" ForeColor="#0066CC"></asp:Label>&nbsp;&nbsp;
                <asp:Label ID="lblUser" runat="server" Text="hun" Font-Bold="True" ForeColor="#006600" Font-Size="15px" Font-Italic="True"></asp:Label>
            </div>   <br />
<div style="padding:10px 10px 10px 10px ;">       
<telerik:RadGrid ID="RadGrid1" runat="server" AllowFilteringByColumn="True" AllowPaging="True" AutoGenerateColumns="False" CellSpacing="0" GridLines="None" Skin="Simple">
<ClientSettings>
    <Selecting AllowRowSelect="True" />
</ClientSettings>
<MasterTableView>
<CommandItemSettings ExportToPdfText="Export to PDF"></CommandItemSettings>

<RowIndicatorColumn Visible="True" FilterControlAltText="Filter RowIndicator column">
<HeaderStyle Width="20px"></HeaderStyle>
</RowIndicatorColumn>

<ExpandCollapseColumn Visible="True" FilterControlAltText="Filter ExpandColumn column">
<HeaderStyle Width="20px"></HeaderStyle>
</ExpandCollapseColumn>

<Columns>
<telerik:GridBoundColumn DataField="LackUniq" Display="False" FilterControlAltText="Filter clnLackUniq column" HeaderText="LackUniq" UniqueName="clnLackUniq">
    <ColumnValidationSettings>
        <ModelErrorMessage Text="" />
    </ColumnValidationSettings>
</telerik:GridBoundColumn>
<telerik:GridBoundColumn AndCurrentFilterFunction="Contains" AutoPostBackOnFilter="True" DataField="LackDescription" FilterControlAltText="Filter clnLackDesc column" HeaderText="LackDescription" UniqueName="clnLackDesc">
    <ColumnValidationSettings>
        <ModelErrorMessage Text="" />
    </ColumnValidationSettings>
</telerik:GridBoundColumn>

<telerik:GridBoundColumn AndCurrentFilterFunction="Contains" AutoPostBackOnFilter="True" DataField="LackIPAddress" FilterControlAltText="Filter clnLackDesc column" HeaderText="IP Address" UniqueName="clnLackIP">
    <ColumnValidationSettings>
        <ModelErrorMessage Text="" />
    </ColumnValidationSettings>
</telerik:GridBoundColumn>

<telerik:GridBoundColumn AndCurrentFilterFunction="Contains" AutoPostBackOnFilter="True" DataField="LackSorting" FilterControlAltText="Filter clnLackDesc column" HeaderText="LackSoting" UniqueName="clnLackSorting" Display="false">
    <ColumnValidationSettings>
        <ModelErrorMessage Text="" />
    </ColumnValidationSettings>
</telerik:GridBoundColumn>

<telerik:GridBoundColumn AndCurrentFilterFunction="Contains" AutoPostBackOnFilter="True" DataField="LogMeter" FilterControlAltText="Filter clnLackDesc column" HeaderText="Meter" UniqueName="clnLogMeter">
    <ColumnValidationSettings>
        <ModelErrorMessage Text="" />
    </ColumnValidationSettings>
</telerik:GridBoundColumn>

<telerik:GridBoundColumn AndCurrentFilterFunction="Contains" AutoPostBackOnFilter="True" DataField="LastUpdate" FilterControlAltText="Filter clnLackDesc column" HeaderText="Last Update" UniqueName="clnLastUpdate">
    <ColumnValidationSettings>
        <ModelErrorMessage Text="" />
    </ColumnValidationSettings>
</telerik:GridBoundColumn>

</Columns>

<EditFormSettings>
<EditColumn FilterControlAltText="Filter EditCommandColumn column"></EditColumn>
</EditFormSettings>

<PagerStyle PageSizeControlType="RadComboBox"></PagerStyle>
</MasterTableView>

<PagerStyle PageSizeControlType="RadComboBox"></PagerStyle>

<FilterMenu EnableImageSprites="False"></FilterMenu>
</telerik:RadGrid>
</div>

    <div style="padding:10px 10px 10px 10px ;">  
        <telerik:RadChart ID="RadChart1" runat="server" DefaultType="Spline"><Series>
<telerik:ChartSeries Name="Series 1" Type="Spline">
    <Appearance>
        <FillStyle MainColor="213, 247, 255">
        </FillStyle>
    </Appearance>
            </telerik:ChartSeries>
<telerik:ChartSeries Name="Series 2" Type="Spline">
    <Appearance>
        <FillStyle MainColor="218, 254, 122">
        </FillStyle>
    </Appearance>
            </telerik:ChartSeries>
</Series>
        </telerik:RadChart>
    </div> 

</asp:Content>
