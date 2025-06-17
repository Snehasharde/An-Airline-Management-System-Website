<%@page import="java.util.List"%>
<%@page import="Airlines.Dao.UserDao"%>
<%@page import="Airlines.jdbc.jdbc"%>
<%@page import="Airlines.entites.User"%>
<%@page import="Airlines.Dao.Flight_Detail_Dao"%>
<%@page import="Airlines.FactoryProvider"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>FlightFlow</title>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
	crossorigin="anonymous"></script>
<link rel="stylesheet" href="static/css/admin.css">
<link rel="stylesheet" href="static/css/app.css">
</head>
<body>


	<%
	User user = (User) session.getAttribute("current-user");

	if (user == null) {
		session.setAttribute("message", "you are not login !! Login First");
		response.sendRedirect("login_page.jsp");
		return;
	} else {
		if (user.getUser_type().equals("normal")) {
			session.setAttribute("message", "you are not Admin !! Do not Access this Page");
			response.sendRedirect("login_page.jsp");
			return;
		}

	}
	%>

	<!-- Main Wrapper Start -->

	<!-- Header Area Start -->
	<header>
		<nav class="main-menu">
			<div class="container-fluid">
				<div class="main-menu__block">
					<div class="main-menu__left">

						<div class="main-menu__logo">
							<a href="index.jsp"> <img src="static/image/logo_me.png"
								alt="FlightFlow" width="200px">
							</a>
						</div>

						<div class="main-menu__nav">
							<ul class="main-menu__list">
								<li><a href="index.jsp">Home</a></li>

								<li class="dropdown"><a href="flight-listing.jsp">Flight</a>
								</li>
								<li class="dropdown"><a href="car-listing.jsp"
									class="active">Car</a></li>
								<li class="dropdown"><a href="hotel-listing.jsp">Hotel</a>
								</li>
								<li><a href="tour-packages.jsp">Tour Package</a></li>

								<li class="dropdown"><a href="javascript:void(0);">Pages</a>
									<ul class="sub-menu">
										<li><a href="about-us.jsp">About</a></li>
										<li><a href="contact.jsp">Contact</a></li>
										<li><a href="privacy-policy.jsp">Privacy Policy</a></li>
										<li><a href="login_page.jsp">Login</a></li>
										<li><a href="sign-up.jsp">Signup</a></li>
									</ul></li>
							</ul>
						</div>
					</div>
					<div class="main-menu__right">
						<a href="#"
							class="main-menu__search search-toggler d-xl-flex d-none"> <i
							class="fal fa-search"></i>
						</a>
						<div class="main-menu-signup__login d-xl-flex d-none">
							<a href="login_page.jsp" class="main-menu__login"> Login </a>
							<div class="center_slach d-xl-flex d-none">/</div>
							<a href="sign-up.jsp" class="main-menu__login"> Signup </a>
						</div>
						<a href="#" class="main-menu__toggler mobile-nav__toggler"> <i
							class="fa fa-bars"></i>
						</a>
					</div>
				</div>
			</div>
		</nav>
	</header>
	<br>
	<br>
	<br>
	<!-- Header Area end -->
	<section>
		<div class="container admin">
			<!-- first column -->
			<div class="col-md-4">
				<div class="card">
					<div class="card-body">

						<img src="static/image/team.png" height="100px" width="100px">
						<%
						    UserDao u = new UserDao(FactoryProvider.getFactory());
						     List  list = u.getUser();
						%>
						<p><b><% out.println(list.size());%></b></p>
						<h5>USERS</h5>
					</div>
				</div>
			</div>
			<!-- second column -->
			<div class="col-md-4">
				<div class="card">
					<div class="card-body">

						<img src="static/picture/plane.png" height="100px" width="200px">
						<%
						    Flight_Detail_Dao d = new Flight_Detail_Dao(FactoryProvider.getFactory());
						     List  list1 = d.getAllFlight_Detail();
						%>
						<br><br>
						<p><b><% out.println(list1.size());%></b></p>
						<h5>FLIGHTS</h5>
					</div>
				</div>
			</div>
			<!-- third column -->
			<div class="col-md-4">
				<div class="card">
					<div class="card-body">
						<img src="static/image/delivery-box.png" height="100px" width="100px"><br>
						 <p>click here to Update Discount Price</p>
                        <div class="btn-group">
                           <button type="button" class="btn btn-primary dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">  Discount </button>
                               <ul class="dropdown-menu">
                                 <li><a class="dropdown-item" data-bs-toggle="modal" data-bs-target="#flight-discount" href="#">Flight Discount</a></li>
                                 <li><a class="dropdown-item" data-bs-toggle="modal" data-bs-target="#car-discount" href="#">Car Discount</a></li>
                                 <li><a class="dropdown-item" data-bs-toggle="modal" data-bs-target="#hotel-discount" href="#">Hotel Hotel</a></li>
                               </ul>
                          </div>
					</div>
				</div>
			 </div>
		  </div>
		 <!-- <h4 class="heading">ADD</h4>-->
		 <br>
		   <hr>
		<div class="container admin">
