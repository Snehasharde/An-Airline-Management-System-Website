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

        <!-- Main Content Start -->
        <div class="page-content m-0">

        <!-- Signup Form Start -->
        <section class="signup bg-white">
        <div class="container-fluid">
            <div class="row">
                <div class="col-xl-4 col-lg-6 col-md-7 mb-lg-0 mb-48">
                    <div class="form-block">
                        <a href="index.jsp" class="color-primary h6 mb-30"><i class="fal fa-chevron-left"></i>&nbsp;&nbsp;Back To Home</a>
                        <h2 class="mb-30 light-black">Log in</h2>
  <!--                     <div class="google mb-24">
                                <h6 class="color-white"><a href="" class="link-btn mb-24 mb-sm-0"> Continue with Google&nbsp;<img src="static/picture/google-icon.png" alt=""></a></h6>
                            </div>
                             <div class="facebook mb-30">
                                <h6 class="color-white"><a href="" class="link-btn"> Continue with Facebook&nbsp;<img src="static/picture/facebook-icon.png" alt=""></a></h6>
                            </div>
     -->                       
                            <%@include file="message.jsp" %>
                            
                        <h5 class="or mb-8">or</h5>
                        <h6 class="mb-24 text-center">Sign up with your email address</h6>
                        
                     <form action="login_servlet" method="post">
                      <div class="col-sm-12">
                           <div class="mb-24">
                               <input type="email" class="form-control" id="signup-mail" name="email" required="" placeholder="Email"><br>
                               </div>
                             </div>
                         <div class="col-sm-12">
                                    <div class="mb-24">  
                               <input type="password" class="form-control" id="create-password" name="password" required="" placeholder="Password"><br>
                           </div>
                              </div>                               
                               <input type="submit" class="cus-btn small-pad mb-24" name="b1" value="login">
                         </form>                         
                         <a href="sign-up.jsp">if not registered click here</a>
                    </div>
                </div>
                
            </div>
        </div>
        </section>
        <!-- Signup Form End -->
        </div>
        <!-- Main Content End -->      
    </div>


    <!-- Mobile Menu Start -->
    <div class="mobile-nav__wrapper">
        <div class="mobile-nav__overlay mobile-nav__toggler"></div>
        <div class="mobile-nav__content">
            <span class="mobile-nav__close mobile-nav__toggler"></span>
            <div class="logo-box">
                <a href="index.jsp" aria-label="logo image"><img src="static/picture/logo.png" alt="" class="invisible"></a>
            </div>
            <div class="mobile-nav__container"></div>
            <ul class="mobile-nav__contact list-unstyled">
                <li>
                    <i class="fas fa-envelope"></i>
                    <a href="mailto:example@company.com">example@company.com</a>
                </li>
                <li>
                    <i class="fa fa-phone-alt"></i>
                    <a href="tel:+12345678">+123 (4567) -890</a>
                </li>
            </ul>
            
        </div>
    </div>
    <!-- Mobile Menu End -->

    <!-- Jquery Js -->
     

    <!-- Site Scripts -->     
</body>
</html>