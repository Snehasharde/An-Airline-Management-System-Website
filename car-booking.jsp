<!DOCTYPE html>
<%@page import="Airlines.Dao.car_Detail_Dao"%>
<%@page import="Airlines.FactoryProvider"%>
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
car_Detail_Dao dao = new car_Detail_Dao(FactoryProvider.getFactory());

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
                            <h1 class="fw-700 lightest-black">Car <br class="title-break"> Booking</h1>
                        </div>
                        <img src="static/picture/car.png" alt="" class="right-image">
                    </div>
                </div>
            </div>
        </div>
        <!-- Title-Banner End -->

        <!-- Main Content Start -->
        <div class="page-content m-0">

            <!-- Flight-Booking Start -->
            <section class="flight-booking">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-xl-8" data-sal="slide-left" data-sal-duration="800" data-sal-delay="100" data-sal-easing="ease-in-out">
                            <div class="booking-form">
 <!--                           <form action="flight-listing.jsp" id="car-form" method="post" role="form" class="contact-form form-wizard">-->
                    <form action="car_Booking_Servlet" method="post">
                                    <div class="form-wizard-header">
                                        <ul class="nav list-unstyled form-wizard-steps clearfix">
                                            <li class="nav-item activated">
                                                <button class="nav-link">
                                                    <span class="number">1</span><i class="fal fa-check"></i>
                                                </button>
                                                <h5 class="color-black">Your Selection</h5>
                                            </li>
                                            <li class="nav-item active">
                                                <button class="nav-link">
                                                    <span class="number">2</span><i class="fal fa-check"></i>
                                                </button>
                                                <h5 class="color-black">Your Details</h5>
                                            </li>
                                            <li class="nav-item">
                                                <button class="nav-link">
                                                    <span class="number">3</span><i class="fal fa-check"></i>
                                                </button>
                                                <h5 class="color-black">Final Step</h5>
                                            </li>
                                        </ul>
                                    </div>
                                    <div class="wizard-content overflow-visible mb-24">
                                        <fieldset id="step-2" class="tab-pane show wizard-fieldset p-0">
                                            <div id="wizardValidator">
                                                <div class="detail-form mb-32">
                                                    <h4 class="black p-0 mb-40">Enter Your Details</h4>
                                                    <div class="row ">
                                                        <div class="col-sm-3 mb-40">
                                                            <div class="gender-select">
                                                                <div class="select">
                                                                    <select name="gender" id="gender" class="wizard-required">
                                                                        <option selected="" disabled="">Gender</option>
                                                                        <option value="male">Male</option>
                                                                        <option value="female">Female</option>
                                                                        <option value="other">Other</option>
                                                                    </select>
                                                                    <div class="wizard-form-error"></div>
                                                                </div>
                                                            </div>
                                                        </div>
            
                                                        <div class="col-sm-5 mb-40">
                                                            <input type="text" class="form-control wizard-required" id="first-name" name="first-name" placeholder="First Name">
                                                                    <div class="wizard-form-error"></div>
                                                        </div>
                                                        <div class="col-sm-4 mb-40">
                                                            <input type="text" class="form-control wizard-required" id="last-name" name="last-name" placeholder="Last Name">
                                                                    <div class="wizard-form-error"></div>
                                                        </div>
                                                        <div class="col-sm-6 mb-40">
                                                            <input type="email" class="form-control wizard-required" id="email" name="email" placeholder="Email">
                                                                    <div class="wizard-form-error"></div>
                                                        </div>
                                                        <div class="col-sm-6 mb-40">
                                                            <div class="gender-select">
                                                                <div class="select">
                                                                    <select name="nationality" id="nationality" class="wizard-required">
                                                                        <option selected="" disabled="">Nationality</option>
                                                                        <option value="american">American</option>
                                                                        <option value="britian">Britian</option>
                                                                        <option value="indian">Indian</option>
                                                                        <option value="canadian">Canadian</option>
                                                                        <option value="pakistani">Pakistani</option>
                                                                    </select>
                                                                    <div class="wizard-form-error"></div>
    
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-sm-6 mb-40">
                                                            <input type="tel" class="form-control wizard-required" id="phone" name="phone" placeholder="Your Number">
                                                                    <div class="wizard-form-error"></div>
                                                        </div>
                                                        <div class="col-sm-6 mb-40">
                                                            <div class="input-date-picker">
                                                                <input type="text" class="sel-input date_from form-control wizard-required" name="dob" id="flightDep" placeholder="Date of Birth">
                                                                    <div class="wizard-form-error"></div>
                                                            </div>
                                                        </div>
                                                        <div class="col-sm-6 mb-sm-0 mb-40">
                                                            <input type="number" class="form-control wizard-required" id="post_code" name="code" placeholder="Postal Code">
                                                                    <div class="wizard-form-error"></div>
                                                        </div>
             <!--                                       <div class="col-sm-6">
                                                            <input type="number" class="form-control wizard-required" id="f_number" name="f_number" placeholder="car Number">
                                                                    <div class="wizard-form-error"></div>
                                                        </div>
                 -->
                                                    </div>
                                                </div>
                                                <div class="detail-form term_conditions mb-32">
                                                    <h4 class="black p-0 mb-8">Save your details!</h4>
                                                    <div class="row">
                                                        <div class="col-sm-6">
                                                            <p class="dark-gray mb-24 fw-400">Use your contact details to create an account and speed up future bookings.(We won't save your payment information.)</p>
                                                            <div class="filter-checkbox mb-24">
                                                                <input type="checkbox" id="save" class="wizard-required">
                                                                <label for="save" class="dark-gray fw-400">Save my detail so i can book faster next time.</label>
                                                            </div>
                                                            <p class="dark-gray fw-400">By signing in or creating an account, you agree with our <a href="privacy-policy.html" class="color-primary"> Terms & conditions</a></p>
                                                            <div class="wizard-form-error"></div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="d-flex gap-24">
                                                
                                                <a href="javascript:;" class="form-wizard-next-btn cus-btn w-100">
                                                    Next
                                                </a>
                                            </div>
                                        </fieldset>
                                        <fieldset id="step-3" class="tab-pane wizard-fieldset p-0">
                                            <!-- <form action="flight-booking.html" method="post" class="contact-form"> -->
                                            <div class="detail-form mb-32">
                                                <h4 class="black p-0 mb-24">When would you like to pay?</h4>
                                                <div class="custom-control">
                                                    <div class="radio-button mb-24">
                                                        <input type="radio" name="payment" class="custom-control-input  input-control" id="later">
                                                        <!-- <div class="wizard-form-error"></div> -->
                                                        <label class="custom-control-label paynow color-black" for="later">Pay Later</label>
                                                        <p class="dark-gray pl-36">Lorem ipsum dolor sit amet consectetur. Orci elementum egestas blandit a. Elementum blandit sit egestas urna.</p>
                                                    </div>
                                                    <div class="radio-button">
                                                        <input type="radio" name="payment" class="custom-control-input  input-control" id="now">
                                                        <!-- <div class="wizard-form-error"></div> -->
                                                        <label class="custom-control-label paynow color-black" for="now">Pay Now</label>
                                                        <p class="dark-gray pl-36">Lorem ipsum dolor sit amet consectetur. Orci elementum egestas blandit a. Elementum blandit sit egestas urna.</p>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="detail-form v-2">
                                                <h4 class="black p-0 mb-24">How would you like to pay?</h4>
                                                <div class="content-block mb-32">
                                                    <div class="radio-tile-group sidebar d-block">
                                                        <div class="row">
                                                            <div class="col-sm-6">
                                                                <div class="input-container">
                                                                    <input id="payment" class="radio-button wizard-required" type="radio" name="radio" value="payment">
                                                                    <div class="wizard-form-error"></div>
                                                                    <div class="radio-tile wizard-page">
                                                                        <label for="payment" class="radio-tile-label wizard-label"><i class="fal fa-credit-card-front"></i>&nbsp;&nbsp;New Card</label>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="col-sm-6">
                                                                <div class="input-container">
                                                                    <input id="g-pay" class="radio-button wizard-required" type="radio" name="radio" value="g-pay">
                                                                    <div class="wizard-form-error"></div>
                                                                    <div class="radio-tile wizard-page">
                                                                        <label for="g-pay" class="radio-tile-label wizard-label"><img src="static/picture/google.png" alt="">&nbsp;&nbsp;Google Pay</label>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <h4 class="black p-0 mb-24">Account Holder Details</h4>
                                                <div class="row">
                                                    <div class="col-sm-6 mb-24">
                                                        <input type="text" class="form-control wizard-required" name="name" id="holder-name" placeholder="Card Holder's Name">
                                                        <div class="wizard-form-error"></div>
                                                    </div>
                                                    <div class="col-sm-6 mb-24">
                                                        <input type="text" class="form-control wizard-required" name="number" id="card-name" placeholder="Card Number">
                                                        <div class="wizard-form-error"></div>
                                                    </div>
                                                    <div class="col-sm-6 mb-24">
                                                        <!-- <input type="text" class="form-control " name="date" id="exp-date" placeholder="Expiry Date"> -->
                                                        <div class="wizard-form-error"></div>
                                                        <div class="input-date-picker">
                                                            <input type="text" class="sel-input date_from form-control wizard-required " name="date" id="exp-date" placeholder="Expiry Date">
                                                            <div class="wizard-form-error"></div>
                                                        </div>
                                                    </div>
                                                    <div class="col-sm-6 mb-24">
                                                        <input type="text" class="form-control wizard-required" name="cvc" id="cVc" placeholder="CVC">
                                                        <div class="wizard-form-error"></div>
                                                    </div>
                                                </div>
                                            </div>
                                            <!-- </form> -->
                                            <div class="d-flex gap-24 mt-24">
                                                <a href="javascript:;" class="form-wizard-previous-btn cus-btn btn-sec w-100">
                                                    Back
                                                </a>
                                                 <input type="submit" value="submit" class="form-wizard-previous-btn cus-btn btn-sec w-100">
                                            </div>
                                        </fieldset>
                                        
                                    </div>
                  </form>
                            </div>
                        </div>
                        <div class="col-xl-4 mb-xl-0 mb-32" data-sal="slide-right" data-sal-duration="800" data-sal-delay="100" data-sal-easing="ease-in-out">
                            <div class="car-booking-detail light-shadow mb-32">
                                <div class="car-title">
                                    <h4 class="color-black">Car Detail</h4>
                                </div>
                                <div class="content-block bg-white p-24 light-shadow">
                                    <div class="hotel-block bg-white">
                                        <div class="bg-white br-20 mb-32">
                                            <h5 class="light-black mb-4">S Class - Benz</h5>
                                            <h6 class="dark-gray mb-48">Hyundai Accentor similar</h6>
                                            <div class="image-block mb-12 d-flex align-items-end">
                                                <a href="car-detail.html"><img src="static/picture/car-mini.png" alt=""></a>
                                                <div class="d-flex gap-16">
                                                    <h4 class="color-black">4&nbsp;<i class="fal fa-user"></i></h4>
                                                    <h4 class="color-black">2&nbsp;<i class="fal fa-suitcase"></i></h4>
                                                    <h4 class="color-black">4&nbsp;<i class="fal fa-car-alt"></i></h4>
                                                </div>
                                            </div>
                                            <ul class="unstyled">
                                                <li class="d-flex gap-2">
                                                    <h6 class="color-black mb-12"><i class="fal fa-check"></i>&nbsp;<span class="dark-gray">
                                                            Automatic Transmission</span></h6>
                                                </li>
                                                <li class="d-flex gap-2">
                                                    <h6 class="color-black"><i class="fal fa-check"></i>&nbsp;<span class="dark-gray"> Air Conditioning</span></h6>
                                                </li>
                                            </ul>
                                            <div class="float-end">
                                                <a href="#" class="accordion-button color-primary h6 fw-600" data-bs-toggle="collapse" data-bs-target="#hideDetail" aria-expanded="true">Hide Details&nbsp; <i class="fal fa-chevron-up"></i></a>
                                            </div>
                                        </div>
                                        <div id="hideDetail" class="accordion-collapse collapse show" data-bs-parent="#accordionExample">
                                            <div class="hotel-detail">
                                                <h6 class="light-black mb-32"><i class="fal fa-calendar-alt"></i>&nbsp;Aug 20 <span class="h6 dark-gray">
                                                        (Sun)</span> - Aug 22 <span class="h6 dark-gray">(Tue)</span>
                                                </h6>
                                                <div class="d-flex gap-8 mb-16">
                                                    <i class="fal fa-map-marker-alt pt-1"></i>
                                                    <div>
                                                        <h6 class="light-black"> Pick-Up Location:</h6>
                                                        <h6 class="dark-gray">Meet & Greet</h6>
                                                    </div>
                                                </div>

                                                <div class="d-flex gap-8 mb-16">
                                                    <i class="fal fa-gas-pump pt-1"></i>
                                                    <div>
                                                        <h6 class="light-black">Fuel Policy:</h6>
                                                        <h6 class="dark-gray">Full to Full</h6>
                                                    </div>
                                                </div>
                                                <div class="d-flex gap-8">
                                                    <i class="fal fa-tachometer-alt-fast pt-1"></i>
                                                    <div>
                                                        <h6 class="light-black">Mileage:</h6>
                                                        <h6 class="dark-gray">Unlimited</h6>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="car-booking-detail light-shadow">
                                <div class="car-title">
                                    <h4 class="color-black">Price Summary</h4>
                                </div>
                                <div class="content-block bg-white p-24">
                                    <div class="d-flex align-items-center justify-content-between mb-24">
                                        <div>
                                            <h5 class="color-black">Car Hire Fee</h5>
                                            <p class="dark-gray">Lorem ipsum dolor sit amet consectetur.</p>
                                        </div>
                                        <h5 class="color-black">Rs140</h5>
                                    </div>
                                    <div class="d-flex align-items-center justify-content-between mb-24">
                                        <div>
                                            <h5 class="color-black">Additional Driver</h5>
                                            <p class="dark-gray">Lorem ipsum dolor sit amet consectetur.</p>
                                        </div>
                                        <h5 class="color-black">Rs50</h5>
                                    </div>
                                    <div class="d-flex align-items-center justify-content-between mb-24">
                                        <div>
                                            <h5 class="color-black">Child Toddler Seat</h5>
                                            <p class="dark-gray">Lorem ipsum dolor sit amet consectetur.</p>
                                        </div>
                                        <h5 class="color-black">Rs30</h5>
                                    </div>
                                    <div class="d-flex align-items-center justify-content-between mb-24">
                                        <div>
                                            <h5 class="color-black">Booster Seat</h5>
                                            <p class="dark-gray">Lorem ipsum dolor sit amet consectetur.</p>
                                        </div>
                                        <h5 class="color-black">Rs20</h5>
                                    </div>
                                    <div class="d-flex align-items-center justify-content-between mb-24">
                                        <div>
                                            <h5 class="color-black">Sub Total</h5>
                                            <p class="dark-gray">Lorem ipsum dolor sit amet consectetur.</p>
                                        </div>
                                        <h5 class="color-black">Rs640</h5>
                                    </div>
                                    <hr class="bg-medium-gray mb-24">
                                    <div class="d-flex align-items-center justify-content-between mb-24">
                                        <div>
                                            <h4 class="color-black">Deal / Discount</h4>
                                        </div>
                                        <h4 class="color-black">Rs40</h4>
                                    </div>
                                    <div class="d-flex align-items-center justify-content-between">
                                        <div>
                                            <h4 class="color-black">Total</h4>
                                        </div>
                                        <h4 class="color-black">Rs600</h4>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!-- Flight-Booking End -->

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
    <script src="static/js/jquery-3.6.3.min.js"></script>
    <script src="static/js/bootstrap.min.js"></script>
    <script src="static/js/jquery.smartWizard.min.js"></script>
    <script src="static/js/wizard.js"></script>
    
    <!-- Site Scripts  
    <script src="static/js/date.js"></script> -->
    <script src="static/js/app.js"></script>
</body>

</html>