<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Customer Guidelines</title>
        <%@ include file="navbar.jsp" %>
    </head>
    <body>
        <!-- Guidelines Start -->
        <div class="container-fluid service py-5">
            <div class="container py-5">
                <div class="text-center mx-auto pb-5 wow fadeInUp" data-wow-delay="0.1s" style="max-width: 800px;">
                    <h1 class="display-5 text-capitalize mb-3">Customer <span class="text-primary">Guidelines</span></h1>
                    <p class="mb-0">Welcome to Mega City Cab service! Here’s everything you need to know to make your experience smooth and hassle-free. Follow these guidelines to book rides, manage your account, and enjoy our services.</p>
                </div>
                <div class="row g-4">
                    <div class="col-md-6 col-lg-4 wow fadeInUp" data-wow-delay="0.1s">
                        <div class="service-item p-4">
                            <div class="service-icon mb-4">
                                <i class="fa fa-user fa-2x"></i>
                            </div>
                            <h5 class="mb-3">Create an Account</h5>
                            <p class="mb-0">To book a ride, you need to create an account. Click on the "Sign Up" button and provide your details like name, email, and phone number.</p>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-4 wow fadeInUp" data-wow-delay="0.3s">
                        <div class="service-item p-4">
                            <div class="service-icon mb-4">
                                <i class="fa fa-calendar-alt fa-2x"></i>
                            </div>
                            <h5 class="mb-3">Book a Ride</h5>
                            <p class="mb-0">Log in to your account and fill out the booking form. Provide details like pickup location, destination, date, and time. Confirm your booking to reserve your ride.</p>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-4 wow fadeInUp" data-wow-delay="0.5s">
                        <div class="service-item p-4">
                            <div class="service-icon mb-4">
                                <i class="fa fa-car fa-2x"></i>
                            </div>
                            <h5 class="mb-3">Choose Your Vehicle</h5>
                            <p class="mb-0">Select from a variety of vehicles based on your needs. We offer sedans, SUVs, and luxury cars for different budgets and group sizes.</p>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-4 wow fadeInUp" data-wow-delay="0.1s">
                        <div class="service-item p-4">
                            <div class="service-icon mb-4">
                                <i class="fa fa-credit-card fa-2x"></i>
                            </div>
                            <h5 class="mb-3">Payment Options</h5>
                            <p class="mb-0">We accept multiple payment methods, including credit/debit cards, mobile wallets, and cash. Choose the option that suits you best during checkout.</p>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-4 wow fadeInUp" data-wow-delay="0.3s">
                        <div class="service-item p-4">
                            <div class="service-icon mb-4">
                                <i class="fa fa-headset fa-2x"></i>
                            </div>
                            <h5 class="mb-3">24/7 Support</h5>
                            <p class="mb-0">Our customer support team is available 24/7 to assist you with any issues or queries. Call us or use the live chat feature on the website.</p>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-4 wow fadeInUp" data-wow-delay="0.5s">
                        <div class="service-item p-4">
                            <div class="service-icon mb-4">
                                <i class="fa fa-star fa-2x"></i>
                            </div>
                            <h5 class="mb-3">Rate Your Experience</h5>
                            <p class="mb-0">After your ride, rate your experience and provide feedback. Your input helps us improve our services and ensures a better experience for everyone.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Guidelines End -->

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
    </body>
</html>