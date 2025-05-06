<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Completed.aspx.cs" Inherits="WebApplication1.Completed" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Completed Tasks - Snow Tavern</title>
    <link href="../Style/style.css" rel="stylesheet" />
    <style>
        .sidebar.shrink {
            width: 70px;
        }

        .sidebar.shrink .sidebar-title,
        .sidebar.shrink .text {
            display: none;
        }

        #main {
            margin-left: 250px;
            transition: margin-left 0.3s;
        }

        .sidebar.shrink + #main {
            margin-left: 70px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="sidebar" id="sidebar">
            <div class="sidebar-header">
                <span class="sidebar-title">Snow Tavern</span>
                <button type="button" id="toggleBtn">☰</button>
            </div>
            <ul class="sidebar-menu">
                <li><a href="AdminDashboard.aspx">📋 <span class="text">Dashboard</span></a></li>
                <li><a href="Revenue.aspx">💰 <span class="text">Revenue</span></a></li>
                <li><a href="Completed.aspx">✅ <span class="text">Completed</span></a></li>
            </ul>
            <div class="sidebar-exit">
                <a href="#"><span>🚪</span><span class="text">Logout</span></a>
            </div>
        </div>

        <div id="main">
            <div class="orders-container">
                <h2 class="section-title">✅ Completed Tasks</h2>
                <table class="styled-table">
                    <thead>
                        <tr>
                            <th>Order No.</th>
                            <th>Customer</th>
                            <th>Email</th>
                            <th>Description</th>
                            <th>Priority</th>
                            <th>Completed On</th>
                            <th>Revenue</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>#045</td>
                            <td>Alice Green</td>
                            <td>alice@example.com</td>
                            <td>Fix printer jam</td>
                            <td>Low</td>
                            <td>2025-04-21</td>
                            <td>$120</td>
                        </tr>
                        <!-- Add more completed rows here -->
                    </tbody>
                </table>
            </div>
        </div>
    </form>

    <script>
        document.getElementById("toggleBtn").addEventListener("click", function () {
            document.getElementById("sidebar").classList.toggle("shrink");
        });
    </script>
</body>
</html>