<!-- fourth column -->
			 <div class="col-md-4">
				<div class="card">
					<div class="card-body1">

						<img src="static/picture/plane.png" height="100px" width="250px">
						<p>click here to add new flights</p>
						<button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#add-flight">ADD FLIGHTS</button> 
					</div>
				</div>
			</div>
		 
<!-- fifth column -->
			
			<div class="col-md-4">
				<div class="card">
					<div class="card-body1">
						<img src="static/picture/car.png" height="100px" width="250px">
						<p>click here to add new Car</p>
                        <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#addCar ">Add Car</button>
					</div>
				</div>
			</div>
<!-- sixth column -->
			<div class="col-md-4">
				<div class="card">
					<div class="card-body1">
						<img src="static/picture/hotel1.png" height="100px" width="150px">
						<p>click here to add new hotels</p>
						<button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#add-hotel">ADD HOTELS</button> 
					</div>
				</div>
			</div>
			 
		</div>
        <br><br>
     <!--  <h4 class="heading">UPDATES</h4> -->
     <hr>
       
       <div class="container admin">
<!-- fourth column -->
			 <div class="col-md-4">
				<div class="card">
					<div class="card-body1">

						<img src="static/image/addFlight.png" height="100px" width="100px">
						<p>click here to any updates in flights</p>
                      <div class="btn-group">
                           <button type="button" class="btn btn-primary dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">  FLIGHTS </button>
                               <ul class="dropdown-menu">
                                 <li><a class="dropdown-item" data-bs-toggle="modal" data-bs-target="#delete-flight" href="#">Delete Flight</a></li>
                                 <li><a class="dropdown-item" data-bs-toggle="modal" data-bs-target="#update-flight" href="#">Update Flight</a></li>
                               </ul>
                          </div>
					</div>
				</div>
			</div>
		 
<!-- fifth column -->
			
			<div class="col-md-4">
				<div class="card">
					<div class="card-body1">
						<img src="static/picture/car1.png" height="100px" width="100px">
						<p>click here to any update in Car</p>
                        <div class="btn-group">
                           <button type="button" class="btn btn-primary dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">  Car </button>
                               <ul class="dropdown-menu">
                                 <li><a class="dropdown-item" data-bs-toggle="modal" data-bs-target="#delete-car" href="#">Delete Car</a></li>
                                 <li><a class="dropdown-item" data-bs-toggle="modal" data-bs-target="#update-car" href="#">Update Car</a></li>
                               </ul>
                          </div>
					</div>
				</div>
			</div>
