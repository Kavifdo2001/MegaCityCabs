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
      
        String email = request.getParameter("email");
        String password = request.getParameter("password");
       
        if (email == null || email.trim().isEmpty() || password == null || password.trim().isEmpty()) {
            request.setAttribute("errorMessage", "All fields are required.");
            request.getRequestDispatcher("login.jsp").forward(request, response);
            return;
        }

        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;

        try {
            conn = DBConnection.getConnection();
            
            String sql = "SELECT id, name, email, password FROM users WHERE email = ?";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, email);

            // Execute the query
            rs = pstmt.executeQuery();

            if (rs.next()) {
                // Retrieve the hashed password from the database
                String hashedPassword = rs.getString("password");

                // Verify the password using BCrypt
                if (BCrypt.checkpw(password, hashedPassword)) {
                    // Password matches, log the user in
                    String userName = rs.getString("name");

                    // Store the user's name in the session
                    HttpSession session = request.getSession();
                    session.setAttribute("userName", userName);

                    // Redirect to the home page
                    response.sendRedirect("index.jsp");
                    return;
                } else {
                    // Password does not match
                    request.setAttribute("errorMessage", "Invalid email or password.");
                }
            } else {

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

        request.getRequestDispatcher("login.jsp").forward(request, response);
    }
}