<%@page import="Airlines.entites.Hotel_Detail" %>
<%@page import="Airlines.Dao.Hotel_listing_Dao" %>
<%@page import="Airlines.FactoryProvider" %>
<%@page import="java.util.List" %>
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
   <%
   String destination = request.getParameter("destination");
   String check_in = request.getParameter("check_in");
   String check_out = request.getParameter("check_out");
   %>
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
                                        <a href="hotel-listing.jsp" class="active">Hotel</a>
                                    </li>
                                    <li><a href="tour-packages.jsp">Tour Package</a></li>

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
                            <h1 class="fw-700 lightest-black">Hotel <br class="title-break"> Listing</h1>
                        </div>
                        <img src="static/picture/hotel1.png" alt="" class="right-image">
                    </div>
                </div>
            </div>
        </div>
        <!-- Title-Banner End -->

        <!-- Main Content Start -->
        <div class="page-content m-0">

            <!-- Benefits Start -->
    
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
                   <form action="hotel-listing.jsp" class="bg-white contact-form">
                                    <div class="hotel-info mb-16">
                                        <div class="custom-sel-input-block location-select">
                                            <label for="destinationSearch" class="h-16 color-medium-gray mb-2">Destination/ property</label>
                                            <i class="fal fa-search"></i>
                                            <input type="text" class="sel-input location-input auto-input-location" name="destination" id="destinationSearch" placeholder="Search">
                                            <div class="slector-wrapper"></div>
                                        </div>
                                    </div>
                                    <div class="hotel-info mb-16">
                                        <div class="custom-sel-input-block m-0">
                                            <label for="dateCheckIn" class="h-16 color-medium-gray mb-1">Check-in
                                                date</label>
                                            <div class="d-flex align-items-center gap-8">
                                                <i class="fal fa-calendar-alt "></i>
                                                <input type="text" class="sel-input date_to" name="check_in" id="dateCheckIn" placeholder="Check-in date">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="hotel-info mb-16">
                                        <div class="custom-sel-input-block m-0">
                                            <label for="dateCheckOut" class="h-16 color-medium-gray mb-1">Check-out
                                                date</label>
                                            <div class="d-flex align-items-center gap-8">
                                                <i class="fal fa-calendar-alt "></i>
                                                <input type="text" class="sel-input date_to" name="check_out" id="dateCheckOut" placeholder="Check-out date">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="hotel-info mb-16">
                                        <div>
                                            <div class="custom-sel-input-block">
                                                <div class="h-16 color-medium-gray">Guests and Room</div>
                                                <div class="room-booking color-medium-gray h6"> <span class="total-guest">1</span> Guests / <span class="guest-class">Room</span></div>
                                                <div class="passenger-area room-box bg-white light-shadow br-5 p-24">
                                                    <h4 class="color-black mb-32">Room</h4>
                                                    <div class="passenger-box mb-24">
                                                        <div class="row">
                                                            <div class="col-md-7 col-sm-6">
                                                                <div class="content-box">
                                                                    <h5 class="lightest-black">Adult</h5>
                                                                    <p class="color-medium-gray light">Above
                                                                        12 years.</p>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-5 col-sm-6">
                                                                <div class="quantity quantity-wrap">
                                                                    <input class="decrement" type="button" value="-">
                                                                    <input type="text" name="quantity" value="0" maxlength="2" size="1" id="adult_2" class="number">
                                                                    <input class="increment" type="button" value="+">
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="passenger-box mb-24">
                                                        <div class="row">
                                                            <div class="col-md-7 col-sm-6">
                                                                <div class="content-box">
                                                                    <h5 class="lightest-black">Child</h5>
                                                                    <p class="color-medium-gray light">2-11
                                                                        years on travel date.</p>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-5 col-sm-6">
                                                                <div class="quantity quantity-wrap">
                                                                    <input class="decrement" type="button" value="-">
                                                                    <input type="text" name="quantity" value="0" maxlength="2" size="1" id="child_2" class="number">
                                                                    <input class="increment" type="button" value="+">
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="passenger-box mb-32">
                                                        <div class="row">
                                                            <div class="col-md-7 col-sm-6">
                                                                <div class="content-box">
                                                                    <h5 class="lightest-black">Infant</h5>
                                                                    <p class="color-medium-gray light">Below
                                                                        2 years.</p>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-5 col-sm-6">
                                                                <div class="quantity quantity-wrap">
                                                                    <input class="decrement" type="button" value="-">
                                                                    <input type="text" name="quantity" value="0" maxlength="2" size="1" id="infant_2" class="number">
                                                                    <input class="increment" type="button" value="+">
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="d-flex justify-content-between align-items-center">
                                                        <a href="#addroom" class="color-primary"><i class="fal fa-plus color-primary"></i>&nbsp;Add
                                                            Rooms</a>
                                                        <a href="#done" class="cus-btn done">Done</a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="filter-checkbox mb-16">
                                        <input type="checkbox" id="rentalHoliday">
                                        <label for="rentalHoliday" class="">Show me holiday rentals</label>
                                    </div>
                                    <div class="filter-checkbox mb-32">
                                        <input type="checkbox" id="travel">
                                        <label for="travel" class="">I'm travelling for work</label>
                                    </div>
                                    <button type="submit" class="cus-btn full-width">Search</button>
                                </form>
                            </div>
                            <div class="hotel-sidebar" data-sal="slide-left" data-sal-duration="800" data-sal-delay="100" data-sal-easing="ease-in-out">
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
                                                <h5>Rs100</h5>
                                                <h5>Rs3000</h5>
                                            </div>
                                            <input type="text" class="js-slider form-control" value="0">
                                        </div>
                                    </div>
                                    <hr class="bg-sec-gray mb-32">
                                    <h4 class="color-black mb-24">Popular Filters </h4>
                                    <div class="d-flex justify-content-between mb-24">
                                        <div class="filter-checkbox">
                                            <input type="checkbox" id="bed">
                                            <label for="bed" class="color-black">Twin Beds</label>
                                        </div>
                                        <h6 class="color-black">(02) </h6>
                                    </div>
                                    <div class="d-flex justify-content-between mb-24">
                                        <div class="filter-checkbox">
                                            <input type="checkbox" id="self">
                                            <label for="self" class="color-black">Self Catering</label>
                                        </div>
                                        <h6 class="color-black">(04) </h6>
                                    </div>
                                    <div class="d-flex justify-content-between mb-24">
                                        <div class="filter-checkbox">
                                            <input type="checkbox" id="prepayment">
                                            <label for="prepayment" class="color-black">No Prepayment</label>
                                        </div>
                                        <h6 class="color-black">(06) </h6>
                                    </div>
                                    <div class="d-flex justify-content-between mb-24">
                                        <div class="filter-checkbox">
                                            <input type="checkbox" id="stars">
                                            <label for="stars" class="color-black">3 Stars</label>
                                        </div>
                                        <h6 class="color-black">(08) </h6>
                                    </div>
                                    <hr class="bg-sec-gray mb-32">
                                    <h4 class="color-black mb-24">Travel Sustainable </h4>
                                    <div class="d-flex justify-content-between mb-24">
                                        <div class="filter-checkbox">
                                            <input type="checkbox" id="level">
                                            <label for="level" class="color-black">Level 3+</label>
                                        </div>
                                        <h6 class="color-black">(02) </h6>
                                    </div>
                                    <div class="d-flex justify-content-between mb-24">
                                        <div class="filter-checkbox">
                                            <input type="checkbox" id="level-3">
                                            <label for="level-3" class="color-black">Level 3 and Higher</label>
                                        </div>
                                        <h6 class="color-black">(04) </h6>
                                    </div>
                                    <div class="d-flex justify-content-between mb-24">
                                        <div class="filter-checkbox">
                                            <input type="checkbox" id="level-2">
                                            <label for="level-2" class="color-black">Level 2 and Higher</label>
                                        </div>
                                        <h6 class="color-black">(06) </h6>
                                    </div>
                                    <div class="d-flex justify-content-between mb-24">
                                        <div class="filter-checkbox">
                                            <input type="checkbox" id="level-1">
                                            <label for="level-1" class="color-black">Level 1 and Higher</label>
                                        </div>
                                        <h6 class="color-black">(08) </h6>
                                    </div>
                                    <hr class="bg-sec-gray mb-32">
                                    <h4 class="color-black mb-24">Property Rating </h4>
                                    <div class="d-flex justify-content-between mb-24">
                                        <div class="filter-checkbox">
                                            <input type="checkbox" id="star-1">
                                            <label for="star-1" class="color-black">1 Star</label>
                                        </div>
                                        <h6 class="color-black">(02) </h6>
                                    </div>
                                    <div class="d-flex justify-content-between mb-24">
                                        <div class="filter-checkbox">
                                            <input type="checkbox" id="star-2">
                                            <label for="star-2" class="color-black">2 Star</label>
                                        </div>
                                        <h6 class="color-black">(04) </h6>
                                    </div>
                                    <div class="d-flex justify-content-between mb-24">
                                        <div class="filter-checkbox">
                                            <input type="checkbox" id="star-3">
                                            <label for="star-3" class="color-black">3 Star</label>
                                        </div>
                                        <h6 class="color-black">(06) </h6>
                                    </div>
                                    <div class="d-flex justify-content-between mb-24">
                                        <div class="filter-checkbox">
                                            <input type="checkbox" id="star-4">
                                            <label for="star-4" class="color-black">4 Stars</label>
                                        </div>
                                        <h6 class="color-black">(08) </h6>
                                    </div>
                                    <div class="d-flex justify-content-between mb-24">
                                        <div class="filter-checkbox">
                                            <input type="checkbox" id="star-5">
                                            <label for="star-5" class="color-black">5 Stars</label>
                                        </div>
                                        <h6 class="color-black">(10) </h6>
                                    </div>
                                    <div class="d-flex justify-content-between mb-24">
                                        <div class="filter-checkbox">
                                            <input type="checkbox" id="unrated">
                                            <label for="unrated" class="color-black">Unrated</label>
                                        </div>
                                        <h6 class="color-black">(00) </h6>
                                    </div>
                                    <hr class="bg-sec-gray mb-32">
                                    <h4 class="color-black mb-24">Distance from center of Dubai </h4>
                                    <div class="d-flex justify-content-between mb-24">
                                        <div class="filter-checkbox">
                                            <input type="checkbox" id="km_1">
                                            <label for="km_1" class="color-black">Less than 1 km</label>
                                        </div>
                                        <h6 class="color-black">(02) </h6>
                                    </div>
                                    <div class="d-flex justify-content-between mb-24">
                                        <div class="filter-checkbox">
                                            <input type="checkbox" id="km_3">
                                            <label for="km_3" class="color-black">Less than 3 km</label>
                                        </div>
                                        <h6 class="color-black">(04) </h6>
                                    </div>
                                    <div class="d-flex justify-content-between mb-24">
                                        <div class="filter-checkbox">
                                            <input type="checkbox" id="km_5">
                                            <label for="km_5" class="color-black">Less than 5 km</label>
                                        </div>
                                        <h6 class="color-black">(06) </h6>
                                    </div>


                                    <hr class="bg-sec-gray mb-32">
                                    <h4 class="color-black mb-24">Fun things to do</h4>
                                    <div class="d-flex justify-content-between mb-24">
                                        <div class="filter-checkbox">
                                            <input type="checkbox" id="fitness">
                                            <label for="fitness" class="color-black">Fitness Center</label>
                                        </div>
                                        <h6 class="color-black">(02) </h6>
                                    </div>
                                    <div class="d-flex justify-content-between mb-24">
                                        <div class="filter-checkbox">
                                            <input type="checkbox" id="fit">
                                            <label for="fit" class="color-black">Fitness</label>
                                        </div>
                                        <h6 class="color-black">(04) </h6>
                                    </div>
                                    <div class="d-flex justify-content-between mb-24">
                                        <div class="filter-checkbox">
                                            <input type="checkbox" id="sauna">
                                            <label for="sauna" class="color-black">Sauna</label>
                                        </div>
                                        <h6 class="color-black">(06) </h6>
                                    </div>
                                    <div class="d-flex justify-content-between mb-24">
                                        <div class="filter-checkbox">
                                            <input type="checkbox" id="wellness">
                                            <label for="wellness" class="color-black">Spa and wellness Center</label>
                                        </div>
                                        <h6 class="color-black">(08) </h6>
                                    </div>
                                    <div class="d-flex justify-content-between mb-24">
                                        <div class="filter-checkbox">
                                            <input type="checkbox" id="spa_room">
                                            <label for="spa_room" class="color-black">Fitness/ Spa locker rooms</label>
                                        </div>
                                        <h6 class="color-black">(08) </h6>
                                    </div>
                                    <hr class="bg-sec-gray mb-32">
                                    <h4 class="color-black mb-24">Cancellation Policy </h4>
                                    <div class="d-flex justify-content-between mb-24">
                                        <div class="filter-checkbox">
                                            <input type="checkbox" id="freeCancel">
                                            <label for="freeCancel" class="color-black">Free cancellations</label>
                                        </div>
                                        <h6 class="color-black">(02) </h6>
                                    </div>
                                    <div class="d-flex justify-content-between mb-24">
                                        <div class="filter-checkbox">
                                            <input type="checkbox" id="book">
                                            <label for="book" class="color-black">Book without Credit Card</label>
                                        </div>
                                        <h6 class="color-black">(04) </h6>
                                    </div>
                                    <div class="d-flex justify-content-between mb-24">
                                        <div class="filter-checkbox">
                                            <input type="checkbox" id="prePay">
                                            <label for="prePay" class="color-black">No Prepayment</label>
                                        </div>
                                        <h6 class="color-black">(06) </h6>
                                    </div>

                                    <hr class="bg-sec-gray mb-32">
                                    <h4 class="color-black mb-24">Meals </h4>
                                    <div class="d-flex justify-content-between mb-24">
                                        <div class="filter-checkbox">
                                            <input type="checkbox" id="selfCater">
                                            <label for="selfCater" class="color-black">Self Catering</label>
                                        </div>
                                        <h6 class="color-black">(02) </h6>
                                    </div>
                                    <div class="d-flex justify-content-between mb-24">
                                        <div class="filter-checkbox">
                                            <input type="checkbox" id="breakfast">
                                            <label for="breakfast" class="color-black">Beakfast</label>
                                        </div>
                                        <h6 class="color-black">(04) </h6>
                                    </div>
                                    <div class="d-flex justify-content-between mb-24">
                                        <div class="filter-checkbox">
                                            <input type="checkbox" id="inclusive">
                                            <label for="inclusive" class="color-black">All Inclusive</label>
                                        </div>
                                        <h6 class="color-black">(06) </h6>
                                    </div>
                                    <div class="d-flex justify-content-between mb-24">
                                        <div class="filter-checkbox">
                                            <input type="checkbox" id="lunch">
                                            <label for="lunch" class="color-black">Beakfast & lunch included</label>
                                        </div>
                                        <h6 class="color-black">(04) </h6>
                                    </div>
                                    <div class="d-flex justify-content-between mb-24">
                                        <div class="filter-checkbox">
                                            <input type="checkbox" id="dinner">
                                            <label for="dinner" class="color-black">Beakfast & dinner included</label>
                                        </div>
                                        <h6 class="color-black">(04) </h6>
                                    </div>
                                    <hr class="bg-sec-gray mb-32">
                                    <h4 class="color-black mb-24">Property Type </h4>
                                    <div class="d-flex justify-content-between mb-24">
                                        <div class="filter-checkbox">
                                            <input type="checkbox" id="holidayRent">
                                            <label for="holidayRent" class="color-black">Holiday Rentals</label>
                                        </div>
                                        <h6 class="color-black">(02) </h6>
                                    </div>
                                    <div class="d-flex justify-content-between mb-24">
                                        <div class="filter-checkbox">
                                            <input type="checkbox" id="apartment">
                                            <label for="apartment" class="color-black">Apartments</label>
                                        </div>
                                        <h6 class="color-black">(04) </h6>
                                    </div>
                                    <div class="d-flex justify-content-between mb-24">
                                        <div class="filter-checkbox">
                                            <input type="checkbox" id="hotels">
                                            <label for="hotels" class="color-black">Hotels</label>
                                        </div>
                                        <h6 class="color-black">(06) </h6>
                                    </div>
                                    <div class="d-flex justify-content-between mb-24">
                                        <div class="filter-checkbox">
                                            <input type="checkbox" id="hostel">
                                            <label for="hostel" class="color-black">Hostels</label>
                                        </div>
                                        <h6 class="color-black">(04) </h6>
                                    </div>
                                    <div class="d-flex justify-content-between mb-24">
                                        <div class="filter-checkbox">
                                            <input type="checkbox" id="villas">
                                            <label for="villas" class="color-black">Villas</label>
                                        </div>
                                        <h6 class="color-black">(04) </h6>
                                    </div>
                                    <hr class="bg-sec-gray mb-32">
                                    <h4 class="color-black mb-24">Number of Bedrooms </h4>
                                    <div class="d-flex justify-content-between align-items-center mb-32">
                                        <h5 class="color-black">Bedrooms </h5>
                                        <div class="quantity quantity-wrap">
                                            <input class="decrement" type="button" value="-">
                                            <input type="text" name="quantity" value="0" maxlength="2" size="1" id="adultQuantityinput" class="number">
                                            <input class="increment bg-primary color-white" type="button" value="+">
                                        </div>
                                    </div>
                                    <hr class="bg-sec-gray mb-32">
                                    <h4 class="color-black mb-24">Number of Bathrooms </h4>
                                    <div class="d-flex justify-content-between align-items-center mb-32">
                                        <h5 class="color-black">Bathrooms </h5>
                                        <div class="quantity quantity-wrap">
                                            <input class="decrement" type="button" value="-">
                                            <input type="text" name="quantity" value="0" maxlength="2" size="1" id="adultInput" class="number">
                                            <input class="increment bg-primary color-white" type="button" value="+">
                                        </div>
                                    </div>

                                    <hr class="bg-sec-gray mb-32">
                                    <h4 class="color-black mb-24">Landmarks </h4>
                                    <div class="d-flex justify-content-between mb-24">
                                        <div class="filter-checkbox">
                                            <input type="checkbox" id="burj">
                                            <label for="burj" class="color-black">Burj Khalifa</label>
                                        </div>
                                        <h6 class="color-black">(02) </h6>
                                    </div>
                                    <div class="d-flex justify-content-between mb-24">
                                        <div class="filter-checkbox">
                                            <input type="checkbox" id="dubaiMall">
                                            <label for="dubaiMall" class="color-black">Dubai Mall</label>
                                        </div>
                                        <h6 class="color-black">(04) </h6>
                                    </div>
                                    <hr class="bg-sec-gray mb-32">
                                    <h4 class="color-black mb-24">Bed Preference </h4>
                                    <div class="d-flex justify-content-between mb-24">
                                        <div class="filter-checkbox">
                                            <input type="checkbox" id="twinBed">
                                            <label for="twinBed" class="color-black">Twin beds</label>
                                        </div>
                                        <h6 class="color-black">(02) </h6>
                                    </div>
                                    <div class="d-flex justify-content-between mb-24">
                                        <div class="filter-checkbox">
                                            <input type="checkbox" id="doubleBed">
                                            <label for="doubleBed" class="color-black">Double bed</label>
                                        </div>
                                        <h6 class="color-black">(04) </h6>
                                    </div>

                                    <hr class="bg-sec-gray mb-32">
                                    <h4 class="color-black mb-24">Review Score </h4>
                                    <div class="d-flex justify-content-between mb-24">
                                        <div class="filter-checkbox">
                                            <input type="checkbox" id="superb">
                                            <label for="superb" class="color-black">Superb: 9+</label>
                                        </div>
                                        <h6 class="color-black">(02) </h6>
                                    </div>
                                    <div class="d-flex justify-content-between mb-24">
                                        <div class="filter-checkbox">
                                            <input type="checkbox" id="veryGood">
                                            <label for="veryGood" class="color-black">Very Good: 8+</label>
                                        </div>
                                        <h6 class="color-black">(04) </h6>
                                    </div>
                                    <div class="d-flex justify-content-between mb-24">
                                        <div class="filter-checkbox">
                                            <input type="checkbox" id="good">
                                            <label for="good" class="color-black">Good: 7+</label>
                                        </div>
                                        <h6 class="color-black">(04) </h6>
                                    </div>
                                    <div class="d-flex justify-content-between mb-24">
                                        <div class="filter-checkbox">
                                            <input type="checkbox" id="pleasent">
                                            <label for="pleasent" class="color-black">Pleasent: 6+</label>
                                        </div>
                                        <h6 class="color-black">(04) </h6>
                                    </div>


                                    <hr class="bg-sec-gray mb-32">
                                    <h4 class="color-black mb-24">Facilities </h4>
                                    <div class="d-flex justify-content-between mb-24">
                                        <div class="filter-checkbox">
                                            <input type="checkbox" id="non_smoking">
                                            <label for="non_smoking" class="color-black">Non-smoking rooms</label>
                                        </div>
                                        <h6 class="color-black">(02) </h6>
                                    </div>
                                    <div class="d-flex justify-content-between mb-24">
                                        <div class="filter-checkbox">
                                            <input type="checkbox" id="f_wifi">
                                            <label for="f_wifi" class="color-black">Free Wifi</label>
                                        </div>
                                        <h6 class="color-black">(04) </h6>
                                    </div>
                                    <div class="d-flex justify-content-between mb-24">
                                        <div class="filter-checkbox">
                                            <input type="checkbox" id="fitNess">
                                            <label for="fitNess" class="color-black">Fitness Center</label>
                                        </div>
                                        <h6 class="color-black">(04) </h6>
                                    </div>
                                    <div class="d-flex justify-content-between mb-24">
                                        <div class="filter-checkbox">
                                            <input type="checkbox" id="family">
                                            <label for="family" class="color-black">Family rooms</label>
                                        </div>
                                        <h6 class="color-black">(04) </h6>
                                    </div>


                                    <hr class="bg-sec-gray mb-32">
                                    <h4 class="color-black mb-24">Room Facilities </h4>
                                    <div class="d-flex justify-content-between mb-24">
                                        <div class="filter-checkbox">
                                            <input type="checkbox" id="air_condition">
                                            <label for="air_condition" class="color-black">Air Conditioning</label>
                                        </div>
                                        <h6 class="color-black">(02) </h6>
                                    </div>
                                    <div class="d-flex justify-content-between mb-24">
                                        <div class="filter-checkbox">
                                            <input type="checkbox" id="priv_bath">
                                            <label for="priv_bath" class="color-black">Private bathroom</label>
                                        </div>
                                        <h6 class="color-black">(04) </h6>
                                    </div>
                                    <div class="d-flex justify-content-between mb-24">
                                        <div class="filter-checkbox">
                                            <input type="checkbox" id="balcony">
                                            <label for="balcony" class="color-black">Balcony</label>
                                        </div>
                                        <h6 class="color-black">(04) </h6>
                                    </div>
                                    <div class="d-flex justify-content-between mb-24">
                                        <div class="filter-checkbox">
                                            <input type="checkbox" id="pool">
                                            <label for="pool" class="color-black">Private Pool</label>
                                        </div>
                                        <h6 class="color-black">(04) </h6>
                                    </div>
                                    <div class="d-flex justify-content-between mb-24">
                                        <div class="filter-checkbox">
                                            <input type="checkbox" id="seaView">
                                            <label for="seaView" class="color-black">Sea View</label>
                                        </div>
                                        <h6 class="color-black">(04) </h6>
                                    </div>


                                    <hr class="bg-sec-gray mb-32">
                                    <h4 class="color-black mb-24">Neighbourhood </h4>
                                    <div class="d-flex justify-content-between mb-24">
                                        <div class="filter-checkbox">
                                            <input type="checkbox" id="beach">
                                            <label for="beach" class="color-black">Beach & Coast</label>
                                        </div>
                                        <h6 class="color-black">(02) </h6>
                                    </div>
                                    <div class="d-flex justify-content-between mb-24">
                                        <div class="filter-checkbox">
                                            <input type="checkbox" id="deira">
                                            <label for="deira" class="color-black">Deira</label>
                                        </div>
                                        <h6 class="color-black">(04) </h6>
                                    </div>
                                    <div class="d-flex justify-content-between mb-24">
                                        <div class="filter-checkbox">
                                            <input type="checkbox" id="shRoad">
                                            <label for="shRoad" class="color-black">Sheikh Zayed Road</label>
                                        </div>
                                        <h6 class="color-black">(04) </h6>
                                    </div>
                                    <div class="d-flex justify-content-between mb-24">
                                        <div class="filter-checkbox">
                                            <input type="checkbox" id="burDubai">
                                            <label for="burDubai" class="color-black">Bur Dubai</label>
                                        </div>
                                        <h6 class="color-black">(04) </h6>
                                    </div>
                                    <div class="d-flex justify-content-between mb-24">
                                        <div class="filter-checkbox">
                                            <input type="checkbox" id="palm">
                                            <label for="palm" class="color-black">Palm Jumeirah</label>
                                        </div>
                                        <h6 class="color-black">(04) </h6>
                                    </div>


                                    <hr class="bg-sec-gray mb-32">
                                    <h4 class="color-black mb-24">Brands </h4>
                                    <div class="d-flex justify-content-between mb-24">
                                        <div class="filter-checkbox">
                                            <input type="checkbox" id="hotelBeach">
                                            <label for="hotelBeach" class="color-black">Millennium Hotels</label>
                                        </div>
                                        <h6 class="color-black">(02) </h6>
                                    </div>
                                    <div class="d-flex justify-content-between mb-24">
                                        <div class="filter-checkbox">
                                            <input type="checkbox" id="jumeirah">
                                            <label for="jumeirah" class="color-black">Jumeirah</label>
                                        </div>
                                        <h6 class="color-black">(04) </h6>
                                    </div>
                                    <div class="d-flex justify-content-between mb-24">
                                        <div class="filter-checkbox">
                                            <input type="checkbox" id="rove">
                                            <label for="rove" class="color-black">Rove Hotels</label>
                                        </div>
                                        <h6 class="color-black">(04) </h6>
                                    </div>
                                    <div class="d-flex justify-content-between mb-24">
                                        <div class="filter-checkbox">
                                            <input type="checkbox" id="maison">
                                            <label for="maison" class="color-black">Maison Privee</label>
                                        </div>
                                        <h6 class="color-black">(04) </h6>
                                    </div>
                                    <div class="d-flex justify-content-between mb-24">
                                        <div class="filter-checkbox">
                                            <input type="checkbox" id="rotana">
                                            <label for="rotana" class="color-black">Rotana Hotels & Resorts</label>
                                        </div>
                                        <h6 class="color-black">(04) </h6>
                                    </div>


                                    <hr class="bg-sec-gray mb-32">
                                    <h4 class="color-black mb-24">Property Accessbility </h4>
                                    <div class="d-flex justify-content-between mb-24">
                                        <div class="filter-checkbox">
                                            <input type="checkbox" id="wheelchairAccess">
                                            <label for="wheelchairAccess" class="color-black">Wheelchair
                                                accessible</label>
                                        </div>
                                        <h6 class="color-black">(02) </h6>
                                    </div>
                                    <div class="d-flex justify-content-between mb-24">
                                        <div class="filter-checkbox">
                                            <input type="checkbox" id="toilet">
                                            <label for="toilet" class="color-black">Toilet with grab rails</label>
                                        </div>
                                        <h6 class="color-black">(04) </h6>
                                    </div>
                                    <div class="d-flex justify-content-between mb-24">
                                        <div class="filter-checkbox">
                                            <input type="checkbox" id="higherLevel">
                                            <label for="higherLevel" class="color-black">Higher level toilet</label>
                                        </div>
                                        <h6 class="color-black">(04) </h6>
                                    </div>
                                    <div class="d-flex justify-content-between mb-24">
                                        <div class="filter-checkbox">
                                            <input type="checkbox" id="auditory">
                                            <label for="auditory" class="color-black">Auditory guidance</label>
                                        </div>
                                        <h6 class="color-black">(04) </h6>
                                    </div>

                                    <hr class="bg-sec-gray mb-32">
                                    <h4 class="color-black mb-24">Room Accessbility </h4>
                                    <div class="d-flex justify-content-between mb-24">
                                        <div class="filter-checkbox">
                                            <input type="checkbox" id="showerWalkin">
                                            <label for="showerWalkin" class="color-black">Walk-in shower</label>
                                        </div>
                                        <h6 class="color-black">(02) </h6>
                                    </div>
                                    <div class="d-flex justify-content-between mb-24">
                                        <div class="filter-checkbox">
                                            <input type="checkbox" id="rollShower">
                                            <label for="rollShower" class="color-black">Roll-in shower</label>
                                        </div>
                                        <h6 class="color-black">(04) </h6>
                                    </div>
                                    <div class="d-flex justify-content-between mb-24">
                                        <div class="filter-checkbox">
                                            <input type="checkbox" id="grabToitels">
                                            <label for="grabToitels" class="color-black">Toilet with grab rails</label>
                                        </div>
                                        <h6 class="color-black">(04) </h6>
                                    </div>
                                    <div class="d-flex justify-content-between mb-24">
                                        <div class="filter-checkbox">
                                            <input type="checkbox" id="adapted">
                                            <label for="adapted" class="color-black">Adapted bath</label>
                                        </div>
                                        <h6 class="color-black">(08) </h6>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-8">
  <%
  Hotel_listing_Dao dao = new Hotel_listing_Dao(FactoryProvider.getFactory());
	
	List<Hotel_Detail> list = null;
	if(check_in==null && check_out==null && destination==null)
	{
		list =dao.getAllHotel_Detail();	
	}
	else{
		
		%>
		<a href="hotel-listing.jsp" style="color:blue;">SHOW ALL Hotel</a><br><br>
		<% 
		list = dao.getSearchHotel_Detail(destination,check_in,check_out);
	}
	if (list.isEmpty())
	{ %> 
		<p/>There is no Any Hotel Avalible<p>
	<% }

