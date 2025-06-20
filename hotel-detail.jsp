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
                            <h1 class="fw-700 lightest-black">Hotel <br class="title-break">  Detail</h1>
                        </div>
                        <img src="static/picture/hotel1.png" alt="" class="right-image">
                    </div>
                </div>
            </div>
        </div>
        <!-- Title-Banner End -->

        <!-- Main Content Start -->
        <div class="page-content m-0">

            <!-- Hotel Listing Start -->
            <section class="hotel-detail-sec mb-24">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-xl-4 col-lg-4 mb-lg-0 mb-32">
                            <div class="hotel-detail-sidebar mb-32">
                                <div class="detail-title">
                                    <h4 class="color-black">Property Highlights</h4>
                                </div>
                                <div class="hotel-content">
                                    <h5 class="color-black mb-12">Perfect for 3-night stay!</h5>
                                    <div class="d-flex align-items-center mb-32 color-primary">
                                        <i class="fal fa-map-marker-alt"></i>&nbsp;<h6>Top location: Highly rated by recent guests (8.8)
                                        </h6>
                                    </div>
                                    <h5 class="color-black mb-16">Apartments with:</h5>
                                    <div class="d-flex align-items-center mb-16 color-primary">
                                        <i class="fal fa-map-marker-alt"></i>&nbsp;<h6>Pool with a view</h6>
                                    </div>
                                    <div class="d-flex align-items-center mb-32 color-primary">
                                        <i class="fal fa-map-marker-alt"></i>&nbsp;<h6>Free private parking available on-site</h6>
                                    </div>
                                    <a href="#hotel-availability" class="cus-btn full-width">Reserve Now</a>
                                </div>
                            </div>
                            <div class="hotel-detail-sidebar">
                                <div class="detail-title">
                                    <h4 class="color-black">Map</h4>
                                </div>
                                <div class="hotel-content">
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-8 col-lg-8">
                            <div class="rating-star mb-24">
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                            </div>
                            <h4 class="mb-24"><a href="hotel-listing.jsp">GLOBALSTAY Holiday Homes - Apartments, Beach, Pool, Gym</a></h4>
                            <div class="row mb-32" data-sal="slide-right" data-sal-duration="800" data-sal-delay="100" data-sal-easing="ease-in-out">
                                <div class="col-lg-9 col-md-9 mb-md-0 mb-30">
                                    <div class="hotel-image-slider">
                                        <div class="image-box">
                                            <img src="static/picture/hotel-detail.png" alt="" class="br-15">
                                        </div>
                                        <div class="image-box">
                                            <img src="static/picture/hotel-detail.png" alt="" class="br-15">
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-3 col-md-3">
                                    <!-- <div class="d-md-block d-flex"> -->
                                        <!-- <i class="fal fa-search"></i></a></li> -->
                                        <a class="btn" data-bs-toggle="modal" data-bs-target="#productQuickView"><img src="static/picture/hotel-detail-1.png" alt="" class="mb-30 br-15"></a>
                                        <a class="btn" data-bs-toggle="modal" data-bs-target="#productQuickView"><img src="static/picture/hotel-detail-2.png" alt="" class="br-15"></a>
                                    <!-- </div> -->
                                </div>
                            </div>
                            <h4 class="color-black mb-32">Facilities</h4>
                            <div class="facilities mb-48" data-sal="slide-up" data-sal-duration="800" data-sal-delay="100" data-sal-easing="ease-in-out">
                                <div class="d-flex align-items-center gap-8 facility-tag p-24 bg-white light-shadow br-5"> 
                                    <img src="static/picture/hotel2.png" alt="">
                                    <h5 class="light-black">Apartments</h5>
                                </div>
                                <div class="d-flex align-items-center gap-8 facility-tag p-24 bg-white light-shadow br-5"> 
                                    <img src="static/picture/kitchen.png" alt="">
                                    <h5 class="light-black">Kitchen</h5>
                                </div>
                                <div class="d-flex align-items-center gap-8 facility-tag p-24 bg-white light-shadow br-5"> 
                                    <img src="static/picture/sea.png" alt="">
                                    <h5 class="light-black">Sea View</h5>
                                </div>
                                <div class="d-flex align-items-center gap-8 facility-tag p-24 bg-white light-shadow br-5"> 
                                    <img src="static/picture/garden.png" alt="">
                                    <h5 class="light-black">Garden</h5>
                                </div>
                                <div class="d-flex align-items-center gap-8 facility-tag p-24 bg-white light-shadow br-5"> 
                                    <img src="static/picture/pets.png" alt="">
                                    <h5 class="light-black">Pets Allowed</h5>
                                </div>
                                <div class="d-flex align-items-center gap-8 facility-tag p-24 bg-white light-shadow br-5"> 
                                    <img src="static/picture/swim.png" alt="">
                                    <h5 class="light-black">Outdoor swimming pool</h5>
                                </div>
                                <div class="d-flex align-items-center gap-8 facility-tag p-24 bg-white light-shadow br-5"> 
                                    <img src="static/picture/washing-machine.png" alt="">
                                    <h5 class="light-black">Washing Machine</h5>
                                </div>
                                <div class="d-flex align-items-center gap-8 facility-tag p-24 bg-white light-shadow br-5"> 
                                    <img src="static/picture/wifi.png" alt="">
                                    <h5 class="light-black">Free Wifi</h5>
                                </div>
                                <div class="d-flex align-items-center gap-8 facility-tag p-24 bg-white light-shadow br-5"> 
                                    <img src="static/picture/balcony.png" alt="">
                                    <h5 class="light-black">Balcony</h5>
                                </div>
                                <div class="d-flex align-items-center gap-8 facility-tag p-24 bg-white light-shadow br-5"> 
                                    <img src="static/picture/parking.png" alt="">
                                    <h5 class="light-black">Free Parking</h5>
                                </div>
                            </div>
                            <h4 class="color-black mb-16">Hotel Detail</h4>
                            <p class="dark-gray mb-24">Lorem ipsum dolor sit amet consectetur. Quam sed pellentesque odio neque metus gravida. Id lobortis viverra diam vel est mauris volutpat id egestas. Egestas lectus molestie et aliquam. Pellentesque facilisis elementum.</p>
                            <p class="dark-gray">porta nisi sit eget egestas et facilisis. A urna morbi in augue. Pulvinar massa pellentesque lobortis facilisi sagittis. Ut et felis interdum odio a nibh ipsum eu. Turpis dolor faucibus velit erat accumsan proin. Neque quam sed ultricies sed magna duis.</p>
                            
                        </div>
                    </div>
                </div>
            </section>
            <!-- Hotel Listing End -->
          
            <!-- Hotel Availaibility Start -->
            <section class="hotel-availability p-40">
                <div class="container-fluid">
                    <h4 class="color-black mb-8">Availaibility</h4>
                    <h5 class="dark-gray mb-24">Price converted to USD</h5>
                    <form action="hotel-booking.jsp#step-2" method="post" class="mb-32" id="htl-availability" data-sal="slide-left" data-sal-duration="800" data-sal-delay="100" data-sal-easing="ease-in-out">
                        <div class="row align-items-center">
                            <div class="col-xxl-7">
                                <div class="availability-info">
                                    <div class="d-md-flex justify-content-between d-sm-block">
                                        <div class="input-date-picker">
                                            <label for="checkIndate" class="h-16 color-medium-gray">Check In</label>
                                            <input type="text" class="sel-input date_from" id="checkIndate" placeholder="Aug 18, 2023">
                                        </div>
                                        <div class="vertical-line d-xl-flex d-none"></div>
                                        <div class="input-date-picker">
                                            <label for="checkOutdate" class="h-16 color-medium-gray">Check Out</label>
                                            <input type="text" class="sel-input date_to" id="checkOutdate" placeholder="Aug 20, 2023">
                                        </div>
                                    </div>
                                    <div class="vertical-line d-xl-flex d-none"></div>
                                    <div>
                                        <div class="custom-sel-input-block">
                                            <div class="h-16 color-medium-gray">Guests and Room</div>
                                            <div class="room-booking color-black h5"> <span class="total-guest">2</span> Guests / <span class="guest-class">Room</span></div>
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
            
                            </div>
                            <div class="col-xxl-2 mt-xxl-0 mt-32">
                                <button type="submit" class="cus-btn extra-width">Apply Changes</button>
                            </div>
                        </div>
                    </form>
            
                    <h4 class="color-black mb-16">Filter by:</h4>
                    <div class="custom-control d-flex gap-16 mb-32">
                        <div class="radio-button">
                            <input type="radio" name="filter" class="custom-control-input" id="suites">
                            <label class="custom-control-label" for="suites">Suites</label>
                        </div>
                        <div class="radio-button">
                            <input type="radio" name="filter" class="custom-control-input" id="rooms">
                            <label class="custom-control-label" for="rooms">Rooms</label>
                        </div>
                    </div>
            
            
                    <!-- Hotel Table Start -->
                    <form action="hotel-booking.jsp#step-2" method="post" id="hotel-availability" data-sal="slide-right" data-sal-duration="800" data-sal-delay="100" data-sal-easing="ease-in-out">
                        <div class="available-rooms-table">
                            <table class="table table-bordered">
                                <thead>
                                    <tr>
                                        <th scope="col">Room Type</th>
                                        <th scope="col">Guests</th>
                                        <th scope="col">Price of 3 Nights</th>
                                        <th scope="col">Your Choice</th>
                                        <th scope="col">Rooms</th>
                                        <th scope="col">Reservation</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td rowspan="4">Premier Deluxe Room with <br> ComplimentaryPrivate Beach & Wild <br> Wadi
                                            Waterpark Access <br>
                                            <h6 class="blue-text color-primary mt-16 mb-16">Recommended for 2 adults, 1 child</h6>
                                            <div class="d-flex align-items-center gap-8 mb-16">
                                                <img src="static/picture/icon-11.png" alt="">
                                                <h6 class="light-black">1 large double bed</h6>
                                            </div>
                                            <h6 class="dark-gray mb-32">Direct Access to Dubai Metro</h6>
                                            <ul class="d-flex gap-16 flex-wrap p-0">
                                                <li class="d-flex align-items-center gap-8">
                                                    <img src="static/picture/icon-21.png" alt="">
                                                    <h6 class="light-black">Sound Proof</h6>
                                                </li>
                                                <li class="d-flex align-items-center gap-8">
                                                    <img src="static/picture/icon-3.png" alt="">
                                                    <h6 class="light-black">44m²</h6>
                                                </li>
                                            </ul>
                                            <ul class="d-flex gap-16 flex-wrap p-0">
                                                <li class="d-flex align-items-center gap-8">
                                                    <img src="static/picture/icon-4.png" alt="">
                                                    <h6 class="light-black">Landmark View</h6>
                                                </li>
                                                <li class="d-flex align-items-center gap-8">
                                                    <img src="static/picture/icon-5.png" alt="">
                                                    <h6 class="light-black">City View</h6>
                                                </li>
                                            </ul>
                                            <ul class="d-flex gap-16 flex-wrap p-0">
                                                <li class="d-flex align-items-center gap-8">
                                                    <img src="static/picture/icon-6.png" alt="">
                                                    <h6 class="light-black">Air Conditioning</h6>
                                                </li>
                                                <li class="d-flex align-items-center gap-8">
                                                    <img src="static/picture/icon-7.png" alt="">
                                                    <h6 class="light-black">Private Bathroom</h6>
                                                </li>
                                            </ul>
                                            <ul class="d-flex gap-16 flex-wrap p-0">
                                                <li class="d-flex align-items-center gap-8">
                                                    <img src="static/picture/icon-8.png" alt="">
                                                    <h6 class="light-black">Flat-screen TV</h6>
                                                </li>
                                            </ul>
                                            <hr class="bg-dark-gray mb-16">
                                            <ul class="d-flex gap-16 flex-wrap p-0">
                                                <li class="d-flex align-items-center gap-8">
                                                    <img src="static/picture/tick.png" alt="">
                                                    <h6 class="light-black">Free Toiletries</h6>
                                                </li>
                                                <li class="d-flex align-items-center gap-8">
                                                    <img src="static/picture/tick.png" alt="">
                                                    <h6 class="light-black">Bathrobe</h6>
                                                </li>
                                                <li class="d-flex align-items-center gap-8">
                                                    <img src="static/picture/tick.png" alt="">
                                                    <h6 class="light-black">Bidet</h6>
                                                </li>
                                            </ul>
                                            <ul class="d-flex gap-16 flex-wrap p-0">
                                                <li class="d-flex align-items-center gap-8">
                                                    <img src="static/picture/tick.png" alt="">
                                                    <h6 class="light-black">Sreaming service (like Netflix)</h6>
                                                </li>
                                                <li class="d-flex align-items-center gap-8">
                                                    <img src="static/picture/tick.png" alt="">
                                                    <h6 class="light-black">Toilet</h6>
                                                </li>
            
                                            </ul>
                                            <ul class="d-flex gap-16 flex-wrap p-0">
                                                <li class="d-flex align-items-center gap-8">
                                                    <img src="static/picture/tick.png" alt="">
                                                    <h6 class="light-black">Bath or Shower</h6>
                                                </li>
                                                <li class="d-flex align-items-center gap-8">
                                                    <img src="static/picture/tick.png" alt="">
                                                    <h6 class="light-black">Towels</h6>
                                                </li>
                                                <li class="d-flex align-items-center gap-8">
                                                    <img src="static/picture/tick.png" alt="">
                                                    <h6 class="light-black">Linen</h6>
                                                </li>
                                            </ul>
                                        </td>
                                        <td>
                                            <h5 class="light-black">3 Guests</h5>
                                        </td>
                                        <td>
                                            <h4 class="light-black mb-8">USD Rs 340:00</h4>
                                            <h6 class="dark-gray">Rs 130 taxes and charges</h6>
                                        </td>
                                        <td>
                                            <ul class="p-0">
                                                <li class="d-flex align-items-center gap-8 mb-8">
                                                    <img src="static/picture/tick-lg.png" alt="">
                                                    <h6 class="light-black">Very Good <span class="dark-gray">breakfast USD
                                                            Rs20</span></h6>
                                                </li>
                                                <li class="d-flex align-items-center gap-8">
                                                    <img src="static/picture/tick-lg.png" alt="">
                                                    <h6 class="light-black">Free Cancellation <span class="dark-gray">before 26
                                                            August 2023</span></h6>
                                                </li>
                                            </ul>
                                        </td>
                                        <td>
                                            <div class="quantity quantity-wrap">
                                                <input class="decrement" type="button" value="-">
                                                <input type="text" name="quantity" value="0" maxlength="2" size="1" id="adult" class="number">
                                                <input class="increment bg-primary color-white" type="button" value="+">
                                            </div>
                                        </td>
                                        <td rowspan="4">
                                            <h5 class="dark-gray mb-8">1 room for</h5>
                                            <h4 class="light-black mb-8">USD Rs340.00</h4>
                                            <h5 class="dark-gray mb-24">Rs 130 taxes and charges</h5>
                                            <button type="submit" class="cus-btn full-width mb-24">I'll reserve</button>
                                            <ul class="mb-24">
                                                <li class="dark-gray h6">Confirmation is immediate</li>
                                                <li class="dark-gray h6">No booking or credit card fee</li>
                                            </ul>
                                            <h5 class="light-black mb-24">Your Package</h5>
                                            <ul class="p-0">
                                                <li class="d-flex align-items-center gap-8 mb-16">
                                                    <img src="static/picture/tick-lg.png" alt="">
                                                    <h6 class="light-black">Very Good <span class="dark-gray">breakfast USD
                                                            Rs120</span></h6>
                                                </li>
                                                <li class="d-flex align-items-center gap-8 mb-16">
                                                    <img src="static/picture/tick-lg.png" alt="">
                                                    <h6 class="light-black">Free Cancellation <span class="dark-gray">before 26
                                                            August 2023</span></h6>
                                                </li>
                                            </ul>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <h5 class="light-black">2 Guests</h5>
                                        </td>
                                        <td>
                                            <h4 class="light-black mb-8">USD Rs 240:00</h4>
                                            <h6 class="dark-gray">Rs 70 taxes and charges</h6>
                                        </td>
                                        <td>
                                            <ul class="p-0">
                                                <li class="d-flex align-items-center gap-8 mb-8">
                                                    <img src="static/picture/tick-lg.png" alt="">
                                                    <h6 class="light-black">Very Good <span class="dark-gray">breakfast USD
                                                            Rs120</span></h6>
                                                </li>
                                                <li class="d-flex align-items-center gap-8">
                                                    <img src="static/picture/tick-lg.png" alt="">
                                                    <h6 class="light-black">Free Cancellation <span class="dark-gray">before 26
                                                            August 2023</span></h6>
                                                </li>
                                            </ul>
                                        </td>
                                        <td>
                                            <div class="quantity quantity-wrap">
                                                <input class="decrement" type="button" value="-">
                                                <input type="text" name="quantity" value="0" maxlength="2" size="1" id="adultnumbers" class="number">
                                                <input class="increment bg-primary color-white" type="button" value="+">
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <h5 class="light-black">3 Guests</h5>
                                        </td>
                                        <td>
                                            <h4 class="light-black mb-8">USD Rs340:00</h4>
                                            <h6 class="dark-gray">Rs 130 taxes and charges</h6>
                                        </td>
                                        <td>
                                            <ul class="p-0">
                                                <li class="d-flex align-items-center gap-8 mb-8">
                                                    <img src="static/picture/tick-lg.png" alt="">
                                                    <h6 class="light-black">Very Good <span class="dark-gray">breakfast USD
                                                            Rs120</span></h6>
                                                </li>
                                                <li class="d-flex align-items-center gap-8">
                                                    <img src="static/picture/tick-lg.png" alt="">
                                                    <h6 class="light-black">Free Cancellation <span class="dark-gray">before 26
                                                            August 2023</span></h6>
                                                </li>
                                            </ul>
                                        </td>
                                        <td>
                                            <div class="quantity quantity-wrap">
                                                <input class="decrement" type="button" value="-">
                                                <input type="text" name="quantity" value="0" maxlength="2" size="1" id="adultquant" class="number">
                                                <input class="increment bg-primary color-white" type="button" value="+">
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <h5 class="light-black">2 Guests</h5>
                                        </td>
                                        <td>
                                            <h4 class="light-black mb-8">USD Rs 240:00</h4>
                                            <h6 class="dark-gray">Rs 70 taxes and charges</h6>
                                        </td>
                                        <td>
                                            <ul class="p-0">
                                                <li class="d-flex align-items-center gap-8 mb-8">
                                                    <img src="static/picture/tick-lg.png" alt="">
                                                    <h6 class="light-black">Very Good <span class="dark-gray">breakfast USD
                                                            Rs120</span></h6>
                                                </li>
                                                <li class="d-flex align-items-center gap-8">
                                                    <img src="static/picture/tick-lg.png" alt="">
                                                    <h6 class="light-black">Free Cancellation <span class="dark-gray">before 26
                                                            August 2023</span></h6>
                                                </li>
                                            </ul>
                                        </td>
                                        <td>
                                            <div class="quantity quantity-wrap">
                                                <input class="decrement" type="button" value="-">
                                                <input type="text" name="quantity" value="0" maxlength="2" size="1" id="adultnum" class="number">
                                                <input class="increment bg-primary color-white" type="button" value="+">
                                            </div>
                                        </td>
                                    </tr>
                                </tbody>
                                <tbody>
                                    <tr>
                                        <td rowspan="4">Super Deluxe Room with <br> Private Pool & Balcony <br> Wadi Waterpark
                                            Access <br>
                                            <h6 class="blue-text color-primary mt-16 mb-16">Recommended for 2 adults, 1 child</h6>
                                            <div class="d-flex align-items-center gap-8 mb-16">
                                                <img src="static/picture/icon-11.png" alt="">
                                                <h6 class="light-black">1 large double bed</h6>
                                            </div>
                                            <h6 class="dark-gray mb-32">Direct Access to Dubai Metro</h6>
                                            <ul class="d-flex gap-16 flex-wrap p-0">
                                                <li class="d-flex align-items-center gap-8">
                                                    <img src="static/picture/icon-21.png" alt="">
                                                    <h6 class="light-black">Sound Proof</h6>
                                                </li>
                                                <li class="d-flex align-items-center gap-8">
                                                    <img src="static/picture/icon-3.png" alt="">
                                                    <h6 class="light-black">44m²</h6>
                                                </li>
                                            </ul>
                                            <ul class="d-flex gap-16 flex-wrap p-0">
                                                <li class="d-flex align-items-center gap-8">
                                                    <img src="static/picture/icon-4.png" alt="">
                                                    <h6 class="light-black">Landmark View</h6>
                                                </li>
                                                <li class="d-flex align-items-center gap-8">
                                                    <img src="static/picture/icon-5.png" alt="">
                                                    <h6 class="light-black">City View</h6>
                                                </li>
                                            </ul>
                                            <ul class="d-flex gap-16 flex-wrap p-0">
                                                <li class="d-flex align-items-center gap-8">
                                                    <img src="static/picture/icon-6.png" alt="">
                                                    <h6 class="light-black">Air Conditioning</h6>
                                                </li>
                                                <li class="d-flex align-items-center gap-8">
                                                    <img src="static/picture/icon-7.png" alt="">
                                                    <h6 class="light-black">Private Bathroom</h6>
                                                </li>
                                            </ul>
                                            <ul class="d-flex gap-16 flex-wrap p-0">
                                                <li class="d-flex align-items-center gap-8">
                                                    <img src="static/picture/icon-8.png" alt="">
                                                    <h6 class="light-black">Flat-screen TV</h6>
                                                </li>
                                            </ul>
                                            <hr class="bg-dark-gray mb-16">
                                            <ul class="d-flex gap-16 flex-wrap p-0">
                                                <li class="d-flex align-items-center gap-8">
                                                    <img src="static/picture/tick.png" alt="">
                                                    <h6 class="light-black">Free Toiletries</h6>
                                                </li>
                                                <li class="d-flex align-items-center gap-8">
                                                    <img src="static/picture/tick.png" alt="">
                                                    <h6 class="light-black">Bathrobe</h6>
                                                </li>
                                                <li class="d-flex align-items-center gap-8">
                                                    <img src="static/picture/tick.png" alt="">
                                                    <h6 class="light-black">Bidet</h6>
                                                </li>
                                            </ul>
                                            <ul class="d-flex gap-16 flex-wrap p-0">
                                                <li class="d-flex align-items-center gap-8">
                                                    <img src="static/picture/tick.png" alt="">
                                                    <h6 class="light-black">Sreaming service (like Netflix)</h6>
                                                </li>
                                                <li class="d-flex align-items-center gap-8">
                                                    <img src="static/picture/tick.png" alt="">
                                                    <h6 class="light-black">Toilet</h6>
                                                </li>
            
                                            </ul>
                                            <ul class="d-flex gap-16 flex-wrap p-0">
                                                <li class="d-flex align-items-center gap-8">
                                                    <img src="static/picture/tick.png" alt="">
                                                    <h6 class="light-black">Bath or Shower</h6>
                                                </li>
                                                <li class="d-flex align-items-center gap-8">
                                                    <img src="static/picture/tick.png" alt="">
                                                    <h6 class="light-black">Towels</h6>
                                                </li>
                                                <li class="d-flex align-items-center gap-8">
                                                    <img src="static/picture/tick.png" alt="">
                                                    <h6 class="light-black">Linen</h6>
                                                </li>
                                            </ul>
                                        </td>
                                        <td>
                                            <h5 class="light-black">3 Guests</h5>
                                        </td>
                                        <td>
                                            <h4 class="light-black mb-8">USD Rs 520:00</h4>
                                            <h6 class="dark-gray">Rs 200 taxes and charges</h6>
                                        </td>
                                        <td>
                                            <ul class="p-0">
                                                <li class="d-flex align-items-center gap-8 mb-8">
                                                    <img src="static/picture/tick-lg.png" alt="">
                                                    <h6 class="light-black">Very Good <span class="dark-gray">breakfast USD
                                                            Rs120</span></h6>
                                                </li>
                                                <li class="d-flex align-items-center gap-8 mb-8">
                                                    <img src="static/picture/tick-lg.png" alt="">
                                                    <h6 class="light-black">Includes parking + high-speed internet</h6>
                                                </li>
                                                <li class="d-flex align-items-center gap-8">
                                                    <img src="static/picture/tick-lg.png" alt="">
                                                    <h6 class="light-black">Free Cancellation <span class="dark-gray">before 26
                                                            August 2023</span></h6>
                                                </li>
                                            </ul>
                                        </td>
                                        <td>
                                            <div class="quantity quantity-wrap">
                                                <input class="decrement" type="button" value="-">
                                                <input type="text" name="quantity" value="0" maxlength="2" size="1" id="adultQuantity" class="number">
                                                <input class="increment bg-primary color-white" type="button" value="+">
                                            </div>
                                        </td>
                                    </tr>
            
                                    <tr>
                                        <td>
                                            <h5 class="light-black">2 Guests</h5>
                                        </td>
                                        <td>
                                            <h4 class="light-black mb-8">USD Rs 380:00</h4>
                                            <h6 class="dark-gray">Rs 170 taxes and charges</h6>
                                        </td>
                                        <td>
                                            <ul class="p-0">
                                                <li class="d-flex align-items-center gap-8 mb-8">
                                                    <img src="static/picture/tick-lg.png" alt="">
                                                    <h6 class="light-black">Very Good <span class="dark-gray">breakfast USD
                                                            Rs120</span></h6>
                                                </li>
                                                <li class="d-flex align-items-center gap-8">
                                                    <img src="static/picture/tick-lg.png" alt="">
                                                    <h6 class="light-black">Free Cancellation <span class="dark-gray">before 26
                                                            August 2023</span></h6>
                                                </li>
                                            </ul>
                                        </td>
                                        <td>
                                            <div class="quantity quantity-wrap">
                                                <input class="decrement" type="button" value="-">
                                                <input type="text" name="quantity" value="0" maxlength="2" size="1" id="quantNumber" class="number">
                                                <input class="increment bg-primary color-white" type="button" value="+">
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <h5 class="light-black">3 Guests</h5>
                                        </td>
                                        <td>
                                            <h4 class="light-black mb-8">USD Rs 520:00</h4>
                                            <h6 class="dark-gray">Rs 200 taxes and charges</h6>
                                        </td>
                                        <td>
                                            <ul class="p-0">
                                                <li class="d-flex align-items-center gap-8 mb-8">
                                                    <img src="static/picture/tick-lg.png" alt="">
                                                    <h6 class="light-black">Very Good <span class="dark-gray">breakfast USD
                                                            Rs120</span></h6>
                                                </li>
                                                <li class="d-flex align-items-center gap-8 mb-8">
                                                    <img src="static/picture/tick-lg.png" alt="">
                                                    <h6 class="light-black">Includes parking + high-speed internet</h6>
                                                </li>
                                                <li class="d-flex align-items-center gap-8">
                                                    <img src="static/picture/tick-lg.png" alt="">
                                                    <h6 class="light-black">Free Cancellation <span class="dark-gray">before 26
                                                            August 2023</span></h6>
                                                </li>
                                            </ul>
                                        </td>
                                        <td>
                                            <div class="quantity quantity-wrap">
                                                <input class="decrement" type="button" value="-">
                                                <input type="text" name="quantity" value="0" maxlength="2" size="1" id="quanCell" class="number">
                                                <input class="increment bg-primary color-white" type="button" value="+">
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <h5 class="light-black">2 Guests</h5>
                                        </td>
                                        <td>
                                            <h4 class="light-black mb-8">USD Rs 380:00</h4>
                                            <h6 class="dark-gray">Rs 170 taxes and charges</h6>
                                        </td>
                                        <td>
                                            <ul class="p-0">
                                                <li class="d-flex align-items-center gap-8 mb-8">
                                                    <img src="static/picture/tick-lg.png" alt="">
                                                    <h6 class="light-black">Very Good <span class="dark-gray">breakfast USD
                                                            Rs120</span></h6>
                                                </li>
                                                <li class="d-flex align-items-center gap-8 mb-8">
                                                    <img src="static/picture/tick-lg.png" alt="">
                                                    <h6 class="light-black">Includes parking + high-speed internet</h6>
                                                </li>
                                                <li class="d-flex align-items-center gap-8">
                                                    <img src="static/picture/tick-lg.png" alt="">
                                                    <h6 class="light-black">Free Cancellation <span class="dark-gray">before 26
                                                            August 2023</span></h6>
                                                </li>
                                            </ul>
                                        </td>
                                        <td>
                                            <div class="quantity quantity-wrap">
                                                <input class="decrement" type="button" value="-">
                                                <input type="text" name="quantity" value="0" maxlength="2" size="1" id="adultquantCell" class="number">
                                                <input class="increment bg-primary color-white" type="button" value="+">
                                            </div>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </form>
                    <div class="available-rooms-mobile-view">
                        <form action="hotel-booking.jsp#step-2" method="post" id="hotelAvailability" data-sal="slide-left" data-sal-duration="800" data-sal-delay="100" data-sal-easing="ease-in-out">
                            <div class="row">
                                <div class="col-xl-6 col-lg-6 col-md-6 mb-md-0 mb-24">
                                    <div class="room-block">
                                        <h5 class="light-black mb-8">Premier Deluxe Room with Complimentary Private Beach & Wild
                                            Wadi Waterpark Access</h5>
                                        <h6 class="color-primary mb-16">Recommended for 2 adults, 1 child</h6>
                                        <div class="d-flex align-items-center justify-content-between mb-8">
                                            <div class="d-flex align-items-center facility gap-8">
                                                <img src="static/picture/icon-11.png" alt="">
                                                <h6 class="light-black fw-600">1 large double bed</h6>
                                            </div>
                                            <h6 class="dark-gray">Direct Access to Dubai Metro</h6>
                                        </div>
                                        <hr class="bg-dark-gray mb-24">
                                        <div class="d-flex flex-wrap align-items-center gap-16 mb-24">
                                            <div class="d-flex align-items facility gap-8">
                                                <img src="static/picture/icon-21.png" alt="">
                                                <h6 class="light-black">Sound Proof</h6>
                                            </div>
                                            <div class="d-flex align-items facility gap-8">
                                                <img src="static/picture/icon-3.png" alt="">
                                                <h6 class="light-black">44m²</h6>
                                            </div>
                                            <div class="d-flex align-items facility gap-8">
                                                <img src="static/picture/icon-4.png" alt="">
                                                <h6 class="light-black">Landmarks</h6>
                                            </div>
                                            <div class="d-flex align-items facility gap-8">
                                                <img src="static/picture/icon-5.png" alt="">
                                                <h6 class="light-black">City View</h6>
                                            </div>
                                            <div class="d-flex align-items facility gap-8">
                                                <img src="static/picture/icon-6.png" alt="">
                                                <h6 class="light-black">Air Conditioning</h6>
                                            </div>
                                            <div class="d-flex align-items facility gap-8">
                                                <img src="static/picture/icon-7.png" alt="">
                                                <h6 class="light-black">Private bathroom</h6>
                                            </div>
                                            <div class="d-flex align-items facility gap-8">
                                                <img src="static/picture/icon-8.png" alt="">
                                                <h6 class="light-black">Flat-screen TV</h6>
                                            </div>
                                        </div>
            
                                        <hr class="bg-dark-gray mb-24">
            
                                        <div class="d-flex flex-wrap align-items-center gap-16 mb-24">
                                            <div class="d-flex align-items-center gap-8">
                                                <img src="static/picture/tick.png" alt="">
                                                <h6 class="light-black">Free Toiletries</h6>
                                            </div>
                                            <div class="d-flex align-items-center gap-8">
                                                <img src="static/picture/tick.png" alt="">
                                                <h6 class="light-black">Bathrobe</h6>
                                            </div>
                                            <div class="d-flex align-items-center gap-8">
                                                <img src="static/picture/tick.png" alt="">
                                                <h6 class="light-black">Bidet</h6>
                                            </div>
                                            <div class="d-flex align-items-center gap-8">
                                                <img src="static/picture/tick.png" alt="">
                                                <h6 class="light-black">Streaming service (like Netflix)</h6>
                                            </div>
                                            <div class="d-flex align-items-center gap-8">
                                                <img src="static/picture/tick.png" alt="">
                                                <h6 class="light-black">Toilet</h6>
                                            </div>
                                            <div class="d-flex align-items-center gap-8">
                                                <img src="static/picture/tick.png" alt="">
                                                <h6 class="light-black">Bath or Shower</h6>
                                            </div>
                                            <div class="d-flex align-items-center gap-8">
                                                <img src="static/picture/tick.png" alt="">
                                                <h6 class="light-black">Towels</h6>
                                            </div>
                                            <div class="d-flex align-items-center gap-8">
                                                <img src="static/picture/tick.png" alt="">
                                                <h6 class="light-black">Linen</h6>
                                            </div>
                                        </div>
                                        <hr class="bg-dark-gray mb-24">
                                        <div class="d-flex align-items-center justify-content-between mb-24">
                                            <div>
                                                <h5 class="light-black">Guests</h5>
                                                <h6 class="dark-gray fw-600">3 Guests</h6>
                                            </div>
                                            <div class="quantity quantity-wrap">
                                                <input class="decrement" type="button" value="-">
                                                <input type="text" name="quantity" value="0" maxlength="2" size="1" id="inputquantityCell" class="number">
                                                <input class="increment bg-primary color-white" type="button" value="+">
                                            </div>
            
                                        </div>
            
            
                                        <ul class="p-0 unstyled mb-24">
                                            <li class="d-flex align-items-center gap-8 mb-8">
                                                <img src="static/picture/tick.png" alt="">
                                                <h6 class="light-black">Very Good <span class="dark-gray">breakfast USD $120</span>
                                                </h6>
                                            </li>
                                            <li class="d-flex align-items-center gap-8 mb-8">
                                                <img src="static/picture/tick.png" alt="">
                                                <h6 class="light-black">Free Cancellation <span class="dark-gray">before 26 August
                                                        2023</span></h6>
                                            </li>
                                            <li class="d-flex align-items-center gap-8 mb-8">
                                                <img src="static/picture/tick.png" alt="">
                                                <h6 class="light-black">Confirmation <span class="dark-gray">is immediate</span>
                                                </h6>
                                            </li>
                                            <li class="d-flex align-items-center gap-8 mb-8">
                                                <img src="static/picture/tick.png" alt="">
                                                <h6 class="light-black">No Booking <span class="dark-gray">or Credit card fee</span>
                                                </h6>
                                            </li>
                                        </ul>
                                        <div class="text-center">
                                            <h4 class="light-black fw-600">USD Rs340.00</h4>
                                            <h6 class="dark-gray mb-16">Rs130 taxes and charges</h6>
                                            <button type="submit" class="cus-btn full-width">I'll reserve</button>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xl-6 col-lg-6 col-md-6">
                                    <div class="room-block">
                                        <h5 class="light-black mb-8">Super Deluxe Room with Private Pool Beach & Balocny
                                            Wadi Waterpark Access</h5>
                                        <h6 class="color-primary mb-16">Recommended for 2 adults, 1 child</h6>
                                        <div class="d-flex align-items-center justify-content-between mb-8">
                                            <div class="d-flex align-items-center facility gap-8">
                                                <img src="static/picture/icon-11.png" alt="">
                                                <h6 class="light-black fw-600">1 large double bed</h6>
                                            </div>
                                            <h6 class="dark-gray">Direct Access to Dubai Metro</h6>
                                        </div>
                                        <hr class="bg-dark-gray mb-24">
                                        <div class="d-flex flex-wrap align-items-center gap-16 mb-24">
                                            <div class="d-flex align-items-center  facility gap-8">
                                                <img src="static/picture/icon-21.png" alt="">
                                                <h6 class="light-black">Sound Proof</h6>
                                            </div>
                                            <div class="d-flex align-items-center  facility gap-8">
                                                <img src="static/picture/icon-3.png" alt="">
                                                <h6 class="light-black">44m²</h6>
                                            </div>
                                            <div class="d-flex align-items-center  facility gap-8">
                                                <img src="static/picture/icon-4.png" alt="">
                                                <h6 class="light-black">Landmarks</h6>
                                            </div>
                                            <div class="d-flex align-items-center  facility gap-8">
                                                <img src="static/picture/icon-5.png" alt="">
                                                <h6 class="light-black">City View</h6>
                                            </div>
                                            <div class="d-flex align-items-center  facility gap-8">
                                                <img src="static/picture/icon-6.png" alt="">
                                                <h6 class="light-black">Air Conditioning</h6>
                                            </div>
                                            <div class="d-flex align-items-center  facility gap-8">
                                                <img src="static/picture/icon-7.png" alt="">
                                                <h6 class="light-black">Private bathroom</h6>
                                            </div>
                                            <div class="d-flex align-items-center  facility gap-8">
                                                <img src="static/picture/icon-8.png" alt="">
                                                <h6 class="light-black">Flat-screen TV</h6>
                                            </div>
                                        </div>
            
                                        <hr class="bg-dark-gray mb-24">
            
                                        <div class="d-flex flex-wrap align-items-center gap-16 mb-24">
                                            <div class="d-flex align-items-center gap-8">
                                                <img src="static/picture/tick.png" alt="">
                                                <h6 class="light-black">Free Toiletries</h6>
                                            </div>
                                            <div class="d-flex align-items-center gap-8">
                                                <img src="static/picture/tick.png" alt="">
                                                <h6 class="light-black">Bathrobe</h6>
                                            </div>
                                            <div class="d-flex align-items-center gap-8">
                                                <img src="static/picture/tick.png" alt="">
                                                <h6 class="light-black">Bidet</h6>
                                            </div>
                                            <div class="d-flex align-items-center gap-8">
                                                <img src="static/picture/tick.png" alt="">
                                                <h6 class="light-black">Streaming service (like Netflix)</h6>
                                            </div>
                                            <div class="d-flex align-items-center gap-8">
                                                <img src="static/picture/tick.png" alt="">
                                                <h6 class="light-black">Toilet</h6>
                                            </div>
                                            <div class="d-flex align-items-center gap-8">
                                                <img src="static/picture/tick.png" alt="">
                                                <h6 class="light-black">Bath or Shower</h6>
                                            </div>
                                            <div class="d-flex align-items-center gap-8">
                                                <img src="static/picture/tick.png" alt="">
                                                <h6 class="light-black">Towels</h6>
                                            </div>
                                            <div class="d-flex align-items-center gap-8">
                                                <img src="static/picture/tick.png" alt="">
                                                <h6 class="light-black">Linen</h6>
                                            </div>
                                        </div>
                                        <hr class="bg-dark-gray mb-24">
                                        <div class="d-flex align-items-center justify-content-between mb-24">
                                            <div>
                                                <h5 class="light-black">Guests</h5>
                                                <h6 class="dark-gray fw-600">3 Guests</h6>
                                            </div>
                                            <div class="quantity quantity-wrap">
                                                <input class="decrement" type="button" value="-">
                                                <input type="text" name="quantity" value="0" maxlength="2" size="1" id="quantityCellinput" class="number">
                                                <input class="increment bg-primary color-white" type="button" value="+">
                                            </div>
            
                                        </div>
            
            
                                        <ul class="p-0 unstyled mb-24">
                                            <li class="d-flex align-items-center gap-8 mb-8">
                                                <img src="static/picture/tick.png" alt="">
                                                <h6 class="light-black">Very Good <span class="dark-gray">breakfast USD $120</span>
                                                </h6>
                                            </li>
                                            <li class="d-flex align-items-center gap-8 mb-8">
                                                <img src="static/picture/tick.png" alt="">
                                                <h6 class="light-black">Free Cancellation <span class="dark-gray">before 26 August
                                                        2023</span></h6>
                                            </li>
                                            <li class="d-flex align-items-center gap-8 mb-8">
                                                <img src="static/picture/tick.png" alt="">
                                                <h6 class="light-black">Confirmation <span class="dark-gray">is immediate</span>
                                                </h6>
                                            </li>
                                            <li class="d-flex align-items-center gap-8 mb-8">
                                                <img src="static/picture/tick.png" alt="">
                                                <h6 class="light-black">No Booking <span class="dark-gray">or Credit card fee</span>
                                                </h6>
                                            </li>
                                        </ul>
                                        <div class="text-center">
                                            <h4 class="light-black fw-600">USD $540.00</h4>
                                            <h6 class="dark-gray mb-16">Rs200 taxes and charges</h6>
                                            <button type="submit" class="cus-btn full-width">I'll reserve</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                    <!-- Hotel Table End -->
                </div>
            </section>
            <!-- Hotel Availaibility End -->
            
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
        <div class="search-popup">
            <div class="search-popup__overlay search-toggler"></div>
            <div class="search-popup__content">
                <form role="search" method="get" class="search-popup__form" action="index.jsp">
                    <input type="text" id="search" placeholder="Search Here...">
                    <button type="submit"><i class="fal fa-search"></i></button>
                </form>
            </div>
        </div>
        <!-- search-popup end-->
    </div>
    <div class="modal fade" id="productQuickView" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-hidden="true">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          <h2 class="modal-title fs-5 h1 light-black fw-500" id="staticBackdropLabel">Holiday Homes - Apartments</h2>
          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
        </div>
        <div class="modal-body">
          <div class="product-list-3">
            <div class="shop-block mb-24 text-center">
              <div class="img-box">
                <a href=""><img src="static/picture/hotel-detail-1.png" alt="" class="mb-md-0 mb-16"></a>
              </div>
              <div class="">
                <div class="price v-2">
                  <h5 class="light-black mt-4 mb-2"><a href="">Holiday Homes - Apartments</a></h5>
                 
                </div>
                <div class="rating-star mb-16">
                  <i class="fas fa-star color-primary"></i>
                  <i class="fas fa-star color-primary"></i>
                  <i class="fas fa-star color-primary"></i>
                  <i class="fas fa-star color-primary"></i>
                  <i class="fas fa-star color-primary"></i>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>

    <!-- Mobile Menu Start -->
     
    <!-- Mobile Menu End -->

    <!-- Jquery Js -->

    <!-- Site Scripts -->
<!--<script src="static/js/date.js"></script>
    <script src="static/js/app.js"></script>   -->
</body>

</html>