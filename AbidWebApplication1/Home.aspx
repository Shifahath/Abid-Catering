<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="AbidWebApplication1.home" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Abid Catering</title>

    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="css/agency.css" rel="stylesheet">
    <link href="css/animate.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
    <link href='https://fonts.googleapis.com/css?family=Kaushan+Script' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Droid+Serif:400,700,400italic,700italic' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700' rel='stylesheet' type='text/css'>

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
        <!-- jQuery -->
    <script src="js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>

    <!-- Plugin JavaScript -->
    <script src="http://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js"></script>
    <script src="js/classie.js"></script>
    <script src="js/cbpAnimatedHeader.js"></script>

    <!-- Contact Form JavaScript -->
    <script src="js/jqBootstrapValidation.js"></script>
    <script src="js/contact_me.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="js/agency.js"></script>
</head>
<body>
    <form id="form1" runat="server">
    <body style="padding-top: 14px;">

    <nav class="navbar navbar-default navbar-fixed-top">
    
    	    
                <div class="container">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span> 
                        </button>
                         <a class="navbar-brand animated rubberBand" href="Home.aspx"> <img src="img/abcd.png" id="logo" /> </a>
                    </div>
                    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                        <ul class="nav navbar-nav">
                            <li class="active"><a href="Home.aspx">Home</a></li>
                            
                            <li><a href="Services.aspx">Services</a></li>
                            <li><a href="Venues.aspx">Venues </a></li>
                            <li><a href="Menus.aspx">Menus</a></li>
                            <li><a href="../AbidUsers/MyAccount.aspx">My Account</a></li> 
                            <li><a href="ContactUs.aspx">Contact Us</a></li> 
                        </ul>
                        <ul class="nav navbar-nav navbar-right">
                            <li><a href="../AbidUsers/MyAccount.aspx"><span class="glyphicon glyphicon-user"></span> LogIn/ SignUp</a></li>
                            
                        </ul>
                    </div>
                </div>
                </nav>





    

    <!-- Header -->
    <header>
        <div class="container">
            <div class="intro-text">
                <div class="intro-lead-in" style="color: white; text-shadow: 2px 2px black;">Welcome To Abid Catering!</div>
                <div class="intro-heading" style="text-shadow: 2px 2px black;">We want the best for you...</div>
                <a href="#services" class="page-scroll btn btn-xl">Make it special</a>
            </div>
        </div>
    </header>

    <!-- Services Section -->
    <section id="services">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center"></br> </br> </br> 
                    <h2 class="section-heading">Our Services</h2>
                    <h4 class="service-heading">Abid Catering pride ourselves on our friendly and uniquely flexible approach to catering services. </h3>
 					<p class="text-muted">
