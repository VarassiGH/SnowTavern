<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminDashboard.aspx.cs" Inherits="WebApplication1.WebForm1" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Snow Tavern</title>
    <link href="../Style/style.css" rel="stylesheet" />
    <style>
        /* Ensure sidebar shrinks properly */
        .sidebar.shrink {
            width: 70px;
        }

        .sidebar.shrink .sidebar-title,
        .sidebar.shrink .text {
            display: none;
        }

        /* Optional: icon alignment when minimized */
        .sidebar-menu a {
            justify-content: flex-start;
        }

        .sidebar-menu a span {
            transition: opacity 0.3s;
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
                <h2 class="section-title">📋 Pending Orders</h2>

                <!-- Filters -->
                <div style="display: flex; gap: 15px; margin-bottom: 20px;">
                    <select class="form-input" style="max-width: 200px;">
                        <option value="">Filter by Priority</option>
                        <option>High</option>
                        <option>Low</option>
                    </select>
                    <select class="form-input" style="max-width: 200px;">
                        <option value="">Filter by Status</option>
                        <option>Pending</option>
                        <option>Completed</option>
                    </select>
                    <input type="text" class="form-input" placeholder="Search by name, order no..." style="flex: 1;" />
                    <button type="button" class="form-button">🔍 Search</button>
                </div>

                <!-- Table -->
                <table class="styled-table">
                    <thead>
                        <tr>
                            <th>Order No.</th>
                            <th>Customer Name</th>
                            <th>Email</th>
                            <th>Description</th>
                            <th>Priority</th>
                            <th>Status</th>
                            <th>Time Created</th>
                            <th>Time Finished</th>
                            <th>Actions</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>#001</td>
                            <td>John Doe</td>
                            <td>john@example.com</td>
                            <td>Repair Laptop</td>
                            <td><span style="color:red;">High</span></td>
                            <td>Pending</td>
                            <td>2025-04-20 14:30</td>
                            <td>2025-04-21 18:00</td>
                            <td>
                                <a href="ViewOrder.aspx" class="form-button view-btn">View</a>
                                <a href="EditOrder.aspx" class="form-button edit-btn">Edit</a>
                            </td>
                        </tr>
                    </tbody>
                </table>
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
