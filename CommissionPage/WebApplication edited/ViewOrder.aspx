<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewOrder.aspx.cs" Inherits="WebApplication1.ViewOrder" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>View Order</title>
    <link href="../Style/style.css" rel="stylesheet" />
    <style>
        /* View Order Page Styling */
        .view-container {
            max-width: 800px;
            margin: 50px auto;
            background: #fff;
            padding: 30px;
            border-radius: 12px;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
            font-family: Arial, sans-serif;
        }

        .view-title {
            font-size: 28px;
            margin-bottom: 20px;
            color: #2c3e50;
            text-align: center;
            font-weight: bold;
        }

        .view-row {
            display: flex;
            justify-content: space-between;
            margin-bottom: 15px;
            font-size: 16px;
        }

        .view-label {
            font-weight: bold;
            color: #34495e;
        }

        .view-value {
            color: #555;
        }

        .back-button {
            display: block;
            width: 100%;
            text-align: center;
            margin-top: 30px;
            padding: 12px 0;
            background-color: #3498db;
            color: white;
            text-decoration: none;
            border-radius: 8px;
            font-weight: bold;
            transition: background 0.3s ease;
        }

        .back-button:hover {
            background-color: #2980b9;
        }

        .back-button:active {
            background-color: #1c5f8f;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="view-container">
            <h2 class="view-title">View Order Details</h2>

            <div class="view-row">
                <span class="view-label">Order No:</span>
                <span class="view-value">#001</span>
            </div>

            <div class="view-row">
                <span class="view-label">Customer:</span>
                <span class="view-value">John Doe</span>
            </div>

            <div class="view-row">
                <span class="view-label">Email:</span>
                <span class="view-value">john@example.com</span>
            </div>

            <div class="view-row">
                <span class="view-label">Description:</span>
                <span class="view-value">Repair Laptop</span>
            </div>

            <div class="view-row">
                <span class="view-label">Priority:</span>
                <span class="view-value">High</span>
            </div>

            <div class="view-row">
                <span class="view-label">Status:</span>
                <span class="view-value">Pending</span>
            </div>

            <div class="view-row">
                <span class="view-label">Time Created:</span>
                <span class="view-value">2025-04-20 10:15 AM</span>
            </div>

            <div class="view-row">
                <span class="view-label">Time Finished:</span>
                <span class="view-value">—</span>
            </div>

            <a class="back-button" href="WebForm1.aspx">← Back to Dashboard</a>
        </div>
    </form>
</body>
</html>