Abid Catering Services offer a wide range of Asian hospitality packages for all occasions; Weddings, Mehndi, House Parties, outdoor Bar-B-Ques and Corporate Functions.
Our top chefs, waiters and entertainers are ready to make your event a special day you won't forget.
We offer a full design and supply service, from creating the stage and table decorations to suppling flowers ballons and candles.</p>
                 </br>              
                </div>
            </div>
            <div class="row text-center">
                <div class="col-md-3">
                    <span class="fa-stack fa-4x">
                        <i class="fa fa-circle fa-stack-2x text-primary"></i>
                        <i class="fa fa-users fa-stack-1x fa-inverse animated infinite pulse"></i>
                    </span>
                    <h4 class="service-heading">Corporate events</h4>
                    <p class="text-muted">Here at Abid Catering, we understand that for the corporate market, when organising an event your time is very precious. We provide concise, reliable information and advice to corporate event organisers to assist their decision making process with a rapid but creative response to all enquiries. We treat all our clients with the utmost discretion and respect as well as ensuring that a high quality service is delivered to make your event stand out from the rest.</p>
                <hr />
                </div>
                <div class="col-md-3">
                    <span class="fa-stack fa-4x">
                        <i class="fa fa-circle fa-stack-2x text-primary"></i>
                        <i class="fa fa-thumbs-o-up fa-stack-1x fa-inverse animated infinite pulse"></i>
                    </span>
                    <h4 class="service-heading">Private parties</h4>
                    <p class="text-muted">When organising a private event, be it a 3rd birthday party, retirement, Wedding Anniversary, we understands that it is very reassuring to have someone who can offer advice and ideas, someone who can develop your own fabulous ideas and make them happen whilst exceeding all of your guests expectations and making it the event of the year. This is what Abid Catering enjoys doing, and what we excel at!</p>
                <hr />
                </div>
                <div class="col-md-3">
                    <span class="fa-stack fa-4x">
                        <i class="fa fa-circle fa-stack-2x text-primary"></i>
                        <i class="fa fa-heart-o fa-stack-1x fa-inverse animated infinite pulse"></i>
                    </span>
                    <h4 class="service-heading">Weddings</h4>
                    <p class="text-muted">We understand how important your wedding day is to you. There are so many parts to the day, and if you feel a little overwhelmed or not sure where to start, we would love to help! We have many years of experience in putting together the ideas of the bride and groom and making them an extraordinary reality. We are also into various event production, from lighting, flower arrangements, to chauffeurs/room props. </p>
                <hr />
                </div>
                <div class="col-md-3">
                    <span class="fa-stack fa-4x">
                        <i class="fa fa-circle fa-stack-2x text-primary"></i>
                        <i class="fa fa-university  fa-stack-1x fa-inverse animated infinite pulse"></i>
                    </span>
                    <h4 class="service-heading">Venue sourcing</h4>
                    <p class="text-muted">There are times when trying to find the perfect venue seems like trying to find the proverbial needle in a haystack. Abid Catering have built up trusted relationships with many prestigious venues in and around London which we can thoroughly recommend. We are fully aware that there is more to successful events than just the food – but we believe that food is always a great place to start. </p>
               <hr />
                </div>
            </div>
        </div>
    </section>

    <!-- Portfolio Grid Section -->
    <section id="portfolio" class="bg-light-gray">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h2 class="section-heading">Our Venues</h2>
                    <p class="text-muted">Abid catering is proud to be a preffer caterer for top wedding halls in UK like Hilton Group UK , Holiday INN High Wycombe, Holiday INN Maidenhead, Copthorne Hotel Slough, The Center Slough, Blue mountain Golf Club Reading, Kasam Stadium Oxford, and many more and we can help you to book these venues for you as well.</p>
                 </br>
                     </div>
            </div>
            <div class="row">
                <div class="col-md-4 col-sm-6 portfolio-item">
                    <a href="#portfolioModal1" class="portfolio-link" data-toggle="modal">
                        <div class="portfolio-hover">
                            <div class="portfolio-hover-content">
                                <i class="fa fa-plus fa-3x"></i>
                            </div>
                        </div>
                        <img src="img/portfolio/hilton.jpg" class="img-responsive" alt="">
                    </a>
                    <div class="portfolio-caption">
                        <h4>Hilton Group UK</h4>
                        <p class="text-muted"> East Ham </p>
                    </div>
                </div>
                <div class="col-md-4 col-sm-6 portfolio-item">
                    <a href="#portfolioModal2" class="portfolio-link" data-toggle="modal">
                        <div class="portfolio-hover">
                            <div class="portfolio-hover-content">
                                <i class="fa fa-plus fa-3x"></i>
                            </div>
                        </div>
                        <img src="img/portfolio/holidayinn.jpg" class="img-responsive" alt="">
                    </a>
                    <div class="portfolio-caption">
                        <h4>Holiday INN</h4>
                        <p class="text-muted">High Wycombe</p>
                    </div>
                </div>
                <div class="col-md-4 col-sm-6 portfolio-item">
                    <a href="#portfolioModal3" class="portfolio-link" data-toggle="modal">
                        <div class="portfolio-hover">
                            <div class="portfolio-hover-content">
                                <i class="fa fa-plus fa-3x"></i>
                            </div>
                        </div>
                        <img src="img/portfolio/hinn.jpg" class="img-responsive" alt="">
                    </a>
                    <div class="portfolio-caption">
                        <h4>Holiday INN</h4>
                        <p class="text-muted">Maidenhead</p>
                    </div>
                </div>
                <div class="col-md-4 col-sm-6 portfolio-item">
                    <a href="#portfolioModal4" class="portfolio-link" data-toggle="modal">
                        <div class="portfolio-hover">
                            <div class="portfolio-hover-content">
                                <i class="fa fa-plus fa-3x"></i>
                            </div>
                        </div>
                        <img src="img/portfolio/cop.jpg" class="img-responsive" alt="">
                    </a>
                    <div class="portfolio-caption">
                        <h4>Copthorne Hotel</h4>
                        <p class="text-muted">Slough</p>
                    </div>
                </div>
                <div class="col-md-4 col-sm-6 portfolio-item">
                    <a href="#portfolioModal5" class="portfolio-link" data-toggle="modal">
                        <div class="portfolio-hover">
                            <div class="portfolio-hover-content">
                                <i class="fa fa-plus fa-3x"></i>
                            </div>
                        </div>
                        <img src="img/portfolio/v6.jpg" class="img-responsive" alt="">
                    </a>
                    <div class="portfolio-caption">
                        <h4>The Center</h4>
                        <p class="text-muted">Slough</p>
                    </div>
                </div>
                <div class="col-md-4 col-sm-6 portfolio-item">
                    <a href="#portfolioModal6" class="portfolio-link" data-toggle="modal">
                        <div class="portfolio-hover">
                            <div class="portfolio-hover-content">
                                <i class="fa fa-plus fa-3x"></i>
                            </div>
                        </div>
                        <img src="img/portfolio/v7.jpg" class="img-responsive" alt="">
                    </a>
                    <div class="portfolio-caption">
                        <h4>Blue mountain Golf Club</h4>
                        <p class="text-muted">Reading</p>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- About Section -->
    <section id="about" class="bg-yellow">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h2 class="section-heading">About Us</h2>
                    <h3 class="section-subheading text-muted">Abid Catering pride ourselves on our friendly and uniquely flexible approach to catering services.</h3>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <ul class="timeline">
                        <li>
                            <div class="timeline-image">
                                <img class="img-circle img-responsive" src="img/about/about1.png" alt="">
                            </div>
                            <div class="timeline-panel">
                                <div class="timeline-heading">
                                    <h4>2009-2011</h4>
                                    <h4 class="subheading">Our Humble Beginnings</h4>
                                </div>
                                <div class="timeline-body">
                                    <p class="text-muted">Abid Catering Services offer a wide range of Asian hospitality packages for all occasions; Weddings, Mehndi, House Parties, outdoor Bar-B-Ques and Corporate Functions.
