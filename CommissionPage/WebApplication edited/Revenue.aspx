<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Revenue.aspx.cs" Inherits="WebApplication1.Revenue" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Revenue - SnowTavern</title>
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
            <div class="revenue-container">
                <h2 class="section-title">💰 Commission Revenue</h2>

                <!-- Revenue Summary Section -->
                <div class="revenue-summary">
                    <div class="summary-item">
                        <h3>Month / Time Period</h3>
                        <p>April 2025</p>
                    </div>
                    <div class="summary-item">
                        <h3>Total Commissions</h3>
                        <p>50</p>
                    </div>
                    <div class="summary-item">
                        <h3>Completed Commissions</h3>
                        <p>35</p>
                    </div>
                    <div class="summary-item">
                        <h3>Pending Commissions</h3>
                        <p>15</p>
                    </div>
                </div>

                <!-- Revenue Calculation Section -->
                <div class="revenue-calculation">
                    <div class="calc-item">
                        <h3>Estimated Revenue</h3>
                        <p>$12,500</p>
                    </div>
                    <div class="calc-item">
                        <h3>Actual Revenue</h3>
                        <p>$9,800</p>
                    </div>
                </div>
            </div>
        </div>
    </form>

    <script>
        // Sidebar toggle
        document.getElementById("toggleBtn").addEventListener("click", function () {
            document.getElementById("sidebar").classList.toggle("shrink");
        });
    </script>
</body>
</html>
