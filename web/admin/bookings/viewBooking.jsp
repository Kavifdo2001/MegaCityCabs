<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, db.DBConnection" %>
<%
    // Ensure only admin can access this page
    
    // Establish DB Connection
    Connection conn = DBConnection.getConnection();
    PreparedStatement pstmt = conn.prepareStatement(
        "SELECT b.id, b.booking_number, b.pickup_date, b.return_date, c.name AS car_name, c.category, u.name AS user_name, u.email " +
        "FROM booking b " +
        "JOIN cars c ON b.car_id = c.id " +
        "JOIN users u ON b.user_id = u.id"
    );

    ResultSet rs = pstmt.executeQuery();
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin - View Bookings</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }

        .container {
            width: 90%;
            max-width: 1200px;
            margin: 2rem auto;
            background: white;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
        }

        h2 {
            text-align: center;
            color: #333;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 1rem;
            background: white;
        }

        th, td {
            padding: 12px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }

        th {
            background: #3498db;
            color: white;
        }

        tr:hover {
            background: #f1f1f1;
        }

        .action-btn {
            padding: 6px 12px;
            border: none;
            cursor: pointer;
            border-radius: 5px;
            color: white;
            transition: 0.3s;
        }

        .approve-btn {
            background: #2ecc71;
        }

        .approve-btn:hover {
            background: #27ae60;
        }

        .delete-btn {
            background: #e74c3c;
        }

        .delete-btn:hover {
            background: #c0392b;
        }

    </style>
</head>
<body>

    <%@ include file="/admin/layout/adminNav.jsp" %>

    <div class="container">
        <h2>All Bookings</h2>
        <table>
            <thead>
                <tr>
                    <th>Booking ID</th>
                    <th>Booking Number</th>
                    <th>User</th>
                    <th>Email</th>
                    <th>Car Model</th>
                    <th>Category</th>
                    <th>Pick-up Date</th>
                    <th>Return Date</th>
                    <th>Actions</th>
                </tr>
            </thead>
            <tbody>
                <%
                    boolean hasBookings = false;
                    while (rs.next()) {
                        hasBookings = true;
                %>
                <tr>
                    <td><%= rs.getInt("id") %></td>
                    <td><%= rs.getString("booking_number") %></td>
                    <td><%= rs.getString("user_name") %></td>
                    <td><%= rs.getString("email") %></td>
                    <td><%= rs.getString("car_name") %></td>
                    <td><%= rs.getString("category") %></td>
                    <td><%= rs.getString("pickup_date") %></td>
                    <td><%= rs.getString("return_date") %></td>
                    <td>
                        <form action="ApproveBookingServlet" method="post" style="display:inline;">
                            <input type="hidden" name="bookingId" value="<%= rs.getInt("id") %>">
                            <button type="submit" class="action-btn approve-btn">Approve</button>
                        </form>
                        <form action="DeleteBookingServlet" method="post" style="display:inline;">
                            <input type="hidden" name="bookingId" value="<%= rs.getInt("id") %>">
                            <button type="submit" class="action-btn delete-btn">Delete</button>
                        </form>
                    </td>
                </tr>
                <%
                    }
                    if (!hasBookings) {
                %>
                <tr>
                    <td colspan="9" style="text-align:center; color: #7f8c8d;">No bookings available.</td>
                </tr>
                <% } %>
            </tbody>
        </table>
    </div>


</body>
</html>

<%
    rs.close();
    pstmt.close();
    conn.close();
%>
