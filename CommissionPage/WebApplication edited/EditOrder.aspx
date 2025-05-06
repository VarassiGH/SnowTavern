<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EditOrder.aspx.cs" Inherits="WebApplication1.EditOrder" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Edit Order</title>
    <link href="../Style/style.css" rel="stylesheet" />
    <style>
        /* Edit Order Page Styling */
        .edit-container {
            max-width: 800px;
            margin: 50px auto;
            background: #fff;
            padding: 30px;
            border-radius: 12px;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
            font-family: Arial, sans-serif;
        }

        .edit-title {
            font-size: 28px;
            margin-bottom: 20px;
            color: #2c3e50;
            text-align: center;
            font-weight: bold;
        }

        .edit-row {
            display: flex;
            justify-content: space-between;
            margin-bottom: 15px;
            font-size: 16px;
        }

        .edit-label {
            font-weight: bold;
            color: #34495e;
            width: 120px;
        }

        .edit-input {
            width: 100%;
            padding: 10px;
            font-size: 16px;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-sizing: border-box;
            margin-top: 5px;
        }

        .save-button {
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

        .save-button:hover {
            background-color: #2980b9;
        }

        .save-button:active {
            background-color: #1c5f8f;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="edit-container">
            <h2 class="edit-title">Edit Order Details</h2>

            <div class="edit-row">
                <span class="edit-label">Order No:</span>
                <input type="text" class="edit-input" value="#001" disabled />
            </div>

            <div class="edit-row">
                <span class="edit-label">Customer:</span>
                <input type="text" class="edit-input" value="John Doe" />
            </div>

            <div class="edit-row">
                <span class="edit-label">Email:</span>
                <input type="email" class="edit-input" value="john@example.com" />
            </div>

            <div class="edit-row">
                <span class="edit-label">Description:</span>
                <textarea class="edit-input" rows="4">Repair Laptop</textarea>
            </div>

            <div class="edit-row">
                <span class="edit-label">Priority:</span>
                <select class="edit-input">
                    <option value="High" selected>High</option>
                    <option value="Low">Low</option>
                </select>
            </div>

            <div class="edit-row">
                <span class="edit-label">Status:</span>
                <select class="edit-input">
                    <option value="Pending" selected>Pending</option>
                    <option value="Completed">Completed</option>
                </select>
            </div>

            <div class="edit-row">
                <span class="edit-label">Time Created:</span>
                <input type="text" class="edit-input" value="2025-04-20 10:15 AM" disabled />
            </div>

            <div class="edit-row">
                <span class="edit-label">Time Finished:</span>
                <input type="text" class="edit-input" value="—" />
            </div>

            <a class="save-button" href="AdminDashboard.aspx">Save Changes</a>
        </div>
    </form>
</body>
</html>