Our top chefs, waiters and entertainers are ready to make your event a special day you won't forget.</p>
                                </div>
                            </div>
                        </li>
                        <li class="timeline-inverted">
                            <div class="timeline-image">
                                <img class="img-circle img-responsive" src="img/about/about1.png" alt="">
                            </div>
                            <div class="timeline-panel">
                                <div class="timeline-heading">
                                    <h4>March 2011</h4>
                                    <h4 class="subheading">An Idea is Born</h4>
                                </div>
                                <div class="timeline-body">
                                    <p class="text-muted">Abid Catering Services offer a wide range of Asian hospitality packages for all occasions; Weddings, Mehndi, House Parties, outdoor Bar-B-Ques and Corporate Functions.
Our top chefs, waiters and entertainers are ready to make your event a special day you won't forget.</p>
                                </div>
                            </div>
                        </li>
                        <li>
                            <div class="timeline-image">
                                <img class="img-circle img-responsive" src="img/about/about1.png" alt="">
                            </div>
                            <div class="timeline-panel">
                                <div class="timeline-heading">
                                    <h4>December 2012</h4>
                                    <h4 class="subheading">Transition to Full Service</h4>
                                </div>
                                <div class="timeline-body">
                                    <p class="text-muted">Abid Catering Services offer a wide range of Asian hospitality packages for all occasions; Weddings, Mehndi, House Parties, outdoor Bar-B-Ques and Corporate Functions.
