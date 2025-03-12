<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<title>Services - Mega City Cab</title>

<%@ include file="navbar.jsp" %>

<!-- Services Start -->
<div class="container-fluid service py-5">
    <div class="container py-5">
        <div class="text-center mx-auto pb-5 wow fadeInUp" data-wow-delay="0.1s" style="max-width: 800px;">
            <h1 class="display-5 text-capitalize mb-3">Our <span class="text-primary">Services</span></h1>
            <p class="mb-0">
                Mega City Cab is Colombo's leading cab service, trusted by thousands of customers every month. 
                We offer a wide range of services to make your travel experience seamless and enjoyable. 
                From quick rides to long-distance trips, we’ve got you covered!
            </p>
        </div>
        <div class="row g-4">
            <!-- Phone Reservation -->
            <div class="col-md-6 col-lg-4 wow fadeInUp" data-wow-delay="0.1s">
                <div class="service-item p-4">
                    <div class="service-icon mb-4">
                        <i class="fa fa-phone-alt fa-2x"></i>
                    </div>
                    <h5 class="mb-3">Phone Reservation</h5>
                    <p class="mb-0">
                        Book your ride over the phone! Call our 24/7 customer support to reserve a cab. 
                        Perfect for those who prefer a personal touch.
                    </p>
                </div>
            </div>

            <!-- Online Booking -->
            <div class="col-md-6 col-lg-4 wow fadeInUp" data-wow-delay="0.3s">
                <div class="service-item p-4">
                    <div class="service-icon mb-4">
                        <i class="fa fa-laptop fa-2x"></i>
                    </div>
                    <h5 class="mb-3">Online Booking</h5>
                    <p class="mb-0">
                        Book your cab anytime, anywhere with our easy-to-use online booking system. 
                        Just a few clicks, and your ride is confirmed!
                    </p>
                </div>
            </div>

            <!-- Transparent Pricing -->
            <div class="col-md-6 col-lg-4 wow fadeInUp" data-wow-delay="0.5s">
                <div class="service-item p-4">
                    <div class="service-icon mb-4">
                        <i class="fa fa-money-bill-alt fa-2x"></i>
                    </div>
                    <h5 class="mb-3">Transparent Pricing</h5>
                    <p class="mb-0">
                        No hidden charges! Our fares are calculated based on distance and time, 
                        ensuring you pay only for what you use.
                    </p>
                </div>
            </div>

            <!-- Airport Transfers -->
            <div class="col-md-6 col-lg-4 wow fadeInUp" data-wow-delay="0.1s">
                <div class="service-item p-4">
                    <div class="service-icon mb-4">
                        <i class="fa fa-plane fa-2x"></i>
                    </div>
                    <h5 class="mb-3">Airport Transfers</h5>
                    <p class="mb-0">
                        Reliable and timely airport transfers. Whether you're arriving or departing, 
                        we ensure you reach your destination on time.
                    </p>
                </div>
            </div>

            <!-- City-to-City Rides -->
            <div class="col-md-6 col-lg-4 wow fadeInUp" data-wow-delay="0.3s">
                <div class="service-item p-4">
                    <div class="service-icon mb-4">
                        <i class="fa fa-road fa-2x"></i>
                    </div>
                    <h5 class="mb-3">City-to-City Rides</h5>
                    <p class="mb-0">
                        Travel between cities with ease. Our cabs are available for long-distance trips, 
                        offering comfort and safety throughout your journey.
                    </p>
                </div>
            </div>

            <!-- Corporate Services -->
            <div class="col-md-6 col-lg-4 wow fadeInUp" data-wow-delay="0.5s">
                <div class="service-item p-4">
                    <div class="service-icon mb-4">
                        <i class="fa fa-briefcase fa-2x"></i>
                    </div>
                    <h5 class="mb-3">Corporate Services</h5>
                    <p class="mb-0">
                        Special cab services for businesses. We offer tailored solutions for corporate travel, 
                        ensuring punctuality and professionalism.
                    </p>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Services End -->

<%@ include file="footer.jsp" %>

<!-- JavaScript Libraries -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
<script src="lib/wow/wow.min.js"></script>
<script src="lib/easing/easing.min.js"></script>
<script src="lib/waypoints/waypoints.min.js"></script>
<script src="lib/counterup/counterup.min.js"></script>
<script src="lib/owlcarousel/owl.carousel.min.js"></script>

<!-- Template Javascript -->
<script src="js/main.js"></script>

<script>
    function checkBooking(carId) {
        <% if (session.getAttribute("loggedUser") == null) { %>
            alert("You must be logged in to book a cab!");
            window.location.href = "login.jsp"; // Redirect to login page
        <% } else { %>
            window.location.href = "booking.jsp?carId=" + carId; // Proceed to booking page
        <% } %>
    }
</script>