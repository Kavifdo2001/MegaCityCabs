<%@page import="java.util.List"%>
<%@page import="models.Car"%>
<%@page import="service.CarService"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<title>Home</title>


 <%@ include file="navbar.jsp" %>

    <%
        CarService carService = new CarService();
        List<Car> carList = carService.getAllCars();
    %>
        <!-- Carousel Start -->
        <div class="header-carousel">
            <div id="carouselId" class="carousel slide" data-bs-ride="carousel" data-bs-interval="false">
                <ol class="carousel-indicators">
                    <li data-bs-target="#carouselId" data-bs-slide-to="0" class="active" aria-current="true" aria-label="First slide"></li>
                    <li data-bs-target="#carouselId" data-bs-slide-to="1" aria-label="Second slide"></li>
                </ol>
                <div class="carousel-inner" role="listbox">
                    <div class="carousel-item active">
                        <img src="img/carousel-2.jpg" class="img-fluid w-100" alt="First slide"/>
                        <div class="carousel-caption">
                            <div class="container py-4">
                                <div class="row g-5">
                                    <div class="col-lg-6 fadeInLeft animated" data-animation="fadeInLeft" data-delay="1s" style="animation-delay: 1s;">
                                        
                                    </div>
                                    <div class="col-lg-6 d-none d-lg-flex fadeInRight animated" data-animation="fadeInRight" data-delay="1s" style="animation-delay: 1s;">
                                        <div class="text-start">
                                            <h1 class="display-5 text-white">Get 15% off your rental Plan your trip now</h1>
                                            
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <img src="img/carousel-1.jpg" class="img-fluid w-100" alt="First slide"/>
                        <div class="carousel-caption">
                            <div class="container py-4">
                                <div class="row g-5">
                                    <div class="col-lg-6 fadeInLeft animated" data-animation="fadeInLeft" data-delay="1s" style="animation-delay: 1s;">
                                        <div class="bg-secondary rounded p-5">
                                            <h4 class="text-white mb-4">CONTINUE CAR RESERVATION</h4>
                                            <form>
                                                <div class="row g-3">
                                                    <div class="col-12">
                                                        <select class="form-select" aria-label="Default select example">
                                                            <option selected>Select Your Car type</option>
                                                            <option value="1">VW Golf VII</option>
                                                            <option value="2">Audi A1 S-Line</option>
                                                            <option value="3">Toyota Camry</option>
                                                            <option value="4">BMW 320 ModernLine</option>
                                                        </select>
                                                    </div>
                                                    <div class="col-12">
                                                        <div class="input-group">
                                                            <div class="d-flex align-items-center bg-light text-body rounded-start p-2">
                                                                <span class="fas fa-map-marker-alt"></span><span class="ms-1">Pick Up</span>
                                                            </div>
                                                            <input class="form-control" type="text" placeholder="Enter a City or Airport" aria-label="Enter a City or Airport">
                                                        </div>
                                                    </div>
                                                    <div class="col-12">
                                                        <a href="#" class="text-start text-white d-block mb-2">Need a different drop-off location?</a>
                                                        <div class="input-group">
                                                            <div class="d-flex align-items-center bg-light text-body rounded-start p-2">
                                                                <span class="fas fa-map-marker-alt"></span><span class="ms-1">Drop off</span>
                                                            </div>
                                                            <input class="form-control" type="text" placeholder="Enter a City or Airport" aria-label="Enter a City or Airport">
                                                        </div>
                                                    </div>
                                                    <div class="col-12">
                                                        <div class="input-group">
                                                            <div class="d-flex align-items-center bg-light text-body rounded-start p-2">
                                                                <span class="fas fa-calendar-alt"></span><span class="ms-1">Pick Up</span>
                                                            </div>
                                                            <input class="form-control" type="date">
                                                            <select class="form-select ms-3" aria-label="Default select example">
                                                                <option selected>12:00AM</option>
                                                                <option value="1">1:00AM</option>
                                                                <option value="2">2:00AM</option>
                                                                <option value="3">3:00AM</option>
                                                                <option value="4">4:00AM</option>
                                                                <option value="5">5:00AM</option>
                                                                <option value="6">6:00AM</option>
                                                                <option value="7">7:00AM</option>
                                                            </select>
                                                        </div>
                                                    </div>
                                                    <div class="col-12">
                                                        <div class="input-group">
                                                            <div class="d-flex align-items-center bg-light text-body rounded-start p-2">
                                                                <span class="fas fa-calendar-alt"></span><span class="ms-1">Drop off</span>
                                                            </div>
                                                            <input class="form-control" type="date">
                                                            <select class="form-select ms-3" aria-label="Default select example">
                                                                <option selected>12:00AM</option>
                                                                <option value="1">1:00AM</option>
                                                                <option value="2">2:00AM</option>
                                                                <option value="3">3:00AM</option>
                                                                <option value="4">4:00AM</option>
                                                                <option value="5">5:00AM</option>
                                                                <option value="6">6:00AM</option>
                                                                <option value="7">7:00AM</option>
                                                            </select>
                                                        </div>
                                                    </div>
                                                    <div class="col-12">
                                                        <button class="btn btn-light w-100 py-2">Book Now</button>
                                                    </div>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                    <div class="col-lg-6 d-none d-lg-flex fadeInRight animated" data-animation="fadeInRight" data-delay="1s" style="animation-delay: 1s;">
                                        <div class="text-start">
                                            <h1 class="display-5 text-white">Get 15% off your rental! Choose Your Model </h1>
                                            <p>Treat yourself in USA</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Carousel End -->

        <!-- Features Start -->
        <div class="container-fluid feature py-5">
            <div class="container py-5">
                <div class="text-center mx-auto pb-5 wow fadeInUp" data-wow-delay="0.1s" style="max-width: 800px;">
                    <h1 class="display-5 text-capitalize mb-3">Why Choose <span class="text-primary">Mega City Cab?</span></h1>
                    <p class="mb-0">
                        Mega City Cab is Colombo's trusted cab service, offering reliable, affordable, and comfortable rides. 
                        With thousands of satisfied customers, we are committed to making your travel experience seamless and enjoyable.
                    </p>
                </div>
                <div class="row g-4 align-items-center">
                    <div class="col-xl-4">
                        <div class="row gy-4 gx-0">
                            <div class="col-12 wow fadeInUp" data-wow-delay="0.1s">
                                <div class="feature-item">
                                    <div class="feature-icon">
                                        <span class="fa fa-trophy fa-2x"></span>
                                    </div>
                                    <div class="ms-4">
                                        <h5 class="mb-3">First-Class Services</h5>
                                        <p class="mb-0">
                                            We prioritize your comfort and safety with well-maintained vehicles and professional drivers.
                                        </p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-12 wow fadeInUp" data-wow-delay="0.3s">
                                <div class="feature-item">
                                    <div class="feature-icon">
                                        <span class="fa fa-road fa-2x"></span>
                                    </div>
                                    <div class="ms-4">
                                        <h5 class="mb-3">24/7 Road Assistance</h5>
                                        <p class="mb-0">
                                            Our support team is available round the clock to assist you with any issues during your journey.
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-12 col-xl-4 wow fadeInUp" data-wow-delay="0.2s">
                        <img src="img/features-img.png" class="img-fluid w-100" style="object-fit: cover;" alt="Mega City Cab Features">
                    </div>
                    <div class="col-xl-4">
                        <div class="row gy-4 gx-0">
                            <div class="col-12 wow fadeInUp" data-wow-delay="0.1s">
                                <div class="feature-item justify-content-end">
                                    <div class="text-end me-4">
                                        <h5 class="mb-3">Affordable Pricing</h5>
                                        <p class="mb-0">
                                            Enjoy high-quality services at competitive prices, with no hidden charges.
                                        </p>
                                    </div>
                                    <div class="feature-icon">
                                        <span class="fa fa-tag fa-2x"></span>
                                    </div>
                                </div>
                            </div>
                            <div class="col-12 wow fadeInUp" data-wow-delay="0.3s">
                                <div class="feature-item justify-content-end">
                                    <div class="text-end me-4">
                                        <h5 class="mb-3">Free Pick-Up & Drop-Off</h5>
                                        <p class="mb-0">
                                            We offer free pick-up and drop-off services within Colombo city limits.
                                        </p>
                                    </div>
                                    <div class="feature-icon">
                                        <span class="fa fa-map-pin fa-2x"></span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Features End -->

        <!-- About Start -->
        <div class="container-fluid overflow-hidden about py-5">
            <div class="container py-5">
                <div class="row g-5">
                    <div class="col-xl-6 wow fadeInLeft" data-wow-delay="0.2s">
                        <div class="about-item">
                            <div class="pb-5">
                                <h1 class="display-5 text-capitalize">About <span class="text-primary">Mega City Cab</span></h1>
                                <p class="mb-0">
                                    Mega City Cab has been serving Colombo for over a decade, providing reliable and affordable cab services. 
                                    Our mission is to make urban travel convenient, safe, and enjoyable for everyone.
                                </p>
                            </div>
                            <div class="row g-4">
                                <div class="col-lg-6">
                                    <div class="about-item-inner border p-4">
                                        <div class="about-icon mb-4">
                                            <img src="img/about-icon-1.png" class="img-fluid w-50 h-50" alt="Vision Icon">
                                        </div>
                                        <h5 class="mb-3">Our Vision</h5>
                                        <p class="mb-0">
                                            To become Colombo's most trusted and preferred cab service provider.
                                        </p>
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <div class="about-item-inner border p-4">
                                        <div class="about-icon mb-4">
                                            <img src="img/about-icon-2.png" class="img-fluid h-50 w-50" alt="Mission Icon">
                                        </div>
                                        <h5 class="mb-3">Our Mission</h5>
                                        <p class="mb-0">
                                            To deliver safe, reliable, and affordable transportation solutions to our customers.
                                        </p>
                                    </div>
                                </div>
                            </div>
                            <p class="text-item my-4">
                                At Mega City Cab, we believe in putting our customers first. Our team of professional drivers and 
                                well-maintained vehicles ensure that you reach your destination comfortably and on time.
                            </p>
                            <div class="row g-4">
                                <div class="col-lg-6">
                                    <div class="text-center rounded bg-secondary p-4">
                                        <h1 class="display-6 text-white">10+</h1>
                                        <h5 class="text-light mb-0">Years of Experience</h5>
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <div class="rounded">
                                        <p class="mb-2"><i class="fa fa-check-circle text-primary me-1"></i> Safe and Reliable Rides</p>
                                        <p class="mb-2"><i class="fa fa-check-circle text-primary me-1"></i> Affordable Pricing</p>
                                        <p class="mb-2"><i class="fa fa-check-circle text-primary me-1"></i> 24/7 Customer Support</p>
                                        <p class="mb-0"><i class="fa fa-check-circle text-primary me-1"></i> Free Pick-Up & Drop-Off</p>
                                    </div>
                                </div>
                                <div class="col-lg-5 d-flex align-items-center">
                                    <a href="services.jsp" class="btn btn-primary rounded py-3 px-5">Explore Our Services</a>
                                </div>
                                <div class="col-lg-7">
                                    <div class="d-flex align-items-center">
                                        <img src="img/founder.jpg" class="img-fluid rounded-circle border border-4 border-secondary" style="width: 100px; height: 100px;" alt="Founder Image">
                                        <div class="ms-4">
                                            <h4>Kavindu Fernando</h4>
                                            <p class="mb-0">Founder, Mega City Cab</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-6 wow fadeInRight" data-wow-delay="0.2s">
                        <div class="about-img">
                            <div class="img-1">
                                <img src="img/about-img.jpg" class="img-fluid rounded h-100 w-100" alt="About Us Image 1">
                            </div>
                            <div class="img-2">
                                <img src="img/about-img-1.jpg" class="img-fluid rounded w-100" alt="About Us Image 2">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- About End -->

        <!-- Fact Counter -->
        <div class="container-fluid counter bg-secondary py-5">
            <div class="container py-5">
                <div class="row g-5">
                    <div class="col-md-6 col-lg-6 col-xl-3 wow fadeInUp" data-wow-delay="0.1s">
                        <div class="counter-item text-center">
                            <div class="counter-item-icon mx-auto">
                                <i class="fas fa-thumbs-up fa-2x"></i>
                            </div>
                            <div class="counter-counting my-3">
                                <span class="text-white fs-2 fw-bold" data-toggle="counter-up">100</span>
                                <span class="h1 fw-bold text-white">+</span>
                            </div>
                            <h4 class="text-white mb-0">Happy Clients</h4>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-6 col-xl-3 wow fadeInUp" data-wow-delay="0.3s">
                        <div class="counter-item text-center">
                            <div class="counter-item-icon mx-auto">
                                <i class="fas fa-car-alt fa-2x"></i>
                            </div>
                            <div class="counter-counting my-3">
                                <span class="text-white fs-2 fw-bold" data-toggle="counter-up">56</span>
                                <span class="h1 fw-bold text-white">+</span>
                            </div>
                            <h4 class="text-white mb-0">Number of Cars</h4>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-6 col-xl-3 wow fadeInUp" data-wow-delay="0.5s">
                        <div class="counter-item text-center">
                            <div class="counter-item-icon mx-auto">
                                <i class="fas fa-building fa-2x"></i>
                            </div>
                            <div class="counter-counting my-3">
                                <span class="text-white fs-2 fw-bold" data-toggle="counter-up">2</span>
                                
                            </div>
                            <h4 class="text-white mb-0">Car Center</h4>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-6 col-xl-3 wow fadeInUp" data-wow-delay="0.7s">
                        <div class="counter-item text-center">
                            <div class="counter-item-icon mx-auto">
                                <i class="fas fa-clock fa-2x"></i>
                            </div>
                            <div class="counter-counting my-3">
                                <span class="text-white fs-2 fw-bold" data-toggle="counter-up">20</span>
                                <span class="h1 fw-bold text-white">+</span>
                            </div>
                            <h4 class="text-white mb-0">Drivers</h4>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Fact Counter -->

        <br>

        <!-- Car categories Start -->
        <div class="container-fluid categories pb-5">
            <div class="container pb-5">
                <div class="text-center mx-auto pb-5 wow fadeInUp" data-wow-delay="0.1s" style="max-width: 800px;">
                    <h1 class="display-5 text-capitalize mb-3">Vehicle <span class="text-primary">Categories</span></h1>
                    <p class="mb-0">
                        Explore our wide range of vehicles designed to meet your travel needs. 
                        From compact cars for quick trips to spacious SUVs for family outings, 
                        we have the perfect ride for every occasion.
                    </p>
                </div>
                <div class="categories-carousel owl-carousel wow fadeInUp" data-wow-delay="0.1s">
           
                    <% for (Car car : carList) { %>
                        <div class="categories-item p-4">
                            <div class="categories-item-inner">
                                <div class="categories-img rounded-top">
                                    <img src="img/car-2.png" class="img-fluid w-100 rounded-top" alt="">
                                </div>
                                <div class="categories-content rounded-bottom p-4">
                                    <h4><%= car.getName() %></h4>
                                    <div class="categories-review mb-4">
                                        <div class="me-3">3.5 Review</div>
                                        <div class="d-flex justify-content-center text-secondary">
                                            <i class="fas fa-star"></i>
                                            <i class="fas fa-star"></i>
                                            <i class="fas fa-star"></i>
                                            <i class="fas fa-star"></i>
                                            <i class="fas fa-star text-body"></i>
                                        </div>
                                    </div>
                                    <div class="mb-4">
                                        <h4 class="bg-white text-primary rounded-pill py-2 px-4 mb-0">$<%= car.getPrice() %>/Per Km</h4>
                                    </div>
                                    <div class="row gy-2 gx-0 text-center mb-4">
                                        <div class="col-4 border-end border-white">
                                            <i class="fa fa-users text-dark"></i> <span class="text-body ms-1">4 Seat</span>
                                        </div>
                                        <div class="col-4 border-end border-white">
                                            <i class="fa fa-car text-dark"></i> <span class="text-body ms-1">AT/MT</span>
                                        </div>
                                        <div class="col-4">
                                            <i class="fa fa-gas-pump text-dark"></i> <span class="text-body ms-1">Petrol</span>
                                        </div>
                                        <div class="col-4 border-end border-white">
                                            <i class="fa fa-car text-dark"></i> <span class="text-body ms-1">2015</span>
                                        </div>
                                        <div class="col-4 border-end border-white">
                                            <i class="fa fa-cogs text-dark"></i> <span class="text-body ms-1">AUTO</span>
                                        </div>
                                        <div class="col-4">
                                            <i class="fa fa-road text-dark"></i> <span class="text-body ms-1">27K</span>
                                        </div>
                                       
                                        <h5><%= car.isAvailable() ? "Available" : "Not Available" %></h5>
                                    </div>
                                        <a href="#" class="btn btn-primary rounded-pill d-flex justify-content-center py-3"
                                            onclick="checkBooking(<%= car.getId() %>)">Book Now</a>                                
                                </div>
                            </div>
                        </div>
                        
                    <% } %>
                        
                        

                </div>
            </div>
        </div>
        <!-- Car categories End -->

        <!-- Car Steps Start -->
        <div class="container-fluid steps py-5">
            <div class="container py-5">
                <div class="text-center mx-auto pb-5 wow fadeInUp" data-wow-delay="0.1s" style="max-width: 800px;">
                    <h1 class="display-5 text-capitalize text-white mb-3">Cental<span class="text-primary"> Process</span></h1>
                    
                </div>
                <div class="row g-4">
                    <div class="col-lg-4 wow fadeInUp" data-wow-delay="0.1s">
                        <div class="steps-item p-4 mb-4">
                            <h4>Come In Contact</h4>
                            <div class="setps-number">01.</div>
                        </div>
                    </div>
                    <div class="col-lg-4 wow fadeInUp" data-wow-delay="0.3s">
                        <div class="steps-item p-4 mb-4">
                            <h4>Choose A Car</h4>
                            <div class="setps-number">02.</div>
                        </div>
                    </div>
                    <div class="col-lg-4 wow fadeInUp" data-wow-delay="0.5s">
                        <div class="steps-item p-4 mb-4">
                            <h4>Enjoy Driving</h4>
                            <div class="setps-number">03.</div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Car Steps End -->


       
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
                alert("You must be logged in to book a car!");
                window.location.href = "login.jsp"; // Redirect to login page
            <% } else { %>
                window.location.href = "booking.jsp?carId=" + carId; // Proceed to booking page
            <% } %>
        }
    </script>
