<%@ Page Async="true" Language="C#" AutoEventWireup="true" CodeBehind="Manual.aspx.cs" Inherits="GIP_Website.Website_Page_s.Manual" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>
        Manual
    </title>
    <link href="../Style%20Page's/Style%20Page's.css" rel="stylesheet" />
    <link href="../Style%20Page's/Style%20SideMenu.css" rel="stylesheet" />
    <script src="../JavaScripts/Navigation%20Menu.js"></script>
</head>
<body>
    <div>
        <span style="font-size:30px;cursor:pointer" onclick="openNav()">&#9776; Menu</span>
        <div id="SideNav" class="sidenav">
            <a href="javascript:void(0)" class="closebtn" onclick="closeNav()"></a>
            <a href="Home.aspx">Home</a>
            <a href="Components.aspx">Components</a>
            <a href="Data.aspx">Data</a>
            <a>Manual</a>
            <a href="Settings.aspx">Settings</a>
            <a id="Alert" runat="server" href="Alerts.aspx" visible="false">Alerts</a>
        </div>
        <h1>
            Manuele overname
        </h1>
    </div>
    <button type="submit" style="float:right; height: 26px; width: 120px;" name="btnConnect;">
        Connect
    </button> 
    <div style="text-align: center;">
        
        <form id="form1" runat="server">
            <div style="margin-left: 80px">
                <asp:TextBox ID="ManualLog" runat="server" Rows="0" Columns="99" Height="40px" Width="500px" TextMode="SingleLine" ReadOnly="True"/>           
            </div>
            <iframe width="709" height="399" src="https://www.youtube.com/embed/jfKfPfyJRdk?autoplay=true; allow="autoplay="true"" style="margin-bottom: 10px; margin-top: 10px"></iframe>
        </form>
    </div>
    <div class="button">
        <button type="submit" style="background-color: red; height: 70px; width: 98px; margin-right: 40px; border:none" >
            Links</button>
        <button type="submit" style="background-color: red; height: 70px; width: 98px; margin-right: 40px; border:none" >
            Vooruit</button>
        <button type="submit" style="background-color: red; height: 70px; width: 98px; margin-right: 40px; border:none">
            Rechts</button>
    </div>
    <div class="button">
        
        <button type="submit" style="background-color: red; height: 70px; width: 98px; margin-right: 40px; border:none" >
            Achteruit</button>
    </div>
    <script src="../JavaScripts/WhiteDarkMode.js"></script>
</body>
</html> 
