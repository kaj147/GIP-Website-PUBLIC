<%@ Page Async="true" Language="C#" AutoEventWireup="true" CodeBehind="Data.aspx.cs" Inherits="GIP_Website.Website_Page_s.Data" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>
        Data
    </title>
    <link href="../Style%20Page's/Style%20Page's.css" rel="stylesheet" />
    <link href="../Style%20Page's/Style%20SideMenu.css" rel="stylesheet" />
    <script src="../JavaScripts/Navigation%20Menu.js"></script>
    <asp:ScriptManager ID="ScriptManager1" runat="server" />
</head>
<body>
    <div>
        <span style="font-size:30px;cursor:pointer" onclick="openNav()">&#9776; Menu</span>
        <div id="SideNav" class="sidenav">
            <a href="javascript:void(0)" class="closebtn" onclick="closeNav()"></a>
            <a href="Home.aspx">Home</a>
            <a href="Components.aspx">Components</a>
            <a>Data</a>
            <a href="Manual.aspx">Manual</a>
            <a href="Settings.aspx">Settings</a>
            <a id="Alert" runat="server" href="Alerts.aspx" visible="false">Alerts</a>
        </div>
        <h1>
            Data
        </h1>
    </div>
    <div>
        <form id="form1" runat="server">
            <center>
                <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
                    <ContentTemplate>
                        <asp:Timer ID="Timer1" runat="server" Interval="5000" OnTick="Timer1_Tick"></asp:Timer>
                            <!--u textbox da ge wilt update om de 5000millisec-->
                            <asp:TextBox ID="DataLog" runat="server" Rows="29" Columns="99" Height="439px" Width="482px" TextMode="MultiLine" ReadOnly="True" style="resize:none"></asp:TextBox>

                    </ContentTemplate>
                </asp:UpdatePanel>
            </center>
        </form>
    </div>
    <script src="../JavaScripts/WhiteDarkMode.js"></script>
</body>
</html>