<!-- sixth column -->
			<div class="col-md-4">
				<div class="card">
					<div class="card-body1">
						<img src="static/picture/hotel.png" height="100px" width="100px">
						<p>click here to any update in hotels</p>
						<div class="btn-group">
                           <button type="button" class="btn btn-primary dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">  HOTELS </button>
                               <ul class="dropdown-menu">
                                 <li><a class="dropdown-item" data-bs-toggle="modal" data-bs-target="#delete-hotel" href="#">Delete Hotel</a></li>
                                 <li><a class="dropdown-item" data-bs-toggle="modal" data-bs-target="#update-hotel" href="#">Update Hotel</a></li>
                               </ul>
                          </div>
					</div>
				</div>
			</div>
			 
		</div>
      
	</section>
	<br>
	<br>
	<br>
	<!-- *********************************************************** Footer start****************************************************************** -->
	
	<footer class="bg-white p-40" data-sal="slide-down"
		data-sal-duration="800" data-sal-delay="100"
		data-sal-easing="ease-in-out">
		<div class="container-fluid">
			<div class="row">
				<div class="col-xl-2 col-lg-2 col-md-6 col-6 mb-lg-0 mb-32">
					<h4 class="light-black mb-24">Booking</h4>
					<div class="our-links">
						<ul class="unstyled">
							<li class="mb-16"><a href="flight-booking.jsp"
								class="light-black">Book Flights</a></li>
							<li class="mb-16"><a href="hotel-packages.jsp"
								class="light-black">Hotel Services</a></li>
							<li class="mb-16"><a href="car-booking.jsp"
								class="light-black">Transportation</a></li>
							<li class="mb-16"><a href="tour-packages.jsp"
								class="light-black">Planning Your Trip</a></li>
						</ul>
					</div>
				</div>
				<div class="col-xl-2 col-lg-2 col-md-6 col-6 mb-lg-0 mb-32">
					<h4 class="light-black mb-24">Useful Links</h4>
					<div class="our-links">
						<ul class="unstyled">
							<li class="mb-16"><a href="" class="light-black">Home</a></li>
							<li class="mb-16"><a href="about-us.jsp" class="light-black">About
							</a></li>
							<li class="mb-16"><a href="contact.jsp" class="light-black">Contact
									Us</a></li>
						</ul>
					</div>
				</div>
				<div class="col-xl-2 col-lg-2 col-md-6 col-6 mb-md-0 mb-32">
					<h4 class="light-black mb-24">Manage</h4>
					<div class="our-links">
						<ul class="unstyled">
							<li class="mb-16"><a href="flight-booking.jsp"
								class="light-black">Check-in</a></li>
							<li class="mb-16"><a href="tour-packages.jsp"
								class="light-black">Manage Your Booking</a></li>
							<li class="mb-16"><a href="car-listing.jsp"
								class="light-black">Char Drive</a></li>
							<li class="mb-16"><a href="flight-listing.jsp"
								class="light-black">Flight Status</a></li>
						</ul>
					</div>
				</div>
				<div class="col-xl-3 col-lg-3 col-md-6 col-sm-6">
					<h4 class="light-black mb-16">Contact Us</h4>
					<div class="follow-us">
						<ul class="unstyled">
							<li class="mb-8"><img src="static/picture/location-bk.png"
								alt="">&nbsp;&nbsp;PRH5+M42, Depalpur Rd,Devi
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Ahillyabai Holkar
								Airport
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Area,Indore,(MP-452005).</li>
							<li class="mb-8 h-27 color-primary"><img
								src="static/picture/telephone.png" alt="">&nbsp;&nbsp;+1
								234 567 890</li>
							<li class="mb-24"><a href=""><img
									src="static/picture/mail.png" alt="">&nbsp;&nbsp;email@example.com</a></li>
						</ul>
					</div>
				</div>

				<div class="col-xl-3 col-lg-3 col-md-6 col-sm-6">
					<div class="social-link mb-32">
						<h6 class="light-black mb-8">Follow Us!</h6>
						<ul class="unstyled">
							<li><a href="" class="active"><img
									src="static/picture/instagram.png" alt=""></a></li>
							<li><a href=""><img src="static/picture/facebook.png"
									alt=""></a></li>
							<li><a href=""><img src="static/picture/linkedin.png"
									alt=""></a></li>
							<li><a href=""><img src="static/picture/twitter.png"
									alt=""></a></li>
						</ul>
					</div>

				</div>


			</div>
		</div>

	</footer>
	<div id="copy1">Copyright &copy; 2025.Company name All rights
		reserved.</div>
   <!-- *********************************************************** Footer Ends ****************************************************************** -->
	
	<!-- *********************************************************** Update Flight Discount start****************************************************************** -->
  
 <%
     String fcode = request.getParameter("code");
     String discount = request.getParameter("discount");
  /*   Flight_Detail_Dao fd = new Flight_Detail_Dao(FactoryProvider.getFactory());
     if(fcode != null)
     {
    	 fd.updateDiscount(fcode, discount);
    	 
     }*/
 %> 
    <div class="modal fade" id="flight-discount" tabindex="-1"
							aria-labelledby="exampleModalLabel" aria-hidden="true">
							<div class="modal-dialog">
								<form action="Admin.jsp" Method="post">
									<div class="modal-content">
										<div class="modal-header">
											<h5 class="modal-title" id="exampleModalLabel">Update
												Flight Discount Price</h5>
											<button type="button" class="btn-close"
												data-bs-dismiss="modal" aria-label="Close"></button>
										</div>
										<div class="modal-body">
                                         Flight Code :<input type="text" name="code" class="form-control">
										 Discount Price :<input type="text" name="discount" class="form-control">	 
										</div>
										<div class="modal-footer">
											<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
											<button type="Submit" class="btn btn-primary">Save changes</button>
										</div>
									</div>
								</form>
							</div>
						</div>

