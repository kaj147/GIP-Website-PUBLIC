<%@ Page Async="true" Language="C#" AutoEventWireup="true" CodeBehind="Components.aspx.cs" Inherits="GIP_Website.Website_Page_s.Components" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" lang="en">
<head runat="server">
    <title>
        Componenten
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
            <a href="Home.aspx">Home</a>
            <a>Components</a>
            <a href="Data.aspx">Data</a>
            <a href="Manual.aspx">Manual</a>
            <a href="Settings.aspx">Settings</a>
            <a id="Alert" runat="server" href="Alerts.aspx" visible="false">Alerts</a>
        </div>
        <h1>
            Componenten lijst
        </h1>
    </div>
<form id="form1" runat="server">
    <div style="margin-bottom: 20px; text-align:center">
        <label style="width: 50%">
            Positie AGV
        </label>
    </div>
    <div style="margin-bottom: 20px; text-align:center">
        <input id="AutoPhaseAlerts" type="text" runat="server" style="width: 500px; height: 22px"/>
    </div>
    <div style="margin-bottom: 20px; text-align:center">
        <label>
            Component
        </label>
        <input id="Component" type="text" style="margin-right: 10px" runat="server"/>
        <label>
            Aantal
        </label>
        <input id="Aantal" type="text" style="margin-right: 10px" runat="server"/>
        <label>
            Pad
        </label>
        <asp:DropDownList id="Pad" runat="server" AppendDataBoundItems="true" Width="80px" style="margin-right: 20px">
            <asp:ListItem Selected="True"></asp:ListItem>
            <asp:ListItem>Rood</asp:ListItem>
            <asp:ListItem>Groen</asp:ListItem>
            <asp:ListItem>Blauw</asp:ListItem>
        </asp:DropDownList>
        <button type="submit" style="margin-right: 10px; width: 80px" runat="server" onserverclick="btnAdd_Click">
            Toevoegen
        </button>
        <button type="submit" style="margin-right: 10px; width: 80px" runat="server" onserverclick="btnUpdate_Click">
            Ophalen
        </button>
        <button type="submit" style="width: 80px" runat="server" onserverclick="btnDelete_Click">
            Delete
        </button>
    </div>
    <div>
        <div style="margin-left: auto; margin-right: auto; width: 50%">
            <asp:GridView id="DataTable" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="black" GridLines="Both" Width="100%">
                <Columns>
                    <asp:BoundField DataField="Component" HeaderText="Component" SortExpression="Component"/>
                    <asp:BoundField DataField="Aantal" HeaderText="Aantal" SortExpression="Aantal"/>
                    <asp:BoundField DataField="Pad" HeaderText="Pad" SortExpression="Pad"/>
                </Columns>
            </asp:GridView>
        </div>
    </div>
</form>
    <script src="../JavaScripts/WhiteDarkMode.js"></script>
</body>
</html>