Our top chefs, waiters and entertainers are ready to make your event a special day you won't forget.</p>
                                </div>
                            </div>
                        </li>
                        <li class="timeline-inverted">
                            <div class="timeline-image">
                                <img class="img-circle img-responsive" src="img/about/about1.png" alt="">
                            </div>
                            <div class="timeline-panel">
                                <div class="timeline-heading">
                                    <h4>July 2014</h4>
                                    <h4 class="subheading">Phase Two Expansion</h4>
                                </div>
                                <div class="timeline-body">
                                    <p class="text-muted">Abid Catering Services offer a wide range of Asian hospitality packages for all occasions; Weddings, Mehndi, House Parties, outdoor Bar-B-Ques and Corporate Functions.
Our top chefs, waiters and entertainers are ready to make your event a special day you won't forget.</p>
                                </div>
                            </div>
                        </li>
                        <li class="timeline-inverted">
                            <div class="timeline-image">
                                <h4>Be Part
                                    <br>Of Our
                                    <br>Story!</h4>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </section>

    <div class="container">
                <div class="col-lg-12 text-center">
                    <h1>ABID CATERING PROUDLY PRESENTS</h1>
                    <div class="divider"></div>
                    <p class="text-muted">Take a closer look in more detail</p>
                </div>
                <div class="row">
                    <div class="col-md-8 col-md-offset-2 scrollpoint sp-effect2">
                        <div class="video-container" >
                            <iframe src="https://www.youtube.com/embed/1OzSCCOTSEM"></iframe> <br />
                            
                        </div>
                        <p> </p>
                    </div> 
                </div>
	</div>
    
    <!-- Team Section -->
    <section id="team" class="bg-light-gray">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h2 class="section-heading">Our Amazing Team</h2>
                    <h3 class="section-subheading text-muted">We like to introduce to you our main team.</h3>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-4">
                    <div class="team-member">
                        <img src="img/team/face.jpg" class="img-responsive img-circle" alt="">
                        <h4>Kay Garland</h4>
                        <p class="text-muted">The Admin </p>
                        <ul class="list-inline social-buttons">
                            <li><a href="#"><i class="fa fa-twitter animated infinite pulse" style= "margin-top: 9px;" ></i></a>
                            </li>
                            <li><a href="#"><i class="fa fa-facebook animated infinite pulse" style= "margin-top: 9px;" ></i></a>
                            </li>
                            <li><a href="#"><i class="fa fa-linkedin animated infinite pulse" style= "margin-top: 9px;" ></i></a>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="col-sm-4">
                    <div class="team-member">
                        <img src="img/team/face.jpg" class="img-responsive img-circle" alt="">
                        <h4>Larry Parker</h4>
                        <p class="text-muted">Lead Marketer</p>
                        <ul class="list-inline social-buttons">
                            <li><a href="#"><i class="fa fa-twitter animated infinite pulse" style= "margin-top: 9px;" ></i></a>
                            </li>
                            <li><a href="#"><i class="fa fa-facebook animated infinite pulse" style= "margin-top: 9px;" ></i></a>
                            </li>
                            <li><a href="#"><i class="fa fa-linkedin animated infinite pulse" style= "margin-top: 9px;" ></i></a>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="col-sm-4">
                    <div class="team-member">
                        <img src="img/team/face.jpg" class="img-responsive img-circle" alt="">
                        <h4>Diana Pertersen</h4>
                        <p class="text-muted">Lead Catering Staff</p>
                        <ul class="list-inline social-buttons">
                            <li><a href="#"><i class="fa fa-twitter animated infinite pulse" style= "margin-top: 9px;" ></i></a>
                            </li>
                            <li><a href="#"><i class="fa fa-facebook animated infinite pulse" style= "margin-top: 9px;" ></i></a>
                            </li>
                            <li><a href="#"><i class="fa fa-linkedin animated infinite pulse" style= "margin-top: 9px;" ></i></a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-8 col-lg-offset-2 text-center">
                    <p class="large text-muted">Abid Catering pride ourselves on our friendly and uniquely flexible approach to catering services.</p>
                </div>
            </div>
        </div>
    </section>

    <!-- Clients Aside -->
    <aside class="clients">
        <div class="container">
            <div class="row">
                <div class="col-md-3 col-sm-6">
                    <a href="#">
                        <img src="img/logos/envato.jpg" class="img-responsive img-centered" alt="">
                    </a>
                </div>
                <div class="col-md-3 col-sm-6">
                    <a href="#">
                        <img src="img/logos/designmodo.jpg" class="img-responsive img-centered" alt="">
                    </a>
                </div>
                <div class="col-md-3 col-sm-6">
                    <a href="#">
                        <img src="img/logos/themeforest.jpg" class="img-responsive img-centered" alt="">
                    </a>
                </div>
                <div class="col-md-3 col-sm-6">
                    <a href="#">
                        <img src="img/logos/creative-market.jpg" class="img-responsive img-centered" alt="">
                    </a>
                </div>
            </div>
        </div>
    </aside>
    



   <!-- Portfolio Modals -->
    <!-- Use the modals below to showcase details about your portfolio projects! -->

    <!-- Portfolio Modal 1 -->
    <div class="portfolio-modal modal fade" id="portfolioModal1" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-content">
            <div class="close-modal" data-dismiss="modal">
                <div class="lr">
                    <div class="rl">
                    </div>
                </div>
            </div>
            <div class="container">
                <div class="row">
                    <div class="col-lg-8 col-lg-offset-2">
                        <div class="modal-body">
                            <!-- Project Details Go Here -->
                            <img src="img/abcd.png" style="height: 40px; margin-top: 20px; width: 255px; "/> <br />
                            <h2> Hilton Group UK</h2>
                            <p class="item-intro text-muted">East Ham, London</p>
                            <img class="img-responsive img-centered" src="img/portfolio/hilton.jpg" alt="">
                            <p>As well as being ideal for Conference, Exhibition, Banquets and Team Building Activities the venue is licensed for Civil Ceremonies with excellent facilities for Wedding Receptions. Addington Palace has nine individually designed rooms, the focal point being the magnificent Great Hall with its exquisite French chandelier, hand-carved architrave and silk wall coverings. We also offer a permanent Royal Marquee, lined with cream fabric the flexible space has gold dimmer chandeliers and flame up lighters.</p>
                            <p>
                                <strong>Are you interested in booking this venue for your special event?</strong>Get our best reasonable offer at <a href="https://getdpd.com/cart/hoplink/18076?referrer=bvbo4kax5k8ogc">ABIDcatering.com</a></p>
                            <ul class="list-inline">
                                <li>Location: xxxxxxxx </li>
                                <li>Capacity: xxxxxxxx</li>
                                <li>Type: xxxxxxxx</li>
                            </ul>
                            <button type="button" class="btn btn-primary" data-dismiss="modal"><i class="fa fa-times"></i> Close Venue</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Portfolio Modal 2 -->
    <div class="portfolio-modal modal fade" id="portfolioModal2" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-content">
            <div class="close-modal" data-dismiss="modal">
                <div class="lr">
                    <div class="rl">
                    </div>
                </div>
            </div>
            <div class="container">
                <div class="row">
                    <div class="col-lg-8 col-lg-offset-2">
                        <div class="modal-body">
                            <h2>Holiday INN</h2>
                            <p class="item-intro text-muted">High Wycombe, London</p>
                            <img class="img-responsive img-centered" src="img/portfolio/holidayinn.jpg" alt="">
                            <p>As well as being ideal for Conference, Exhibition, Banquets and Team Building Activities the venue is licensed for Civil Ceremonies with excellent facilities for Wedding Receptions. Addington Palace has nine individually designed rooms, the focal point being the magnificent Great Hall with its exquisite French chandelier, hand-carved architrave and silk wall coverings. We also offer a permanent Royal Marquee, lined with cream fabric the flexible space has gold dimmer chandeliers and flame up lighters.</p>
                            <p>
                                <strong>Are you interested in booking this venue for your special event?</strong>Get our best reasonable offer at <a href="https://getdpd.com/cart/hoplink/18076?referrer=bvbo4kax5k8ogc">ABIDcatering.com</a></p>
                            <ul class="list-inline">
                                <li>Location: xxxxxxxx </li>
                                <li>Capacity: xxxxxxxx</li>
                                <li>Type: xxxxxxxx</li>
                            </ul>
                            <button type="button" class="btn btn-primary" data-dismiss="modal"><i class="fa fa-times"></i> Close Venue</button></div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Portfolio Modal 3 -->
    <div class="portfolio-modal modal fade" id="portfolioModal3" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-content">
            <div class="close-modal" data-dismiss="modal">
                <div class="lr">
                    <div class="rl">
                    </div>
                </div>
            </div>
            <div class="container">
                <div class="row">
                    <div class="col-lg-8 col-lg-offset-2">
                        <div class="modal-body">
                            <!-- Project Details Go Here -->
                            <h2>Hilton Group UK</h2>
                            <p class="item-intro text-muted">East Ham, London</p>
                            <img class="img-responsive img-centered" src="img/portfolio/hilton.jpg" alt="">
                            <p>As well as being ideal for Conference, Exhibition, Banquets and Team Building Activities the venue is licensed for Civil Ceremonies with excellent facilities for Wedding Receptions. Addington Palace has nine individually designed rooms, the focal point being the magnificent Great Hall with its exquisite French chandelier, hand-carved architrave and silk wall coverings. We also offer a permanent Royal Marquee, lined with cream fabric the flexible space has gold dimmer chandeliers and flame up lighters.</p>
                            <p>
                                <strong>Are you interested in booking this venue for your special event?</strong>Get our best reasonable offer at <a href="https://getdpd.com/cart/hoplink/18076?referrer=bvbo4kax5k8ogc">ABIDcatering.com</a></p>
                            <ul class="list-inline">
                                <li>Location: xxxxxxxx </li>
                                <li>Capacity: xxxxxxxx</li>
                                <li>Type: xxxxxxxx</li>
                            </ul>
                            <button type="button" class="btn btn-primary" data-dismiss="modal"><i class="fa fa-times"></i> Close Venue</button> </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Portfolio Modal 4 -->
    <div class="portfolio-modal modal fade" id="portfolioModal4" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-content">
            <div class="close-modal" data-dismiss="modal">
                <div class="lr">
                    <div class="rl">
                    </div>
                </div>
            </div>
            <div class="container">
                <div class="row">
                    <div class="col-lg-8 col-lg-offset-2">
                        <div class="modal-body">
                            <!-- Project Details Go Here -->
                            <h2>Hilton Group UK</h2>
                            <p class="item-intro text-muted">Maidenhead, London</p>
                            <img class="img-responsive img-centered" src="img/portfolio/cop.jpg" alt="">
                            <p>As well as being ideal for Conference, Exhibition, Banquets and Team Building Activities the venue is licensed for Civil Ceremonies with excellent facilities for Wedding Receptions. Addington Palace has nine individually designed rooms, the focal point being the magnificent Great Hall with its exquisite French chandelier, hand-carved architrave and silk wall coverings. We also offer a permanent Royal Marquee, lined with cream fabric the flexible space has gold dimmer chandeliers and flame up lighters.</p>
                            <p>
                                <strong>Are you interested in booking this venue for your special event?</strong>Get our best reasonable offer at <a href="https://getdpd.com/cart/hoplink/18076?referrer=bvbo4kax5k8ogc">ABIDcatering.com</a></p>
                            <ul class="list-inline">
                                <li>Location: xxxxxxxx </li>
                                <li>Capacity: xxxxxxxx</li>
                                <li>Type: xxxxxxxx</li>
                            </ul>
                            <button type="button" class="btn btn-primary" data-dismiss="modal"><i class="fa fa-times"></i> Close Venue</button> </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Portfolio Modal 5 -->
    <div class="portfolio-modal modal fade" id="portfolioModal5" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-content">
            <div class="close-modal" data-dismiss="modal">
                <div class="lr">
                    <div class="rl">
                    </div>
                </div>
            </div>
            <div class="container">
                <div class="row">
                    <div class="col-lg-8 col-lg-offset-2">
                        <div class="modal-body">
                            <!-- Project Details Go Here -->
                            <h2>Hilton Group UK</h2>
                            <p class="item-intro text-muted">East Ham, London</p>
                            <img class="img-responsive img-centered" src="img/portfolio/hilton.jpg" alt="">
                            <p>As well as being ideal for Conference, Exhibition, Banquets and Team Building Activities the venue is licensed for Civil Ceremonies with excellent facilities for Wedding Receptions. Addington Palace has nine individually designed rooms, the focal point being the magnificent Great Hall with its exquisite French chandelier, hand-carved architrave and silk wall coverings. We also offer a permanent Royal Marquee, lined with cream fabric the flexible space has gold dimmer chandeliers and flame up lighters.</p>
                            <p>
                                <strong>Are you interested in booking this venue for your special event?</strong>Get our best reasonable offer at <a href="https://getdpd.com/cart/hoplink/18076?referrer=bvbo4kax5k8ogc">ABIDcatering.com</a></p>
                            <ul class="list-inline">
                                <li>Location: xxxxxxxx </li>
                                <li>Capacity: xxxxxxxx</li>
                                <li>Type: xxxxxxxx</li>
                            </ul>
                            <button type="button" class="btn btn-primary" data-dismiss="modal"><i class="fa fa-times"></i> Close Venue</button></div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Portfolio Modal 6 -->
    <div class="portfolio-modal modal fade" id="portfolioModal6" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-content">
            <div class="close-modal" data-dismiss="modal">
                <div class="lr">
                    <div class="rl">
                    </div>
                </div>
            </div>
            <div class="container">
                <div class="row">
                    <div class="col-lg-8 col-lg-offset-2">
                        <div class="modal-body">
                            <!-- Project Details Go Here -->
                            <h2>Hilton Group UK</h2>
                            <p class="item-intro text-muted">East Ham, London</p>
                            <img class="img-responsive img-centered" src="img/portfolio/hilton.jpg" alt="">
                            <p>As well as being ideal for Conference, Exhibition, Banquets and Team Building Activities the venue is licensed for Civil Ceremonies with excellent facilities for Wedding Receptions. Addington Palace has nine individually designed rooms, the focal point being the magnificent Great Hall with its exquisite French chandelier, hand-carved architrave and silk wall coverings. We also offer a permanent Royal Marquee, lined with cream fabric the flexible space has gold dimmer chandeliers and flame up lighters.</p>
                            <p>
                                <strong>Are you interested in booking this venue for your special event?</strong>Get our best reasonable offer at <a href="https://getdpd.com/cart/hoplink/18076?referrer=bvbo4kax5k8ogc">ABIDcatering.com</a></p>
                            <ul class="list-inline">
                                <li>Location: xxxxxxxx </li>
                                <li>Capacity: xxxxxxxx</li>
                                <li>Type: xxxxxxxx</li>
                            </ul>
                            <button type="button" class="btn btn-primary" data-dismiss="modal"><i class="fa fa-times"></i> Close Venue</button></div>
                    </div>
                </div>
            </div>
        </div>
    </div>

