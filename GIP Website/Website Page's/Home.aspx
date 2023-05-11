<%@ Page Async="true" Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="GIP_Website.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>
        Home
    </title>
    <link href="../Style%20Page's/Style%20Page's.css" rel="stylesheet" />
    <link href="../Style%20Page's/Style%20SideMenu.css" rel="stylesheet" />
    <script src="../JavaScripts/Navigation%20Menu.js"></script>
</head>
<body>
    <div>
        <span style="font-size:30px;cursor:pointer" onclick="openNav()">&#9776; Menu</span>
        <div id="SideNav" class="sidenav">
            <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
            <a> Home</a>
            <a href="Components.aspx">Components</a>
            <a href="Data.aspx">Data</a>
            <a href="Manual.aspx">Manual</a>
            <a href="Settings.aspx">Settings</a>
            <a id="Alert" runat="server" href="Alerts.aspx" visible="false">Alerts</a>
        </div>
        <h1>
            Automated Guided Vehicle
        </h1>
    </div>
    <div style="text-align: center" class="marges">
        <img alt="" src="../Images/AGV_Home.jpg" style="width: 433px; height: 300px; margin-bottom: 10px" />
    </div>
    <div style="text-align: center; margin-bottom: 40px; font-size: 20px; font-weight: bold">
        <label>Welkom op de site voor de AGV</label>
    </div>
    <div style="text-align: center; margin-bottom: 20px; font-size: 20px; font-weight: bold">
        <label>Made By Christophe Van der Heyden</label>
    </div>
    <script src="../JavaScripts/WhiteDarkMode.js"></script>
</body>
</html>

