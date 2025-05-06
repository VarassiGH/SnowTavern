<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CommissionForm.aspx.cs" Inherits="CommissionPage.index" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8">
    <title>Commission Form</title>
    <link rel="stylesheet" href="form.css" />
    <script src="CommissionForm.js"></script>
</head>
<body>
   <form id="form1" runat="server" onsubmit="SubmitForm">
        <div class="form-container">
            <div class="back-button">
                <button type="button" onclick="location.href='index.aspx';">Back</button>
            </div>
            <h2>So you want a commission...</h2>
            <p>That's great! Thanks so much for considering me. Let's check over the details!</p>

            <div class="form-group">
                <label for="name">Full Name</label>
                <input type="text" id="name" name="name" placeholder="Your full name" required />
            </div>

            <div class="form-group">
                <label for="email">Email</label>
                <input type="email" id="email" name="email" placeholder="your@email.com" required />
            </div>

            <div class="form-group">
                <label for="explanation">Brief Explanation</label>
                <textarea id="explanation" name="explanation" placeholder="Tell me about the commission!" required></textarea>
                <small>If you don't have anything in mind, leave it empty or describe a scenario!</small>
            </div>

            <div class="form-group">
                <label for="references">Character References (upload)</label>
                <input type="file" id="references" name="references" accept=".jpg,.jpeg,.png" multiple required />
                <small>Only JPEG and PNG files are allowed. Max size: 5MB per file.</small>
            </div>

            <hr />

            <div class="form-group">
                <label for="options">Select Options</label>
                <select id="options" name="options" multiple required>
                    <option value="Bust">Bust (simple shading)</option>
                    <option value="Halfbody">Halfbody (simple shading)</option>
                    <option value="Fullbody">Fullbody (simple shading)</option>
                    <option value="Complex Shading">Complex shading</option>
                    <option value="Complex Background">Complex background</option>
                    <option value="Rush">Rush</option>
                </select>
                <small>Hold Ctrl (Windows) or Cmd (Mac) to select multiple.</small>
            </div>

            <p><strong>Note:</strong> This form is for one artwork only. Submit separate forms for multiple pieces.</p>

            <div class="submit-button">
                <input type="submit" value="Submit" />
            </div>
        </div>
    </form>
</body>
</html>