<!-- *********************************************************** update Flight Discount Ends ****************************************************************** -->
	 
	 <!-- *********************************************************** Update Car Discount start****************************************************************** -->
  
 
    <div class="modal fade" id="car-discount" tabindex="-1"
							aria-labelledby="exampleModalLabel" aria-hidden="true">
							<div class="modal-dialog">
								<form action="Admin.jsp" Method="post">
									<div class="modal-content">
										<div class="modal-header">
											<h5 class="modal-title" id="exampleModalLabel">Update
												Car Discount Price</h5>
											<button type="button" class="btn-close"
												data-bs-dismiss="modal" aria-label="Close"></button>
										</div>
										<div class="modal-body">
                                         Car Number :<input type="text" name="code" class="form-control">
										 Discount Price :<input type="text" name="discount" class="form-control">	 
										</div>
										<div class="modal-footer">
											<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
											<button type="Submit" class="btn btn-primary">Save changes</button>
										</div>
									</div>
								</form>
							</div>
						</div>

<!-- *********************************************************** update Car Discount Ends ****************************************************************** -->
	
	<!-- *********************************************************** Update Hotel Discount start****************************************************************** -->
  
 
    <div class="modal fade" id="hotel-discount" tabindex="-1"
							aria-labelledby="exampleModalLabel" aria-hidden="true">
							<div class="modal-dialog">
								<form action="Admin.jsp" Method="post">
									<div class="modal-content">
										<div class="modal-header">
											<h5 class="modal-title" id="exampleModalLabel">Update
												Hotel Discount Price</h5>
											<button type="button" class="btn-close"
												data-bs-dismiss="modal" aria-label="Close"></button>
										</div>
										<div class="modal-body">
                                         Hotel Code :<input type="text" name="code" class="form-control">
										 Discount Price :<input type="text" name="discount" class="form-control">	 
										</div>
										<div class="modal-footer">
											<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
											<button type="Submit" class="btn btn-primary">Save changes</button>
										</div>
									</div>
								</form>
							</div>
						</div>

<!-- *********************************************************** update Hotel Discount Ends ****************************************************************** -->
	  
	
<!-- *********************************************************** Update Flight start****************************************************************** -->
  
 
    <div class="modal fade" id="update-flight" tabindex="-1"
							aria-labelledby="exampleModalLabel" aria-hidden="true">
							<div class="modal-dialog">
								<form action="Admin.jsp" Method="post">
									<div class="modal-content">
										<div class="modal-header">
											<h5 class="modal-title" id="exampleModalLabel">Update
												Flight</h5>
											<button type="button" class="btn-close"
												data-bs-dismiss="modal" aria-label="Close"></button>
										</div>
										<div class="modal-body">
                                         Flight Code :<input type="text" name="code" class="form-control">
											 
										</div>
										<div class="modal-footer">
											<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
											<button type="Submit" class="btn btn-primary">Save changes</button>
										</div>
									</div>
								</form>
							</div>
						</div>

<!-- *********************************************************** update Flight Ends ****************************************************************** -->
	 
