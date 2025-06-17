<!DOCTYPE html>
<%@page import="java.util.List"%>
<%@page import="Airlines.entites.car_Detail"%>
<%@page import="Airlines.FactoryProvider" %>
<%@page import="Airlines.Dao.car_Detail_Dao"%>
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
<%
String pick_up = request.getParameter("pick_up");
String drop_off = request.getParameter("drop_off");
String start = request.getParameter("start");
String end = request.getParameter("end");
System.out.println(pick_up+drop_off+start+end);
%>
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
                                <a href="index.html">
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
                                        <a href="car-listing.jsp" class="active">Car</a>
                                    </li>
                                    <li class="dropdown">
                                        <a href="hotel-listing.jsp">Hotel</a>
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
                            <h1 class="fw-700 lightest-black">Car <br class="title-break">  Listing</h1>
                        </div>
                        <img src="static/picture/car.png" alt="" class="right-image">
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
            <section class="hotel-listing mb-24 p-40">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-xxl-4 col-xl-4 mb-xl-0 mb-32">
                            <div class="row">
                                <div class="col-xl-12 col-lg-6 col-md-6">
                                    <div class="hotel-sidebar mb-32 ">
                                        <div class="hotel-sidebar_title">
                                            <h4 class="color-black">Trip Summary</h4>
                                        </div>
                                <form action="car-listing.jsp" method="post" class="bg-white contact-form">
                                            <div class="hotel-info mb-16">
                                                <div class="custom-sel-input-block location-select">
                                                    <label for="pickLocation" class="h-16 color-medium-gray mb-8">Destination/ property</label>
                                                    <i class="fal fa-search"></i>
                                                    <input type="text" name="pick_up" class="sel-input location-input auto-input-location" id="pickLocation" placeholder="Pick-up Location">
                                                    <div class="slector-wrapper"></div>
                                                </div>
                                            </div>
                                            <div class="hotel-info car-listing mb-16">
                                                <div class="custom-sel-input-block m-lg-0 mb-16">
                                                    <label for="dateStart" class="h-16 color-medium-gray">Pick-up Date</label>
                                                    <div class="d-flex align-items-center gap-8">
                                                        <i class="fal fa-calendar-alt "></i>
                                                        <input type="text" name="start" class="sel-input date_from" id="dateStart" placeholder="Start Date">
                                                    </div>
                                                </div>
                                                <div class="vertical-line"></div>
            
                                                <div class="input-date-picker">
                                                    <div class="d-flex align-items-center gap-8">
                                                        <i class="fal fa-clock"></i>
                                                        <input type="text" class="sel-input location-input timepicker p-0" id="time">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="filter-checkbox mb-16">
                                                <input type="checkbox" id="return">
                                                <label for="return" class="">Return to a different location</label>
                                            </div>
        
                                            <div class="hotel-info mb-16">
                                                <div class="custom-sel-input-block location-select">
                                                    <label for="dropOff" class="h-16 color-medium-gray mb-8">Drop-off Location</label>
                                                    <i class="fal fa-search"></i>
                                                    <input type="text" name="drop_off" class="sel-input location-input auto-input-location" id="dropOff" placeholder="Drop-off Location">
                                                    <div class="slector-wrapper"></div>
                                                </div>
                                            </div>
                                            <div class="hotel-info car-listing mb-16">
                                                <div class="custom-sel-input-block m-lg-0 mb-16">
                                                    <label for="locationDrop" class="h-16 color-medium-gray">Drop-off Date</label>
                                                    <div class="d-flex align-items-center gap-8">
                                                        <i class="fal fa-calendar-alt "></i>
                                                        <input type="text" name="end" class="sel-input date_from" id="locationDrop" placeholder="Return Date">
                                                    </div>
                                                </div>
                                                <div class="vertical-line"></div>
            
                                                <div class="input-date-picker">
                                                    <div class="d-flex align-items-center gap-8">
                                                        <i class="fal fa-clock"></i>
                                                        <input type="text" class="sel-input location-input timepicker p-0" id="pickerTime">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="hotel-info mb-32">
                                                <div class="custom-sel-input-block location-select">
                                                    <label for="live" class="h-16 color-medium-gray mb-8">I live in:</label>
                                                    <i class="fal fa-map-marker-alt"></i>
                                                    <input type="text" class="sel-input location-input auto-input-location" id="live" placeholder="Dubai">
                                                    <div class="slector-wrapper"></div>
                                                </div>
                                            </div>
                                            <h5 class="dark-gray mb-16">Driver's age:</h5>
                                            <div class="custom-control d-flex gap-16 mb-32">
                                                <div class=" radio-button">
                                                    <input type="radio" name="age" class="custom-control-input" id="age_18">
                                                    <label class="custom-control-label" for="age_18">18-29</label>
                                                </div>
                                                <div class=" radio-button">
                                                    <input type="radio" name="age" class="custom-control-input" id="age_30">
                                                    <label class="custom-control-label" for="age_30">30-49</label>
                                                </div>
                                                <div class="radio-button">
                                                    <input type="radio" name="age" class="custom-control-input" id="age_50">
                                                    <label class="custom-control-label" for="age_50">50-70</label>
                                                </div>
                                            </div>
                                            <div class="hotel-info mb-32">
                                                <div class="custom-sel-input-block location-select">
                                                    <label for="currencyType" class="h-16 color-medium-gray mb-8">Currency:</label>
                                                    <i class="fal fa-map-marker-alt"></i>
                                                    <input type="text" class="sel-input location-input auto-input-currency" id="currencyType" placeholder="USD - $">
                                                    <div class="slector-wrapper"></div>
                                                </div>
                                            </div>
                                            <button type="submit" class="cus-btn full-width">Search</button>
                                        </form>

                                    </div>
                                </div>
                                <div class="col-xl-12 col-lg-6 col-md-6">
                                    <div class="hotel-sidebar">
                                        <div class="hotel-sidebar_title">
                                            <h4 class="color-black">Filter Search:</h4>
                                        </div>
                                        <div class="filter-block p-24 bg-white">
                                            <div class="title mb-32">
                                                <h4 class="color-black">Price Range </h4>
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
                                            <h4 class="color-black mb-24">Transmission </h4>
                                            <div class="d-flex justify-content-between mb-16">
                                                <div class="filter-checkbox">
                                                    <input type="checkbox" id="automatic">
                                                    <label for="automatic" class="color-black">Automatic</label>
                                                </div>
                                                <h6 class="color-black">(02) </h6>
                                            </div>
                                            <div class="d-flex justify-content-between mb-16">
                                                <div class="filter-checkbox">
                                                    <input type="checkbox" id="manual">
                                                    <label for="manual" class="color-black">Manual</label>
                                                </div>
                                                <h6 class="color-black">(04) </h6>
                                            </div>
                                            <hr class="bg-sec-gray mb-32">
                                            <h4 class="color-black mb-24">Pick-up Location </h4>
                                            <div class="d-flex justify-content-between mb-16">
                                                <div class="filter-checkbox">
                                                    <input type="checkbox" id="terminal">
                                                    <label for="terminal" class="color-black">In Terminal</label>
                                                </div>
                                                <h6 class="color-black">(02) </h6>
                                            </div>
                                            <div class="d-flex justify-content-between mb-16">
                                                <div class="filter-checkbox">
                                                    <input type="checkbox" id="shuttle">
                                                    <label for="shuttle" class="color-black">Free Shuttle Bus</label>
                                                </div>
                                                <h6 class="color-black">(04) </h6>
                                            </div>
                                            <div class="d-flex justify-content-between mb-16">
                                                <div class="filter-checkbox">
                                                    <input type="checkbox" id="meet">
                                                    <label for="meet" class="color-black">Meet & Greet</label>
                                                </div>
                                                <h6 class="color-black">(06) </h6>
                                            </div>
                                            
                                            <hr class="bg-sec-gray mb-32">
                                            <h4 class="color-black mb-24">Mileage </h4>
                                            <div class="d-flex justify-content-between mb-16">
                                                <div class="filter-checkbox">
                                                    <input type="checkbox" id="limited">
                                                    <label for="limited" class="color-black">Limited</label>
                                                </div>
                                                <h6 class="color-black">(02) </h6>
                                            </div>
                                            <div class="d-flex justify-content-between mb-16">
                                                <div class="filter-checkbox">
                                                    <input type="checkbox" id="unlimited">
                                                    <label for="unlimited" class="color-black">Unlimited</label>
                                                </div>
                                                <h6 class="color-black">(04) </h6>
                                            </div>
                                            
                                            <hr class="bg-sec-gray mb-32">
                                            <h4 class="color-black mb-24">Fuel Policy </h4>
                                            <div class="d-flex justify-content-between mb-16">
                                                <div class="filter-checkbox">
                                                    <input type="checkbox" id="full">
                                                    <label for="full" class="color-black">Full to Full</label>
                                                </div>
                                                <h6 class="color-black">(02) </h6>
                                            </div>
                                            <div class="d-flex justify-content-between mb-16">
                                                <div class="filter-checkbox">
                                                    <input type="checkbox" id="same">
                                                    <label for="same" class="color-black">Same to Same</label>
                                                </div>
                                                <h6 class="color-black">(04) </h6>
                                            </div>
        
                                            <hr class="bg-sec-gray mb-32">
                                            <h4 class="color-black mb-24">Eco Friendly</h4>
                                            <div class="d-flex justify-content-between mb-16">
                                                <div class="filter-checkbox">
                                                    <input type="checkbox" id="electric">
                                                    <label for="electric" class="color-black">Electric </label>
                                                </div>
                                                <h6 class="color-black">(02) </h6>
                                            </div>
                                            <div class="d-flex justify-content-between mb-16">
                                                <div class="filter-checkbox">
                                                    <input type="checkbox" id="hybrid">
                                                    <label for="hybrid" class="color-black">Hybrid</label>
                                                </div>
                                                <h6 class="color-black">(04) </h6>
                                            </div>
                                            
                                            <hr class="bg-sec-gray mb-32">

                                            <div class="filter-block box-1">
                                                <div class="title d-flex justify-content-between mb-24" data-count="1">
                                                    <h4 class="color-black">Supplier </h4>
                                                    <i class="fal fa-chevron-up color-primary"></i>
                                                </div>
                                                <div class="content-block">
                                                    <div class="d-flex justify-content-between mb-16">
                                                        <div class="filter-checkbox">
                                                            <input type="checkbox" id="europcar">
                                                            <label for="europcar" class="color-black">Europcar</label>
                                                            <img src="static/picture/brand-logo-1.png" alt="">
                                                        </div>
                                                    </div>
                                                    <div class="d-flex justify-content-between mb-16">
                                                        <div class="filter-checkbox">
                                                            <input type="checkbox" id="hertz">
                                                            <label for="hertz" class="color-black">Hertz</label>
                                                            <img src="static/picture/brand-logo-2.png" alt="">
                                                        </div>
                                                    </div>
                                                    <div class="d-flex justify-content-between mb-16">
                                                        <div class="filter-checkbox">
                                                            <input type="checkbox" id="thrifty">
                                                            <label for="thrifty" class="color-black">Thrifty</label>
                                                            <img src="static/picture/brand-logo-3.png" alt="">
                                                        </div>
                                                        
                                                    </div>
                                                    <div class="d-flex justify-content-between mb-16">
                                                        <div class="filter-checkbox">
                                                            <input type="checkbox" id="avis">
                                                            <label for="avis" class="color-black">Avis</label>
                                                            <img src="static/picture/brand-logo-4.png" alt="">
                                                        </div>
                                                    </div>
                                                    <div class="d-flex justify-content-between mb-16">
                                                        <div class="filter-checkbox">
                                                            <input type="checkbox" id="sixt">
                                                            <label for="sixt" class="color-black">Sixt</label>
                                                            <img src="static/picture/brand-logo-5.png" alt="">
                                                        </div>
                                                    </div>
                                                    <div class="d-flex justify-content-between mb-16">
                                                        <div class="filter-checkbox">
                                                            <input type="checkbox" id="dollar">
                                                            <label for="dollar" class="color-black">Dollar</label>
                                                            <img src="static/picture/brand-logo-6.png" alt="">
                                                        </div>
                                                    </div>
                                                    <div class="d-flex justify-content-between mb-16">
                                                        <div class="filter-checkbox">
                                                            <input type="checkbox" id="national">
                                                            <label for="national" class="color-black">National</label>
                                                            <img src="static/picture/brand-logo-7.png" alt="">
                                                        </div>
                                                    </div>

                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-xxl-8 col-xl-8">
     <%
    car_Detail_Dao dao = new car_Detail_Dao(FactoryProvider.getFactory());
    List<car_Detail>  list=null;                                                 		
    if(pick_up==null && drop_off==null)
    {
      list = dao.getAllcar_Detail();
    }else{
    	%>
		<a href="car-listing.jsp" style="color:blue;">SHOW ALL FLIGHTS</a><br><br>
		<% 
    	list = dao.getSearchcar_Detail(pick_up, drop_off, start,end);
    			
    }
    if(list.isEmpty())
    {
    	out.println("There is no any car avlibale");
    }
    for(car_Detail cd :list)
    {
    	 
    %>
                            <div class="hotel-block bg-white mb-32" data-sal="slide-right" data-sal-duration="800" data-sal-delay="100" data-sal-easing="ease-in-out">
                                <div class="row align-items-center">
                                    <div class="col-lg-5 col-md-4 col-sm-12">
                                        <div class="bg-lightest-gray p-16 br-20">
                                            <h5 class="light-black mb-1"><a href="car-detail.html"><% out.println(cd.getCar_name()); %></a></h5>
                                            <h6 class="dark-gray mb-48">Hyundai Accentor similar</h6>
                                            <div class="image-block mb-12 text-center">
                                                <a href="car-detail.jsp"><img src="static/picture/car.png" alt=""></a>
                                                 
                                            </div>
                                            <div class="d-flex justify-content-center gap-24 mb-48">
                                                 
                                                <h4 class="color-black"><% out.println(cd.getCar_number()); %>&nbsp;<i class="fal fa-user"></i></h4>
                                           
                                            </div>
                                            <ul class="unstyled">
                                                <li class="d-flex gap-2">
                                                    <h6 class="color-black mb-12"><i class="fal fa-check"></i>&nbsp;Automatic Transmission</h6>
                                                </li>
                                                <li class="d-flex gap-2">
                                                    <h6 class="color-black"><i class="fal fa-check"></i>&nbsp;Air Conditioning</h6>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="col-lg-4 col-md-5 col-sm-6">
                                        <div class="hotel-detail p-0 m-sm-0 m-3">
                                            <h5 class="light-black mb-32"><i class="fal fa-calendar-alt"></i>&nbsp;<% out.println(cd.getStrat_date()); %>  
                                                    - <% out.println(cd.getReturn_date()); %>
                                            </h5>
                                            <div class="d-flex gap-8">
                                                <i class="fal fa-map-marker-alt pt-1"></i>
                                                <div>
                                                    <h6 class="light-black">Pick-Up Location:</h6>
                                                    <h6 class="dark-gray mb-16"><% out.println(cd.getPick_up()); %></h6>
                                                </div>
                                            </div>

                                            <div class="d-flex gap-8">
                                                <i class="fal fa-gas-pump pt-1"></i>
                                                <div>
                                                    <h6 class="light-black">Fuel Policy:</h6>
                                                    <h6 class="dark-gray mb-16">Full to Full</h6>
                                                </div>
                                            </div>

                                            <div class="d-flex gap-8 mb-32">
                                                <i class="fal fa-tachometer-alt-fast pt-1"></i>
                                                <div>
                                                    <h6 class="light-black">Mileage:</h6>
                                                    <h6 class="dark-gray">Unlimited</h6>
                                                </div>
                                            </div>

                                            <div class="brand-logo">
                                                <img src="static/picture/car-brand-1.png" alt="">
                                                <h6 class="">Very Good</h6>
                                                <h6 class="rating color-white">9.6</h6>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-3 col-md-3 col-sm-6">
                                        <div class="pricing-area">
                                            <h6 class="pre-reg light-black mb-32">Pre-Registration available</h6>
                                            <h3 class="color-black fw-700">&#8377; 140.00 <span class="h6 ">/day</span></h3>
                                            <h6 class="light-black mb-32">Total &#8377; <% out.println(cd.getPrice()); %></h6>
              <%
                String user = (String)session.getAttribute("fname");
               if(user == null)
               {
            %>
            	   <a href="login_page.jsp" class="cus-btn full-width mb-16">Book Now</a>
           <% 
               }
               else
               {
              %>
                                            <a href="car-detail.jsp" class="cus-btn full-width mb-16">Book Now</a>
                 <%
               }
                 %>
                                            <a href="contact-us.jsp" class="cus-btn-2 btn-sec">Email Quotes</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
<%
    }
%>
                            
                                    </div>
                            
                            <div class="paginations" data-sal="slide-down" data-sal-duration="800" data-sal-delay="100" data-sal-easing="ease-in-out">
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
    </div>


    <!-- Mobile Menu Start -->
     
    <!-- Mobile Menu End -->

    <!-- Jquery Js -->
     

    <!-- Site Scripts -->
<!-- <script src="static/js/date.js"></script>
    <script src="static/js/app.js"></script>  -->
</body>

</html>