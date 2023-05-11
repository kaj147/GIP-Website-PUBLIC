<%@ Page Async="true" Language="C#" AutoEventWireup="true" CodeBehind="Settings.aspx.cs" Inherits="GIP_Website.Website_Page_s.Settings" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" lang="en">
<head runat="server">
    <title>
        Settings
    </title>
    <link href="../Style%20Page's/Style%20Page's.css" rel="stylesheet" />
    <link href="../Style%20Page's/Style%20SideMenu.css" rel="stylesheet" />
    <link href="../Style%20Page's/SliderButton.css" rel="stylesheet" />
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
            <a>Settings</a>
            <a id="Alert" runat="server" href="Alerts.aspx" visible="false">Alerts</a>
        </div>        
        <h1>
            Settings
        </h1>
    </div>
    <div>
        <center>
            <label id="lblWhiteDarkMode">Dark Theme</label>
            <label class="switch">
                <input id="slider" type="checkbox" onchange="toggleWhiteDarkTheme()"/>
                <span class="slider round"></span>
            </label>
        </center>
    </div>
    <script src="../JavaScripts/WhiteDarkMode.js"></script>
</body>
</html>