<footer>
        
             <div class="lightblue">   	
    	<div class="container">
    		<div class="row">
  				<div class="col-md-4">
  				<!-- COLUMN STARTS-->
                            <ul class="list-group">
                                    <li class="list-group-item">
									<h3 style="color: #222">About Us</h3>
                                    </li>

									<li class="list-group-item list-group-item-warning">
                                    <p>
										 Abid Catering has been listed 3 times by Ofsted as a particularly successful.  We were one of only catering service providers in the country at the time to have achieved this honour.
										 <br />
                                         <button class="btn lightgreen" style="color: #28378E">Read More</button>
									</p>
									
                                    </li>
                            </ul>
  				</div>
  				<!-- COLUMN ENDS-->
  				
  				<div class="col-md-4">
  				<!-- COLUMN STARTS-->
                                    <ul class="list-group">
                                            <li class="list-group-item">
									        <h3 style="color: #222">Our Address</h3>
                                            </li>
                                    <li class="list-group-item list-group-item-info">
                                    <p>							
									ABID Catering<br/>
									5 Grafton Street, High Wycombe <br/>
									Bucks HP12 3AJ<br/>
									Tel: 020 7033 0074 <br/> 
									Fax: 020 8542 0001<br/>
									Email:abidcateringservices@gmail.co.uk
									<br></p>
                                    </li></ul>	
  				</div>


  				<!-- COLUMN ENDS-->
  				
  				<div class="col-md-4">
  						<!-- COLUMN STARTS-->
                                    <ul class="list-group">
									<li class="list-group-item">
                                            <h3 style="color: #222">Stay in Touch</h3>
                                    </li>
									

                                    
  <li class="list-group-item list-group-item-success"><img src="img/facebook.png" class="animated infinite pulse"><a href="#"> Our Facebook page&nbsp;&nbsp;</a></li>
  <li class="list-group-item list-group-item-info"><img src="img/twitter.png" class="animated infinite pulse" width="16" height="16" alt="#"/><a href="#"> Follow us on Twitter</a></li>
  <li class="list-group-item list-group-item-warning"><img src="img/rss.png" class="animated infinite pulse" width="16" height="16" alt="#"/><a href="#"> Our RSS Feeds &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></li>
  <li class="list-group-item list-group-item-danger"><img src="img/vimeo.png" class="animated infinite pulse" width="16" height="16" alt="#"/><a href="#"> Our Vimeo Videos &nbsp;&nbsp;&nbsp;</a></li>