for(Hotel_Detail hd:list)
{
  %>
                            <div class="hotel-block bg-white mb-32" data-sal="slide-left" data-sal-duration="800" data-sal-delay="100" data-sal-easing="ease-in-out">
                                <div class="row align-items-center">
                                    <div class="col-lg-5 col-md-4 col-sm-12">
                                        <div class="image-box">
                                            <a href="hotel-detail.jsp"><img src="static/picture/hotel-1.png" alt=""></a>
                                        </div>
                                    </div>
                                    <div class="col-lg-4 col-md-5 col-sm-6">
                                        <div class="hotel-detail p-0">
                                            <div class="rating-star mb-8">
                                                <i class="fas fa-star color-sec"></i>
                                                <i class="fas fa-star color-sec"></i>
                                                <i class="fas fa-star color-sec"></i>
                                                <i class="fas fa-star color-sec"></i>
                                                <i class="fas fa-star color-sec"></i>
                                            </div>
                                            <a href="hotel-detail.jsp" class="mb-32 h5"><% out.println(hd.getName()); %></a>
                                            <div class="apartment-detail mb-12">
                                                <h6 class="light-black">Standard Apartment</h6>
                                                <h6 class="dark-gray">Entire apartment 1 bedroom, 1 living room, 1
                                                    bathroom, 1 kitchen 110m²</h6>
                                                <h6 class="dark-gray mb-12">1 extra-large double bed</h6>
                                                <h6 class="color-primary">Only 1 left at this price on our site</h6>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-3 col-md-3 col-sm-6">
                                        <div class="pricing p-0">
                                            <div class="review mb-64">
                                                <div class="text-sm-end text-center">
                                                    <h6 class="color-black">Superb</h6>
                                                    <h6 class="dark-gray">1500 reviews</h6>
                                                </div>
                                                <h6 class="rating-number">9.6</h6>
                                            </div>
                                            <div class="text-sm-end text-center mb-64">
                                                <p class="color-black">3 Night, 2 adults</p>
                                                <h3 class="color-black fw-700">&#8377; <% out.println(hd.getPrice()); %></h3>
                                                <p class="color-black">&#8377; 130 taxes and charges</p>
                                            </div>
                   <%
                   String user=(String)session.getAttribute("fname");
                   if(user==null)
                   {
                   %>
                   <a href="login_page.jsp" class="cus-btn full-width">Book Now</a>
                   <%
                   }
                   else
                   {
                   %>
                     <a href="hotel-booking.jsp?code=<%= hd.getHotel_code() %>" class="cus-btn full-width">Book Now</a>
                    <%
                   }
                    %>
                                        </div>
                                    </div>
                                </div>
                            </div>
      <%
       }
      %>
                          
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
    


    <!-- Mobile Menu Start -->
     
    <!-- Mobile Menu End -->

    <!-- Jquery Js -->
     

    <!-- Site Scripts -->
<!--<script src="static/js/date.js"></script>
    <script src="static/js/app.js"></script>  -->
</body>

</html>