<!-- *********************************************************** Delete Flight start****************************************************************** -->
  <%
    String code =request.getParameter("code");
  //Flight_Detail_Dao dao = new Flight_Detail_Dao();
  jdbc dao = new jdbc();
  
  System.out.println(code);
  if(code != null){
       dao.deleteflight(code);
  }
   
  %>
    <div class="modal fade" id="delete-flight" tabindex="-1"
							aria-labelledby="exampleModalLabel" aria-hidden="true">
							<div class="modal-dialog">
								<form action="Admin.jsp" Method="post">
									<div class="modal-content">
										<div class="modal-header">
											<h5 class="modal-title" id="exampleModalLabel">Delete
												Flight</h5>
											<button type="button" class="btn-close"
												data-bs-dismiss="modal" aria-label="Close"></button>
										</div>
										<div class="modal-body">
                                         Flight Code :<input type="text" name="code" class="form-control">
											 
										</div>
										<div class="modal-footer">
											<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
											<button type="Submit" class="btn btn-primary">Save changes</button>
										</div>
									</div>
								</form>
							</div>
						</div>

<!-- *********************************************************** Delete Flight Ends ****************************************************************** -->
	 
	 
	<!--****************************************** Modal for add the flight  starts *********************************************************-->
	             <div class="modal fade" id="add-flight" tabindex="-1"
							aria-labelledby="exampleModalLabel" aria-hidden="true">
							<div class="modal-dialog">
								<form action="Flight_Detail_Servlet" Method="post">
									<div class="modal-content">
										<div class="modal-header">
											<h5 class="modal-title" id="exampleModalLabel">ADD
												Flight</h5>
											<button type="button" class="btn-close"
												data-bs-dismiss="modal" aria-label="Close"></button>
										</div>
										<div class="modal-body">

											Flight Code : <input type="text" name="flight_code" class="form-control">
											 Flight Name : <input type="text" name="flight_name" class="form-control">
											Source : <input type="text" name="source" class="form-control">
											 Destination : <input type="text" name="destination" class="form-control">
											Flight Price : <input type="text" name="price" class="form-control">
											 Departing : <input type="text" name="departing" class="form-control">
											Returning : <input type="text" name="returning" class="form-control">
											Cabin Type : <input type="text" name="cabin" class="form-control">
											 TakeOff Time : <input type="text" name="takeoff" class="form-control">
											Arrival Time : <input type="text" name="arrival" class="form-control"> 
											Way : <input type="text" name="way" class="form-control">
											Discount Price : <input type="text" name="discount" class="form-control">
										</div>
										<div class="modal-footer">
											<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
											<button type="Submit" class="btn btn-primary">Save changes</button>
										</div>
									</div>
								</form>
							</div>
						</div>
	<!--****************************************** Modal for add the flight ends *********************************************************-->
	
	<!--****************************************** Modal for add the Car  starts *********************************************************-->
	                              
	               <div class="modal fade" id="addCar" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                        <div class="modal-dialog">
                        <form action="car_Detail_Servlet" Method="post">
                          <div class="modal-content">
                            <div class="modal-header">
                               <h5 class="modal-title" id="exampleModalLabel">Add Car</h5>
                                 <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                    </div>
                                  <div class="modal-body">
                                      
											Car Name : <input type="text" name="name" class="form-control">
											Car Price : <input type="text" name="price" class="form-control">
											Car Number : <input type="text" name="number" class="form-control">
											Start Date : <input type="text" name="start_date" class="form-control">
											Return Date : <input type="text" name="end_date" class="form-control">
											PickUp Location : <input type="text" name="source" class="form-control">
											DropOff Location : <input type="text" name="destination" class="form-control">
											Location : <input type="text" name="location" class="form-control">
											Image : <input type="text" name="image" class="form-control">
                                   </div>
                                 <div class="modal-footer">
                                   <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                                <button type="submit" class="btn btn-primary">Save changes</button>
                              </div>
                           </div>
                         </form>
                        </div>
                    </div>
	                              
	<!--****************************************** Modal for add the Car  ends *********************************************************-->
	<!-- *********************************************************** delete car start****************************************************************** -->
  
 
    <div class="modal fade" id="delete-car" tabindex="-1"
							aria-labelledby="exampleModalLabel" aria-hidden="true">
							<div class="modal-dialog">
								<form action="Admin.jsp" Method="post">
									<div class="modal-content">
										<div class="modal-header">
											<h5 class="modal-title" id="exampleModalLabel">Delete
												Hotel</h5>
											<button type="button" class="btn-close"
												data-bs-dismiss="modal" aria-label="Close"></button>
										</div>
										<div class="modal-body">
                                         Car Number :<input type="text" name="code" class="form-control">
											 
										</div>
										<div class="modal-footer">
											<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
											<button type="Submit" class="btn btn-primary">Save changes</button>
										</div>
									</div>
								</form>
							</div>
						</div>

