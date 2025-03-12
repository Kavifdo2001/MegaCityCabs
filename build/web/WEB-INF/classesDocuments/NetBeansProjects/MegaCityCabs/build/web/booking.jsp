<%@ page import="java.sql.*, db.DBConnection" %>
<%@ page import="java.util.*" %>
<%
    Integer loggedUser = (Integer) session.getAttribute("loggedUser");
    if (loggedUser == null) {
        response.sendRedirect("login.jsp");
        return;
    }

    String carId = request.getParameter("carId");
    Connection conn = DBConnection.getConnection();
    PreparedStatement pstmt = conn.prepareStatement("SELECT * FROM cars WHERE id = ?");
    pstmt.setString(1, carId);
    ResultSet rs = pstmt.executeQuery();

    if (!rs.next()) {
%>
        <div class="message error">Invalid car selection. Please try again.</div>
<%
        return;
    }
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Book a Car</title>
    <!-- Include necessary CSS and JS files from the template -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
</head>
<body>
    <%@ include file="navbar.jsp" %>

    <!-- Carousel Section -->
    <div class="carousel-inner" role="listbox">
        <div class="carousel-item active">
            <img src="img/blog-1.jpg" class="img-fluid w-100" alt="First slide"/>
            <div class="carousel-caption">
                <div class="container py-4">
                    <div class="row g-5">
                        <div class="col-lg-6 fadeInLeft animated" data-animation="fadeInLeft" data-delay="1s" style="animation-delay: 1s;">
                            <div class="bg-secondary rounded p-5">
                                <h4 class="text-white mb-4">BOOK YOUR CAR</h4>
                                <form action="confirmBooking.jsp" method="post">
                                    <input type="hidden" name="carId" value="<%= carId %>">
                                    <div class="row g-3">
                                        <!-- Car Details -->
                                        <div class="col-12">
                                            <div class="input-group">
                                                <div class="d-flex align-items-center bg-light text-body rounded-start p-2">
                                                    <span class="fas fa-car"></span> <span class="ms-1">Car Model</span>
                                                </div>
                                                <input class="form-control" type="text" value="<%= rs.getString("name") %>" readonly>
                                            </div>
                                        </div>
                                            
                                            <div class="col-12">
                                            <div class="input-group">
                                                <div class="d-flex align-items-center bg-light text-body rounded-start p-2">
                                                    <span class="fas fa-car"></span> <span class="ms-1">Car Type</span>
                                                </div>
                                                <input class="form-control" type="text" value="<%= rs.getString("category") %>" readonly>
                                            </div>
                                        </div>
                                            
                                        <div class="col-12">
                                            <div class="input-group">
                                                <div class="d-flex align-items-center bg-light text-body rounded-start p-2">
                                                    <span class="fas fa-tag"></span> <span class="ms-1">Price Per KM</span>
                                                </div>
                                                <input class="form-control" type="text" value="LKR <%= rs.getDouble("price") %>" readonly>
                                            </div>
                                        </div>
                                        
                                        
                                        <!-- Pick-Up Date -->
                                        <div class="col-12">
                                            <div class="input-group">
                                                <div class="d-flex align-items-center bg-light text-body rounded-start p-2">
                                                    <span class="fas fa-calendar-alt"></span> <span class="ms-1">Pick-Up Date</span>
                                                </div>
                                                <input class="form-control" type="date" id="pickupDate" name="pickupDate" required>
                                            </div>
                                        </div>
                                        <!-- Return Date -->
                                        <div class="col-12">
                                            <div class="input-group">
                                                <div class="d-flex align-items-center bg-light text-body rounded-start p-2">
                                                    <span class="fas fa-calendar-alt"></span> <span class="ms-1">Return Date</span>
                                                </div>
                                                <input class="form-control" type="date" id="returnDate" name="returnDate" required>
                                            </div>
                                        </div>
                                        <!-- Destination From -->
                                        <div class="col-12">
                                            <div class="input-group">
                                                <div class="d-flex align-items-center bg-light text-body rounded-start p-2">
                                                    <span class="fas fa-map-marker-alt"></span> <span class="ms-1">Destination From</span>
                                                </div>
                                                <input class="form-control" type="text" id="destination_from" name="destination_from" placeholder="Enter a City or Airport" required>
                                            </div>
                                        </div>
                                        <!-- Destination To -->
                                        <div class="col-12">
                                            <div class="input-group">
                                                <div class="d-flex align-items-center bg-light text-body rounded-start p-2">
                                                    <span class="fas fa-map-marker-alt"></span> <span class="ms-1">Destination To</span>
                                                </div>
                                                <input class="form-control" type="text" id="destination_to" name="destination_to" placeholder="Enter a City or Airport" required>
                                            </div>
                                        </div>
                                        <!-- Address -->
                                        <div class="col-12">
                                            <div class="input-group">
                                                <div class="d-flex align-items-center bg-light text-body rounded-start p-2">
                                                    <span class="fas fa-home"></span> <span class="ms-1">Address</span>
                                                </div>
                                                <input class="form-control" type="text" id="address" name="address" placeholder="Enter your address" required>
                                            </div>
                                        </div>
                                        <!-- Telephone -->
                                        <div class="col-12">
                                            <div class="input-group">
                                                <div class="d-flex align-items-center bg-light text-body rounded-start p-2">
                                                    <span class="fas fa-phone"></span> <span class="ms-1">Telephone</span>
                                                </div>
                                                <input class="form-control" type="tel" id="contact" name="contact" placeholder="Enter your telephone number" required>
                                            </div>
                                        </div>
                                        <!-- Driver Required -->
                                        <div class="col-12">
                                            <div class="input-group">
                                                <div class="d-flex align-items-center bg-light text-body rounded-start p-2">
                                                    <span class="fas fa-user"></span> <span class="ms-1">Driver Required</span>
                                                </div>
                                                <select class="form-select" id="driver" name="driver" required>
                                                    <option value="yes">Yes (+LKR 2000/day)</option>
                                                    <option value="no">No</option>
                                                </select>
                                            </div>
                                        </div>
                                        <!-- Submit Button -->
                                        <div class="col-12">
                                            <button class="btn btn-light w-100 py-2" type="submit">Book Now</button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                        <div class="col-lg-6 d-none d-lg-flex fadeInRight animated" data-animation="fadeInRight" data-delay="1s" style="animation-delay: 1s;">
                            <div class="text-start">
                                <h1 class="display-5 text-white">Get 15% off your rental! Plan your trip now</h1>
                                <p class="text-white">Enjoy a seamless booking experience with Mega City Cab.</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <%@ include file="footer.jsp" %>

    <!-- JavaScript Libraries -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="lib/wow/wow.min.js"></script>
    <script src="lib/easing/easing.min.js"></script>
    <script src="lib/waypoints/waypoints.min.js"></script>
    <script src="lib/counterup/counterup.min.js"></script>
    <script src="lib/owlcarousel/owl.carousel.min.js"></script>
    <script src="js/main.js"></script>
</body>
</html>

<%
    rs.close();
    pstmt.close();
    conn.close();
%>