<%@ page import="java.sql.*, db.DBConnection" %>
<%
    Integer loggedUser = (Integer) session.getAttribute("loggedUser");
    if (loggedUser == null) {
        response.sendRedirect("login.jsp");
        return;
    }

    String carId = request.getParameter("carId");
    String pickupDate = request.getParameter("pickupDate");
    String returnDate = request.getParameter("returnDate");
    String driver = request.getParameter("driver");

    if (carId == null || pickupDate == null || returnDate == null || driver == null) {
        out.println("<p>All fields are required.</p>");
        return;
    }

    // Generate a unique booking number
    String bookingNumber = "BOOK-" + System.currentTimeMillis();

    Connection conn = null;
    PreparedStatement pstmt = null;

    try {
        conn = DBConnection.getConnection();
        String sql = "INSERT INTO booking (booking_number, user_id, car_id, pickup_date, return_date, driver) VALUES (?, ?, ?, ?, ?, ?)";
        pstmt = conn.prepareStatement(sql);
        pstmt.setString(1, bookingNumber);
        pstmt.setInt(2, loggedUser);
        pstmt.setString(3, carId);
        pstmt.setString(4, pickupDate);
        pstmt.setString(5, returnDate);
        pstmt.setString(6, driver);
        
        int rowsAffected = pstmt.executeUpdate();
        if (rowsAffected > 0) {
            out.println("<p>Booking successful! Your Booking Number: <strong>" + bookingNumber + "</strong></p>");
            response.sendRedirect("bookingSuccess.jsp?bookingNumber=" + bookingNumber);
        } else {
            out.println("<p>Booking failed. Please try again.</p>");
        }
    } catch (SQLException e) {
        e.printStackTrace();
        out.println("<p>Error processing booking.</p>");
    } finally {
        if (pstmt != null) pstmt.close();
        if (conn != null) DBConnection.closeConnection(conn);
    }
%>
