<%
    String userName = (String) session.getAttribute("userName");
%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        
        <div>
                            <% if (userName != null) { %>
                                <span style="color: black; margin-right: 15px;">Hello, <%= userName %>!</span>
                                <a href="logout.jsp" class="btn btn-primary rounded-pill py-2 px-4">Logout</a>
                            <% } else { %>
                                <a href="login.jsp" class="btn btn-primary rounded-pill py-2 px-4">Login</a>
                                <a href="register.jsp" class="btn btn-primary rounded-pill py-2 px-4">Register</a>
                            <% } %>
                        </div>
    </body>
</html>
