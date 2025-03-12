<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Footer</title>
        <style>
            /* Flexbox Layout for Footer */
            body {
                display: flex;
                flex-direction: column;
                min-height: 100vh; /* Ensure the body takes at least the full viewport height */
                margin: 0;
              
            }

            .content {
                flex: 1; /* Allow the content to grow and take up remaining space */
            }

            /* Footer Styles */
            .admin-footer {
                background-color: #007bff; /* Dark background */
                color: #ffffff; /* White text */
                padding: 20px 0;
                text-align: center;
                margin-top: auto; /* Push footer to the bottom */
            }

            .admin-footer a {
                color: #ffffff; /* White links */
                text-decoration: none;
                margin: 0 10px;
            }

            .admin-footer a:hover {
                color: #17a2b8; /* Light blue on hover */
            }

            .admin-footer p {
                margin: 5px 0;
                font-size: 14px;
            }
        </style>
    </head>
    <body>
        <!-- Footer -->
        <footer class="admin-footer">
            <p>&copy; 2025 Mega City Cab. All rights reserved.</p>
            <p>
                <a href="adminDashboard.jsp">Dashboard</a> |
                <a href="adminSettings.jsp">Settings</a> |
                <a href="adminHelp.jsp">Help</a>
            </p>
        </footer>
    </body>
</html>