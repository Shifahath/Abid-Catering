<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CreateEvent.aspx.cs" Inherits="AbidWebApplication1.Admin.CreateEvent" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Abid Catering</title>

    <!-- Bootstrap Core CSS -->
    <link href="../css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="../css/agency.css" rel="stylesheet">
       
    <link href="../css/animate.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="../font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
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
</head>
<body>

 <nav class="navbar navbar-default navbar-fixed-top">
    
    	    
                <div class="container">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span> 
                        </button>
                         <a class="navbar-brand animated rubberBand" href="../Home.aspx"> <img src="../img/abcd.png" id="logo" /> </a>
                    </div>
                    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                        <ul class="nav navbar-nav">
                            <li><a href="../Home.aspx">Home</a></li>
                            
                            <li><a href="../Services.aspx">Services</a></li>
                            <li><a href="../Venues.aspx">Venues </a></li>
                            <li><a href="../Menus.aspx">Menus</a></li>
                            <li  class="active"><a href="../AbidUsers/MyAccount.aspx">My Account</a></li> 
                            <li><a href="../ContactUs.aspx">Contact Us</a></li> 
                        </ul>
                        <ul class="nav navbar-nav navbar-right">
                            <li><a href="../Home.aspx"><asp:Label ID="userName" runat="server" Text=""></asp:Label> <span class="glyphicon glyphicon-user"></span> Log Out</a></li>
                            
                        </ul>
                    </div>
                </div>
                </nav>

    <!-- Contact Section -->
    <section id="">
    <form id="form1" runat="server">

    <br />    <br />  <br />
     <div class="container">

            <div class="container">

            <div class="row"> 
                <div class="col-lg-12 text-center">
                    <h1 class="section-heading">Create Event</h1>
                    <p>Please enter the event details below:</p>
                    
                </div>
            </div>
    </div>




             <hr>
<div class="row">
    <div class="col-lg-12">
      
        <div class="col-md-6">

           




            <p>
                <asp:TextBox ID="TextBoxEN" runat="server" Height="50px" Width="100%" class="form-control" 
                                            placeholder="Event Name *"></asp:TextBox>&nbsp;

                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                            ControlToValidate="TextBoxEN" ErrorMessage="*Event Name is required" 
                                            ForeColor="#CC0000"></asp:RequiredFieldValidator>
            </p>    

            <p>
                <p>Upload an image:</p>
                   <asp:FileUpload ID="FileUpload1" runat="server" Height="50px" Width="100%" class="form-control"/>&nbsp;
                   </br>
                   &nbsp;
            </p>
        
        
               
                
       </div>
        

        
        <div class="col-md-6">
        <p>
                <asp:TextBox ID="TextBoxEventDescription" runat="server" Width="100%" class="form-control" 
                                        Height="190px" TextMode="MultiLine" placeholder="Enter event's description here * "></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                            ControlToValidate="TextBoxEventDescription" ErrorMessage="*Event description is required" 
                                            ForeColor="#CC0000"></asp:RequiredFieldValidator>
                                        
            
                    
        </p> 
                                     <asp:Label ID="MessageLabel" runat="server" ForeColor="#FF99FF">MESSGAE</asp:Label> 
                                     </br> </br>        
           
        <p>
            
            <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Button" class="btn btn-xl"/>
            
        </p>    
    

        
        

        <br />
        </div>
        
    </div>
</div>

</div>
    </form>
    </section>


    











        <!-- jQuery -->
    <%--<script src="js/jquery.js"></script>

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
    <script src="js/agency.js"></script>--%>
        <script>
            (function (d, s, id) {
                var js, fjs = d.getElementsByTagName(s)[0];
                if (d.getElementById(id)) return;
                js = d.createElement(s); js.id = id;
                js.src = "//connect.facebook.net/en_GB/sdk.js#xfbml=1&version=v2.3";
                fjs.parentNode.insertBefore(js, fjs);
            } (document, 'script', 'facebook-jssdk'));
        </script>
    <footer>
        
                	
    	<div class="container" style="width:100%; background-color:#7EB5F5; padding-bottom: 5px; margin-bottom:0; padding-top:0; margin-top:0"> <br />
    		
    	
    <br>
   
    <!-- BOTTOM -->	
    <div>	
    	<div class="container">
    		<div class="row">
    				
    					
					<!-- COPYRIGHTS WRAPPER STARTS-->
					<div>
							
						
							<p>
								<a href="Home.aspx">&nbsp;&nbsp;Home</a> / <a href="Services.aspx">About us</a> / <a href="Services.aspx">Our Team</a> / <a href="Venues.aspx">Others </a> / <a href="Home.aspx">News &amp; Events</a> / <a href="ContactUs.aspx">Contact Us</a>
							</p>
							
							<%--<span class="capucopyright">&nbsp;Copyright © CAPU 2015. All rights reserved.</span>
					  		 <br /><br />--%>
				  	</div>
					<!-- COPYRIGHTS ENDS-->
					
					
			</div>	
    	
    	</div>
    </div>	

            <div class="row">
                <div class="col-md-4">
                    <span class="copyright">Copyright &copy; Capu 2015</span>
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
                    <br /><br />
                </div>
                
            </div>
 </div>       
</footer>


</body>
</html>