</ul>
									<br>
									<!-- SOCIAL LINKS ENDS-->
						<!-- COLUMN ENDS-->
  				</div>
  				
  		
			</div>
    	</div>
    <br>
</div>    
    <!-- BOTTOM -->	
    <div>	
    	<div class="container">
    		<div class="row">
    				
    					
					<!-- COPYRIGHTS WRAPPER STARTS-->
					<div>
							<br>
						
							<p>
								<a href="index.html">&nbsp;&nbsp;Home</a> / <a href="aboutus.html">About us</a> / <a href="parents.html">Our Team</a> / <a href="#">Others </a> / <a href="http://www.wimbledonchaseschool.co.uk/events-calendar/">News &amp; Events</a> / <a href="contact.html">Contact Us</a>
							</p>
							<br>
							<span class="capucopyright">&nbsp;Copyright © CAPU 2015. All rights reserved.</span>
					  		<br><br>
				  	</div>
					<!-- COPYRIGHTS ENDS-->
					
					
			</div>	
    	
    	</div>
    </div>	

            <div class="row">
                <div class="col-md-4">
                    <span class="copyright">Copyright &copy; ABID Catering 2015</span>
                </div>
                <div class="col-md-4">
                    <ul class="list-inline social-buttons">
                        <li><a href="#"><i class="fa fa-twitter animated infinite pulse" style= "margin-top: 9px;" ></i></a>
                        </li>
                        <li><a href="#"><i class="fa fa-facebook animated infinite pulse 3s" style= "margin-top: 9px;" ></i></a>
                        </li>
                        <li><a href="#"><i class="fa fa-linkedin animated infinite pulse" style= "margin-top: 9px;" ></i></a>
                        </li>
                    </ul>
                </div>
                <div class="col-md-4">
                    <ul class="list-inline quicklinks">
                        <li><a href="#">Privacy Policy</a>
                        </li>
                        <li><a href="#">Terms of Use</a>
                        </li>
                    </ul>
                </div>
            </div>
        
</footer>


</body>
    </form>
</body>
</html>
