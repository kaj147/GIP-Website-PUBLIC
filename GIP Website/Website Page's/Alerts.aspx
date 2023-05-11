<%@ Page Async="true" Language="C#" AutoEventWireup="true" CodeBehind="Alerts.aspx.cs" Inherits="GIP_Website.Website_Page_s.Alerts" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../Style%20Page's/Style%20Page's.css" rel="stylesheet" />
    <link href="../Style%20Page's/Style%20SideMenu.css" rel="stylesheet" />
    <script src="../JavaScripts/Navigation%20Menu.js"></script>
</head>
<body>
    <div>
        <span style="font-size:30px;cursor:pointer" onclick="openNav()">&#9776; Menu</span>
        <div id="SideNav" class="sidenav">
            <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
            <a href="Home.aspx">Home</a>
            <a href="Components.aspx">Components</a>
            <a href="Data.aspx">Data</a>
            <a href="Manual.aspx">Manual</a>
            <a href="Settings.aspx">Settings</a>
            <a id="Alert" runat="server" visible="false">Alerts</a>
        </div>
        <h1>
            ALERTS
        </h1>
    </div>
    <div>
        <form id="form1" runat="server">  
            <center>
                <asp:TextBox id="AlertLog" runat="server" Rows="29" Height="439px" Width="482px" ReadOnly="true" TextMode="MultiLine" Style="resize:none" BackColor="Black" ForeColor="Yellow"></asp:TextBox>
            </center>
        </form>   
    </div>
    <script src="../JavaScripts/WhiteDarkMode.js"></script>
</body>
</html>