<!-- *********************************************************** Delete car Ends ****************************************************************** -->
	 
	 <!-- *********************************************************** Update car start****************************************************************** -->
  
 
    <div class="modal fade" id="update-car" tabindex="-1"
							aria-labelledby="exampleModalLabel" aria-hidden="true">
							<div class="modal-dialog">
								<form action="Admin.jsp" Method="post">
									<div class="modal-content">
										<div class="modal-header">
											<h5 class="modal-title" id="exampleModalLabel">Update
												Car</h5>
											<button type="button" class="btn-close"
												data-bs-dismiss="modal" aria-label="Close"></button>
										</div>
										<div class="modal-body">
                                         Car Number :<input type="text" name="code" class="form-control">
											 
										</div>
										<div class="modal-footer">
											<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
											<button type="Submit" class="btn btn-primary">Save changes</button>
										</div>
									</div>
								</form>
							</div>
						</div>

<!-- ***********************************************************Update car Ends ****************************************************************** -->
	 
	 
	<!--****************************************** Modal for add the Hotel starts *********************************************************-->
	                              
	               <div class="modal fade" id="add-hotel" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                        <div class="modal-dialog">
                        <form action="Hotel_Detail_Servlet" Method="post">
                          <div class="modal-content">
                            <div class="modal-header">
                               <h5 class="modal-title" id="exampleModalLabel">Add Hotel</h5>
                                 <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                    </div>
                                  <div class="modal-body">
                                      
											Hotel Name : <input type="text" name="name" class="form-control">
											Hotel Price : <input type="text" name="price" class="form-control">
											Location : <input type="text" name="location" class="form-control">
											CheckIn Date : <input type="text" name="checkin" class="form-control">
											CheckOut Date : <input type="text" name="checkout" class="form-control">
											Hotel Code : <input type="text" name="code" class="form-control">
											Location : <input type="text" name="location" class="form-control">
											Image : <input type="text" name="image" class="form-control">
                                   </div>
                                 <div class="modal-footer">
                                   <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                                <button type="submit" class="btn btn-primary">Save changes</button>
                              </div>
                           </div>
                         </form>
                        </div>
                    </div>
	                              
	<!--****************************************** Modal for add the Hotel ends *********************************************************-->
	<!-- *********************************************************** Update Hotel start****************************************************************** -->
  
 
    <div class="modal fade" id="delete-hotel" tabindex="-1"
							aria-labelledby="exampleModalLabel" aria-hidden="true">
							<div class="modal-dialog">
								<form action="Admin.jsp" Method="post">
									<div class="modal-content">
										<div class="modal-header">
											<h5 class="modal-title" id="exampleModalLabel">Delete
												Hotel</h5>
											<button type="button" class="btn-close"
												data-bs-dismiss="modal" aria-label="Close"></button>
										</div>
										<div class="modal-body">
                                         Hotel Code :<input type="text" name="code" class="form-control">
											 
										</div>
										<div class="modal-footer">
											<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
											<button type="Submit" class="btn btn-primary">Save changes</button>
										</div>
									</div>
								</form>
							</div>
						</div>

<!-- *********************************************************** Delete Hotel Ends ****************************************************************** -->
	 <!-- *********************************************************** Update Hotel start****************************************************************** -->
  
 
    <div class="modal fade" id="update-hotel" tabindex="-1"
							aria-labelledby="exampleModalLabel" aria-hidden="true">
							<div class="modal-dialog">
								<form action="Admin.jsp" Method="post">
									<div class="modal-content">
										<div class="modal-header">
											<h5 class="modal-title" id="exampleModalLabel">Update
												Hotel</h5>
											<button type="button" class="btn-close"
												data-bs-dismiss="modal" aria-label="Close"></button>
										</div>
										<div class="modal-body">
                                         Hotel Code :<input type="text" name="code" class="form-control">
											 
										</div>
										<div class="modal-footer">
											<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
											<button type="Submit" class="btn btn-primary">Save changes</button>
										</div>
									</div>
								</form>
							</div>
						</div>

<!-- *********************************************************** Update Hotel Ends ****************************************************************** -->
	 
</body>
</html>