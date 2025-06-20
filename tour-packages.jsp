<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="FlightFlow HTML5 Template">

    <title>FlightFlow</title>

    <!-- Favicon -->
    
     <link rel="stylesheet" href="static/css/bootstrap.min.css">
    <!-- All CSS files -->

    <link rel="stylesheet" href="static/css/app.css">
</head>

<body class="o-scroll" id="js-scroll">
    
    <!-- Back To Top Start -->
    <a href="#main-wrapper" id="backto-top" class="back-to-top"><i class="fas fa-angle-up"></i></a>
    <!-- Main Wrapper Start -->
    <div id="main-wrapper" class="main-wrapper overflow-hidden">

        <!-- Header Area Start -->
        <header>
            <nav class="main-menu">
                <div class="container-fluid">
                    <div class="main-menu__block">
                        <div class="main-menu__left">

                            <div class="main-menu__logo">
                                <a href="index.jsp">
                                    <img src="static/image/logo_me.png" alt="FlightFlow" width="200px">
                                </a>
                            </div>

                             <div class="main-menu__nav">
                                <ul class="main-menu__list">
                                    <li><a href="index.jsp">Home</a></li>
                                    
                                    <li class="dropdown">
                                        <a href="flight-listing.jsp">Flight</a>
                                    </li>
                                    <li class="dropdown">
                                        <a href="car-listing.jsp">Car</a>
                                    </li>
                                    <li class="dropdown">
                                        <a href="hotel-listing.jsp">Hotel</a>
                                    </li>
                                    <li><a href="" class="active">Tour Package</a></li>
                                    <li class="dropdown">
                                        <a href="javascript:void(0);">Pages</a>
                                        <ul class="sub-menu">
                                            <li><a href="about-us.jsp">About</a></li>
                                            <li><a href="contact.jsp">Contact</a></li>
                                            <li><a href="privacy-policy.jsp">Privacy Policy</a></li>
                                            <li><a href="login_page.jsp">Login</a></li>
                                            <li><a href="sign-up.jsp">Signup</a></li>
                                        </ul>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="main-menu__right">
                            <a href="#" class="main-menu__search search-toggler d-xl-flex d-none">
                                <i class="fal fa-search"></i>
                            </a>
                            <div class="main-menu-signup__login d-xl-flex d-none">
                                <a href="login_page.jsp" class="main-menu__login">
                                    Login
                                </a>
                                <div class="center_slach d-xl-flex d-none">/</div>
                                <a href="sign-up.jsp" class="main-menu__login">
                                    Signup
                                </a>
                            </div>
                            <a href="#" class="main-menu__toggler mobile-nav__toggler">
                                <i class="fa fa-bars"></i>
                            </a>
                        </div>
                    </div>
                </div>
            </nav>
        </header>
        <!-- Header Area end -->


        <!-- Title-Banner Start -->
        <div class="title-banner">
            <div class="container-fluid">
                <div class="row">
                    <div class="banner-area">
                        <img src="static/picture/vacation.png" alt="" class="left-image">
                        <div class="content-box">
                            <h1 class="fw-700 lightest-black">Tour<br class="title-break"> Package</h1>
                        </div>
                        <img src="static/picture/location1.png" alt="" class="right-image tour-image">
                    </div>
                </div>
            </div>
        </div>
        <!-- Title-Banner End -->

        <!-- Main Content Start -->
        <div class="page-content m-0">

            <!-- Benefits Start -->
            <section class="benefit p-40" data-sal="slide-up" data-sal-duration="800" data-sal-delay="100" data-sal-easing="ease-in-out">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-xl-4 col-lg-6 col-md-6 mb-xl-0 mb-24">
                            <div class="benefit-block bg-white">
                                <div class="image-box">
                                    <img src="static/picture/benefit-11.png" alt="">
                                </div>
                                <div class="text-box">
                                    <h4 class="lightest-black">Free Cancellation</h4>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-4 col-lg-6 col-md-6 mb-lg-0 mb-24">
                            <div class="benefit-block bg-white">
                                <div class="image-box">
                                    <img src="static/picture/benefit-21.png" alt="">
                                </div>
                                <div class="text-box">
                                    <h4 class="lightest-black">No Hidden Charges</h4>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-4 col-lg-6 col-md-6 ">
                            <div class="benefit-block bg-white">
                                <div class="image-box">
                                    <img src="static/picture/benefit-31.png" alt="">
                                </div>
                                <div class="text-box">
                                    <h4 class="lightest-black">24/7 Customer Service</h4>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!-- Benefits End -->

            <!-- Hotel Listing Start -->
            <section class="hotel-listing p-40 mb-24">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-xl-4 mb-xl-0 mb-32">
                            <div class="hotel-sidebar mb-32">
                                <div class="hotel-sidebar_title">
                                    <h4 class="color-black">Search</h4>
                                </div>
                                <form action="hotel-listing.jsp" method="post" class="bg-white contact-form">
                                    <div class="hotel-info mb-16">
                                        <div class="custom-sel-input-block location-select">
                                            <label for="flight_desination" class="h-16 color-medium-gray mb-2">Destination/ property</label>
                                            <i class="fal fa-search"></i>
                                            <input type="text" class="sel-input location-input auto-input-location" id="flight_desination" placeholder="Search">
                                            <div class="slector-wrapper"></div>
                                        </div>
                                    </div>
                                    <div class="hotel-info mb-16">
                                        <div class="custom-sel-input-block m-0">
                                            <label for="flight_date" class="h-16 color-medium-gray mb-2">Check-in date</label>
                                            <div class="d-flex align-items-center gap-8">
                                                <i class="fal fa-calendar-alt "></i>
                                                <input type="text" class="sel-input date_to" id="flight_date" placeholder="Check-in date">
                                            </div>
                                        </div>
                                    </div>
                                    <button type="submit" class="cus-btn full-width">Search</button>
                                </form>
                            </div>
                            <div class="hotel-sidebar">
                                <div class="hotel-sidebar_title">
                                    <h4 class="color-black">Filter By:</h4>
                                </div>
                                <div class="filter-block p-24 bg-white">
                                    <div class="title mb-32">
                                        <h4 class="color-black">Price Range (Per Night) </h4>
                                    </div>
                                    <div class="content-block">
                                        <div class="slider-track mb-32">
                                            <div class="d-flex justify-content-between mb-4p">
                                                <h5>$100</h5>
                                                <h5>$3000</h5>
                                            </div>
                                            <input type="text" class="js-slider form-control" value="0">
                                        </div>
                                    </div>
                                    <hr class="bg-sec-gray mb-32">
                                    <h4 class="color-black mb-24" data-sal="slide-right" data-sal-duration="800" data-sal-delay="100" data-sal-easing="ease-in-out">Popular Filters </h4>
                                    <div class="d-flex justify-content-between mb-24">
                                        <div class="filter-checkbox">
                                            <input type="checkbox" id="separate">
                                            <label for="separate" class="color-black">Separate Rooms</label>
                                        </div>
                                        <h6 class="color-black">(02) </h6>
                                    </div>
                                    <div class="d-flex justify-content-between mb-24">
                                        <div class="filter-checkbox">
                                            <input type="checkbox" id="selfCatering">
                                            <label for="selfCatering" class="color-black">Self Catering</label>
                                        </div>
                                        <h6 class="color-black">(04) </h6>
                                    </div>
                                    <div class="d-flex justify-content-between mb-24">
                                        <div class="filter-checkbox">
                                            <input type="checkbox" id="noPrepayment">
                                            <label for="noPrepayment" class="color-black">No Prepayment</label>
                                        </div>
                                        <h6 class="color-black">(06) </h6>
                                    </div>
                                    
                                    <hr class="bg-sec-gray mb-32">
                                    <h4 class="color-black mb-24" data-sal="slide-left" data-sal-duration="800" data-sal-delay="100" data-sal-easing="ease-in-out">Fun things to do </h4>
                                    <div class="d-flex justify-content-between mb-24">
                                        <div class="filter-checkbox">
                                            <input type="checkbox" id="cityTour">
                                            <label for="cityTour" class="color-black">City Tour</label>
                                        </div>
                                        <h6 class="color-black">(02) </h6>
                                    </div>
                                    <div class="d-flex justify-content-between mb-24">
                                        <div class="filter-checkbox">
                                            <input type="checkbox" id="heritage">
                                            <label for="heritage" class="color-black">Heritage</label>
                                        </div>
                                        <h6 class="color-black">(04) </h6>
                                    </div>
                                    <div class="d-flex justify-content-between mb-24">
                                        <div class="filter-checkbox">
                                            <input type="checkbox" id="localities">
                                            <label for="localities" class="color-black">Localities</label>
                                        </div>
                                        <h6 class="color-black">(06) </h6>
                                    </div>
                                    
                                    <hr class="bg-sec-gray mb-32">
                                    <h4 class="color-black mb-24" data-sal="slide-right" data-sal-duration="800" data-sal-delay="100" data-sal-easing="ease-in-out"> Cancellation Policy </h4>
                                    <div class="d-flex justify-content-between mb-24">
                                        <div class="filter-checkbox">
                                            <input type="checkbox" id="freeCancellation">
                                            <label for="freeCancellation" class="color-black">Free Cancellation</label>
                                        </div>
                                        <h6 class="color-black">(02) </h6>
                                    </div>
                                    <div class="d-flex justify-content-between mb-24">
                                        <div class="filter-checkbox">
                                            <input type="checkbox" id="bookCredit">
                                            <label for="bookCredit" class="color-black">Book without credit card</label>
                                        </div>
                                        <h6 class="color-black">(04) </h6>
                                    </div>
                                    <div class="d-flex justify-content-between mb-24">
                                        <div class="filter-checkbox">
                                            <input type="checkbox" id="pre_payment">
                                            <label for="pre_payment" class="color-black">No Prepayment</label>
                                        </div>
                                        <h6 class="color-black">(06) </h6>
                                    </div>
                                    <hr class="bg-sec-gray mb-32">
                                    <h4 class="color-black mb-24" data-sal="slide-left" data-sal-duration="800" data-sal-delay="100" data-sal-easing="ease-in-out">Facilities </h4>
                                    <div class="d-flex justify-content-between mb-24">
                                        <div class="filter-checkbox">
                                            <input type="checkbox" id="nonSmoking">
                                            <label for="nonSmoking" class="color-black">Non-Smoking Rooms</label>
                                        </div>
                                        <h6 class="color-black">(02) </h6>
                                    </div>
                                    <div class="d-flex justify-content-between mb-24">
                                        <div class="filter-checkbox">
                                            <input type="checkbox" id="freeWiFi">
                                            <label for="freeWiFi" class="color-black">Free WiFi</label>
                                        </div>
                                        <h6 class="color-black">(04) </h6>
                                    </div>
                                    <div class="d-flex justify-content-between mb-24">
                                        <div class="filter-checkbox">
                                            <input type="checkbox" id="familyRoom">
                                            <label for="familyRoom" class="color-black">Family Rooms</label>
                                        </div>
                                        <h6 class="color-black">(06) </h6>
                                    </div>

                                </div>
                            </div>
                        </div>
                        <div class="col-xl-8">
                            <div class="hotel-block bg-white mb-32">
                                <div class="row align-items-center">
                                    <div class="col-lg-4 col-md-4 col-sm-12" data-sal="slide-right" data-sal-duration="800" data-sal-delay="100" data-sal-easing="ease-in-out">
                                        <div class="image-box tour-package">
                                            <a href="flight-booking.jsp"><img src="static/picture/tour-1.png" alt=""></a>
                                            <h5 class="tour-days color-sec">3 Days</h5>
                                        </div>
                                    </div>
                                    <div class="col-lg-5 col-md-5 col-sm-6" data-sal="slide-up" data-sal-duration="800" data-sal-delay="100" data-sal-easing="ease-in-out">
                                        <div class="hotel-detail p-0 mt-sm-0 mt-2">
                                            <div class="rating-star mb-8">
                                                <i class="fas fa-star color-sec"></i>
                                                <i class="fas fa-star color-sec"></i>
                                                <i class="fas fa-star color-sec"></i>
                                                <i class="fas fa-star color-sec"></i>
                                                <i class="fas fa-star color-sec"></i>
                                            </div>
                                            <a href="flight-booking.jsp" class="mb-32 h4">Dubai First Time Visiting</a>
                                            <div class="d-flex gap-1">
                                                <img src="static/picture/location-bk.png" alt="">
                                                <h6 class="light-black">Pick-up Location:</h6>
                                            </div>
                                            <h6 class="dark-gray pl-28 mb-16">Luxury Car Pickup</h6>

                                            <div class="d-flex gap-1">
                                                <img src="static/picture/food-bk.png" alt="">
                                                <h6 class="light-black">3 Meals/day:</h6>
                                            </div>
                                            <h6 class="dark-gray pl-28 mb-16">Localities / Your Choice</h6>

                                            <div class="d-flex gap-1">
                                                <img src="static/picture/ticket-bk.png" alt="">
                                                <h6 class="light-black">All Tickets Covered:</h6>
                                            </div>
                                            <h6 class="dark-gray pl-28 mb-16">Experience Guides</h6>

                                            <div class="d-flex gap-1">
                                                <img src="static/picture/hotel.png" alt="">
                                                <h6 class="light-black">Premium Lodgings:</h6>
                                            </div>
                                            <h6 class="dark-gray pl-28 mb-16">Fully Equipped Rooms</h6>
                                        </div>
                                    </div>
                                    <div class="col-lg-3 col-md-3 col-sm-6" data-sal="slide-left" data-sal-duration="800" data-sal-delay="100" data-sal-easing="ease-in-out">
                                        <div class="pricing-area p-0">
                                            <h6 class="pre-reg light-black mb-32">Pre-Registration available</h6>
                                            <h3 class="color-black fw-700">$ 500.00 <span class="h6 ">/person</span></h3>
                                            <h6 class="light-black mb-32">Total $550.40</h6>
                                            <a href="flight-booking.jsp" class="cus-btn full-width mb-16">Select</a>
                                            <a href="contact-us.jsp" class="cus-btn-2 btn-sec">Email Quotes</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            
                            <div class="hotel-block bg-white mb-32">
                                <div class="row align-items-center">
                                    <div class="col-lg-4 col-md-4 col-sm-12" data-sal="slide-right" data-sal-duration="800" data-sal-delay="100" data-sal-easing="ease-in-out">
                                        <div class="image-box tour-package">
                                            <a href="flight-booking.jsp"><img src="static/picture/tour-2.png" alt=""></a>
                                            <h5 class="tour-days color-sec">5 Days</h5>
                                        </div>
                                    </div>
                                    <div class="col-lg-5 col-md-5 col-sm-6" data-sal="slide-up" data-sal-duration="800" data-sal-delay="100" data-sal-easing="ease-in-out">
                                        <div class="hotel-detail p-0 mt-sm-0 mt-2">
                                            <div class="rating-star mb-8">
                                                <i class="fas fa-star color-sec"></i>
                                                <i class="fas fa-star color-sec"></i>
                                                <i class="fas fa-star color-sec"></i>
                                                <i class="fas fa-star color-sec"></i>
                                                <i class="fas fa-star color-sec"></i>
                                            </div>
                                            <a href="flight-booking.jsp" class="mb-32 h4">Palazzo Versace</a>
                                            <div class="d-flex gap-1">
                                                <img src="static/picture/location-bk.png" alt="">
                                                <h6 class="light-black">Pick-up Location:</h6>
                                            </div>
                                            <h6 class="dark-gray pl-28 mb-16">Luxury Car Pickup</h6>

                                            <div class="d-flex gap-1">
                                                <img src="static/picture/food-bk.png" alt="">
                                                <h6 class="light-black">3 Meals/day:</h6>
                                            </div>
                                            <h6 class="dark-gray pl-28 mb-16">Localities / Your Choice</h6>

                                            <div class="d-flex gap-1">
                                                <img src="static/picture/ticket-bk.png" alt="">
                                                <h6 class="light-black">All Tickets Covered:</h6>
                                            </div>
                                            <h6 class="dark-gray pl-28 mb-16">Experience Guides</h6>

                                            <div class="d-flex gap-1">
                                                <img src="static/picture/hotel.png" alt="">
                                                <h6 class="light-black">Premium Lodgings:</h6>
                                            </div>
                                            <h6 class="dark-gray pl-28 mb-16">Fully Equipped Rooms</h6>
                                        </div>
                                    </div>
                                    <div class="col-lg-3 col-md-3 col-sm-6" data-sal="slide-left" data-sal-duration="800" data-sal-delay="100" data-sal-easing="ease-in-out">
                                        <div class="pricing-area p-0">
                                            <h6 class="pre-reg light-black mb-32">Pre-Registration available</h6>
                                            <h3 class="color-black fw-700">$ 500.00 <span class="h6 ">/person</span></h3>
                                            <h6 class="light-black mb-32">Total $550.40</h6>
                                            <a href="flight-booking.jsp" class="cus-btn full-width mb-16">Select</a>
                                            <a href="contact-us.jsp" class="cus-btn-2 btn-sec">Email Quotes</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            
                            <div class="hotel-block bg-white mb-32">
                                <div class="row align-items-center">
                                    <div class="col-lg-4 col-md-4 col-sm-12" data-sal="slide-right" data-sal-duration="800" data-sal-delay="100" data-sal-easing="ease-in-out">
                                        <div class="image-box tour-package">
                                            <a href="flight-booking.jsp"><img src="static/picture/tour-3.png" alt=""></a>
                                            <h5 class="tour-days color-sec">5 Days</h5>
                                        </div>
                                    </div>
                                    <div class="col-lg-5 col-md-5 col-sm-6" data-sal="slide-up" data-sal-duration="800" data-sal-delay="100" data-sal-easing="ease-in-out">
                                        <div class="hotel-detail p-0 mt-sm-0 mt-2">
                                            <div class="rating-star mb-8">
                                                <i class="fas fa-star color-sec"></i>
                                                <i class="fas fa-star color-sec"></i>
                                                <i class="fas fa-star color-sec"></i>
                                                <i class="fas fa-star color-sec"></i>
                                                <i class="fas fa-star color-sec"></i>
                                            </div>
                                            <a href="flight-booking.jsp" class="mb-32 h4">Island Visit</a>
                                            <div class="d-flex gap-1">
                                                <img src="static/picture/location-bk.png" alt="">
                                                <h6 class="light-black">Pick-up Location:</h6>
                                            </div>
                                            <h6 class="dark-gray pl-28 mb-16">Luxury Car Pickup</h6>

                                            <div class="d-flex gap-1">
                                                <img src="static/picture/food-bk.png" alt="">
                                                <h6 class="light-black">3 Meals/day:</h6>
                                            </div>
                                            <h6 class="dark-gray pl-28 mb-16">Localities / Your Choice</h6>

                                            <div class="d-flex gap-1">
                                                <img src="static/picture/ticket-bk.png" alt="">
                                                <h6 class="light-black">All Tickets Covered:</h6>
                                            </div>
                                            <h6 class="dark-gray pl-28 mb-16">Experience Guides</h6>

                                            <div class="d-flex gap-1">
                                                <img src="static/picture/hotel.png" alt="">
                                                <h6 class="light-black">Premium Lodgings:</h6>
                                            </div>
                                            <h6 class="dark-gray pl-28 mb-16">Fully Equipped Rooms</h6>
                                        </div>
                                    </div>
                                    <div class="col-lg-3 col-md-3 col-sm-6" data-sal="slide-left" data-sal-duration="800" data-sal-delay="100" data-sal-easing="ease-in-out">
                                        <div class="pricing-area p-0">
                                            <h6 class="pre-reg light-black mb-32">Pre-Registration available</h6>
                                            <h3 class="color-black fw-700">$ 500.00 <span class="h6 ">/person</span></h3>
                                            <h6 class="light-black mb-32">Total $550.40</h6>
                                            <a href="flight-booking.jsp" class="cus-btn full-width mb-16">Select</a>
                                            <a href="contact-us.jsp" class="cus-btn-2 btn-sec">Email Quotes</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            
                            <div class="hotel-block bg-white mb-32">
                                <div class="row align-items-center">
                                    <div class="col-lg-4 col-md-4 col-sm-12" data-sal="slide-right" data-sal-duration="800" data-sal-delay="100" data-sal-easing="ease-in-out">
                                        <div class="image-box tour-package">
                                            <a href="flight-booking.jsp"><img src="static/picture/tour-4.png" alt=""></a>
                                            <h5 class="tour-days color-sec">7 Days</h5>
                                        </div>
                                    </div>
                                    <div class="col-lg-5 col-md-5 col-sm-6" data-sal="slide-up" data-sal-duration="800" data-sal-delay="100" data-sal-easing="ease-in-out">
                                        <div class="hotel-detail p-0 mt-sm-0 mt-2">
                                            <div class="rating-star mb-8">
                                                <i class="fas fa-star color-sec"></i>
                                                <i class="fas fa-star color-sec"></i>
                                                <i class="fas fa-star color-sec"></i>
                                                <i class="fas fa-star color-sec"></i>
                                                <i class="fas fa-star color-sec"></i>
                                            </div>
                                            <a href="flight-booking.jsp" class="mb-32 h4">Berlin Is Waiting</a>
                                            <div class="d-flex gap-1">
                                                <img src="static/picture/location-bk.png" alt="">
                                                <h6 class="light-black">Pick-up Location:</h6>
                                            </div>
                                            <h6 class="dark-gray pl-28 mb-16">Luxury Car Pickup</h6>

                                            <div class="d-flex gap-1">
                                                <img src="static/picture/food-bk.png" alt="">
                                                <h6 class="light-black">3 Meals/day:</h6>
                                            </div>
                                            <h6 class="dark-gray pl-28 mb-16">Localities / Your Choice</h6>

                                            <div class="d-flex gap-1">
                                                <img src="static/picture/ticket-bk.png" alt="">
                                                <h6 class="light-black">All Tickets Covered:</h6>
                                            </div>
                                            <h6 class="dark-gray pl-28 mb-16">Experience Guides</h6>

                                            <div class="d-flex gap-1">
                                                <img src="static/picture/hotel.png" alt="">
                                                <h6 class="light-black">Premium Lodgings:</h6>
                                            </div>
                                            <h6 class="dark-gray pl-28 mb-16">Fully Equipped Rooms</h6>
                                        </div>
                                    </div>
                                    <div class="col-lg-3 col-md-3 col-sm-6" data-sal="slide-left" data-sal-duration="800" data-sal-delay="100" data-sal-easing="ease-in-out">
                                        <div class="pricing-area p-0">
                                            <h6 class="pre-reg light-black mb-32">Pre-Registration available</h6>
                                            <h3 class="color-black fw-700">$ 500.00 <span class="h6 ">/person</span></h3>
                                            <h6 class="light-black mb-32">Total $550.40</h6>
                                            <a href="flight-booking.jsp" class="cus-btn full-width mb-16">Select</a>
                                            <a href="contact-us.jsp" class="cus-btn-2 btn-sec">Email Quotes</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            
                            <div class="hotel-block bg-white mb-32">
                                <div class="row align-items-center">
                                    <div class="col-lg-4 col-md-4 col-sm-12" data-sal="slide-right" data-sal-duration="800" data-sal-delay="100" data-sal-easing="ease-in-out">
                                        <div class="image-box tour-package">
                                            <a href="flight-booking.jsp"><img src="static/picture/tour-1.png" alt=""></a>
                                            <h5 class="tour-days color-sec">7 Days</h5>
                                        </div>
                                    </div>
                                    <div class="col-lg-5 col-md-5 col-sm-6" data-sal="slide-up" data-sal-duration="800" data-sal-delay="100" data-sal-easing="ease-in-out">
                                        <div class="hotel-detail p-0 mt-sm-0 mt-2">
                                            <div class="rating-star mb-8">
                                                <i class="fas fa-star color-sec"></i>
                                                <i class="fas fa-star color-sec"></i>
                                                <i class="fas fa-star color-sec"></i>
                                                <i class="fas fa-star color-sec"></i>
                                                <i class="fas fa-star color-sec"></i>
                                            </div>
                                            <a href="flight-booking.jsp" class="mb-32 h4">Dubai First Time Visiting</a>
                                            <div class="d-flex gap-1">
                                                <img src="static/picture/location-bk.png" alt="">
                                                <h6 class="light-black">Pick-up Location:</h6>
                                            </div>
                                            <h6 class="dark-gray pl-28 mb-16">Luxury Car Pickup</h6>

                                            <div class="d-flex gap-1">
                                                <img src="static/picture/food-bk.png" alt="">
                                                <h6 class="light-black">3 Meals/day:</h6>
                                            </div>
                                            <h6 class="dark-gray pl-28 mb-16">Localities / Your Choice</h6>

                                            <div class="d-flex gap-1">
                                                <img src="static/picture/ticket-bk.png" alt="">
                                                <h6 class="light-black">All Tickets Covered:</h6>
                                            </div>
                                            <h6 class="dark-gray pl-28 mb-16">Experience Guides</h6>

                                            <div class="d-flex gap-1">
                                                <img src="static/picture/hotel.png" alt="">
                                                <h6 class="light-black">Premium Lodgings:</h6>
                                            </div>
                                            <h6 class="dark-gray pl-28 mb-16">Fully Equipped Rooms</h6>
                                        </div>
                                    </div>
                                    <div class="col-lg-3 col-md-3 col-sm-6" data-sal="slide-left" data-sal-duration="800" data-sal-delay="100" data-sal-easing="ease-in-out">
                                        <div class="pricing-area p-0">
                                            <h6 class="pre-reg light-black mb-32">Pre-Registration available</h6>
                                            <h3 class="color-black fw-700">$ 500.00 <span class="h6 ">/person</span></h3>
                                            <h6 class="light-black mb-32">Total $550.40</h6>
                                            <a href="flight-booking.jsp" class="cus-btn full-width mb-16">Select</a>
                                            <a href="contact-us.jsp" class="cus-btn-2 btn-sec">Email Quotes</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            
                            <div class="paginations">
                                <ul class="unstyled">
                                  <li class="active"><a href="" class="h6 fw-600 mb-0">1</a></li>
                                  <li><a href="" class="h6 fw-600 mb-0">2</a></li>
                                  <li><a href="" class="h6 fw-600 mb-0">3</a></li>
                                  <li><a href="" class="h6 fw-600 mb-0">4</a></li>
                                  <li class="arrow"><a href="" class="h4 fw-600 mb-0"><i class="far fa-chevron-right"></i></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!-- Hotel Listing End -->
          
            
        </div>
        <!-- Main Content End -->

        <!-- Footer Start -->
        <footer class="bg-white p-40" data-sal="slide-down" data-sal-duration="800" data-sal-delay="100" data-sal-easing="ease-in-out">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-xl-2 col-lg-2 col-md-6 col-6 mb-lg-0 mb-32">
                        <h4 class="light-black mb-24">Booking</h4>
                        <div class="our-links">
                            <ul class="unstyled">
                                <li class="mb-16"><a href="flight-booking.jsp" class="light-black">Book Flights</a>
                                </li>
                                <li class="mb-16"><a href="hotel-packages.jsp" class="light-black">Hotel Services</a>
                                </li>
                                <li class="mb-16"><a href="car-booking.jsp" class="light-black">Transportation</a></li>
                                <li class="mb-16"><a href="tour-packages.jsp" class="light-black">Planning Your
                                        Trip</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-xl-2 col-lg-2 col-md-6 col-6 mb-lg-0 mb-32">
                        <h4 class="light-black mb-24">Useful Links</h4>
                        <div class="our-links">
                            <ul class="unstyled">
                                <li class="mb-16"><a href="" class="light-black">Home</a>
                                </li>
                                <li class="mb-16"><a href="about-us.jsp" class="light-black">About </a></li>
                                <li class="mb-16"><a href="contact.jsp" class="light-black">Contact Us</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-xl-2 col-lg-2 col-md-6 col-6 mb-md-0 mb-32">
                        <h4 class="light-black mb-24">Manage</h4>
                        <div class="our-links">
                            <ul class="unstyled">
                                <li class="mb-16"><a href="flight-booking.jsp" class="light-black">Check-in</a></li>
                                <li class="mb-16"><a href="tour-packages.jsp" class="light-black">Manage Your
                                        Booking</a></li>
                                <li class="mb-16"><a href="car-listing.jsp" class="light-black">Char Drive</a>
                                </li>
                                <li class="mb-16"><a href="flight-listing.jsp" class="light-black">Flight Status</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-xl-3 col-lg-3 col-md-6 col-sm-6">
                        <h4 class="light-black mb-16">Contact Us</h4>
                        <div class="follow-us">
                            <ul class="unstyled">
                                <li class="mb-8"><img src="static/picture/location-bk.png" alt="">&nbsp;&nbsp;PRH5+M42,
                                    Depalpur Rd,Devi &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Ahillyabai Holkar Airport &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Area,Indore,(MP-452005).</li>
                                <li class="mb-8 h-27 color-primary"><img src="static/picture/telephone.png" alt="">&nbsp;&nbsp;+1 234 567 890</li>
                                <li class="mb-24"><a href=""><img src="static/picture/mail.png" alt="">&nbsp;&nbsp;email@example.com</a></li>
                            </ul>
                        </div>
                    </div>
                    
                    <div class="col-xl-3 col-lg-3 col-md-6 col-sm-6">
                        <div class="social-link mb-32">
                            <h6 class="light-black mb-8">Follow Us!</h6>
                            <ul class="unstyled">
                                <li><a href="" class="active"><img src="static/picture/instagram.png" alt=""></a></li>
                                <li><a href=""><img src="static/picture/facebook.png" alt=""></a></li>
                                <li><a href=""><img src="static/picture/linkedin.png" alt=""></a></li>
                                <li><a href=""><img src="static/picture/twitter.png" alt=""></a></li>
                            </ul>
                        </div>
                        
                    </div>
                    
                    
                </div>
            </div>
             
        </footer>
        <div id="copy1">Copyright &copy; 2025.Company name All rights reserved.</div>
        <!-- Footer Area End  -->

        <!-- modal-popup area Start  -->
         
        <!-- search-popup end-->
    </div>


    <!-- Mobile Menu Start -->
     
    <!-- Mobile Menu End -->

    <!-- Jquery Js -->
     

    <!-- Site Scripts -->
    <!--  
    <script src="static/js/date.js"></script>
    <script src="static/js/app.js"></script>    -->
</body>

</html>