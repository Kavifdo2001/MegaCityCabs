package controllers;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.mindrot.jbcrypt.BCrypt;
import db.DBConnection;

@WebServlet(name = "LoginServlet", urlPatterns = {"/LoginServlet"})
public class LoginServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Extract form data
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        // Validate form data
        if (email == null || email.trim().isEmpty() || password == null || password.trim().isEmpty()) {
            request.setAttribute("errorMessage", "All fields are required.");
            request.getRequestDispatcher("login.jsp").forward(request, response);
            return;
        }

        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;

        try {
            // Establish database connection
            conn = DBConnection.getConnection();

            // Query to retrieve the user by email
            String sql = "SELECT id, name, email, password, role FROM users WHERE email = ?";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, email);

            // Execute the query
            rs = pstmt.executeQuery();

            if (rs.next()) {
                // Retrieve the hashed password and role from the database
                String hashedPassword = rs.getString("password");
                String role = rs.getString("role");

                // Verify the password using BCrypt
                if (BCrypt.checkpw(password, hashedPassword)) {
                    // Password matches, log the user in
                    String userName = rs.getString("name");

                    // Store the user's name and role in the session
                    HttpSession session = request.getSession();
                    session.setAttribute("userName", userName);
                    session.setAttribute("userRole", role);

                    // Redirect based on the user's role
                    if ("admin".equalsIgnoreCase(role)) {
                        response.sendRedirect("admin.jsp"); // Redirect to admin page
                    } else {
                        response.sendRedirect("index.jsp"); // Redirect to home page
                    }
                    return;
                } else {
                    // Password does not match
                    request.setAttribute("errorMessage", "Invalid email or password.");
                }
            } else {
                // No user found with the given email
                request.setAttribute("errorMessage", "Invalid email or password.");
            }
        } catch (SQLException e) {
            e.printStackTrace();
            request.setAttribute("errorMessage", "An error occurred during login. Please try again.");
        } finally {
            // Close resources
            if (rs != null) {
                try {
                    rs.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
            if (pstmt != null) {
                try {
                    pstmt.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
            if (conn != null) {
                DBConnection.closeConnection(conn);
            }
        }

        // Forward the request back to the login page to display the error message
        request.getRequestDispatcher("login.jsp").forward(request, response);
    }
}