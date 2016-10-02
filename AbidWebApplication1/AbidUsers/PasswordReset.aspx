<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PasswordReset.aspx.cs" Inherits="AbidWebApplication1.AbidUsers.PasswordReset" %>

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
                         <a class="navbar-brand" href="../home.aspx"> <img src="../img/abcd.png" id="logo" /> </a>
                    </div>
                    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                        <ul class="nav navbar-nav">
                            <li><a href="../Home.aspx">Home</a></li>
                            
                            <li><a href="../Services.aspx">Services</a></li>
                            <li><a href="../Venues.aspx">Venues </a></li>
                            <li><a href="../Menus.aspx">Menus</a></li>
                            <li><a href="../MyAccount.aspx">My Account</a></li> 
                            <li><a href="../ContactUs.aspx">Contact Us</a></li> 
                        </ul>
                        <ul class="nav navbar-nav navbar-right">
                            <li class="active"><a href="../AbidUsers/MyAccount.aspx"><span class="glyphicon glyphicon-user"></span> LogIn/ SignUp</a></li>
                            
                        </ul>
                        
                    </div>
                </div>
                </nav>





    


<!-- Contact Section -->
<section id="contact">
        <div class="container">
        
        	<div class="row">
        	<br/> <br/><br/> 
                <div class="col-lg-12 text-center">
                    <h2 style="color: white;">Get Registered Here</h2>
                    <h3 class="section-subheading text-muted">Please provide your appropriate details below to Sign-Up.</h3>
                </div>
    		</div>
    		    		
	<div class="container">
	    <div class="row">

            

	        <div class="col-md-6">
    			<hr>
    			
    				<div class="jumbotron  bg-light-gray" style="padding: 5px 17px;">

                    <form id="form1" runat="server" class="form-signin">
    <div>
    

    <div>
    <h3><span class="glyphicon glyphicon-list-alt"></span>  Registration Form</h3>
    
        <br />
        <%--<h6> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            Already have an account? <a href="../LoginAbid.aspx" style="color:Orange">Sign In</a></h6>
        <br />--%>
           
        <p>
            <asp:TextBox ID="txtUserName" runat="server" class="form-control" 
                    placeholder="Username" Height="50px" Width="100%">
            </asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorusername" 
            runat="server" ErrorMessage="User Name required" Text="*"
            ControlToValidate="txtUserName" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
        </p>    
    
       
        <p>
            <asp:TextBox ID="txtPassword" TextMode="Password" runat="server" class="form-control" placeholder="Password" Height="50px" Width="100%">
            </asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorPassword" 
            runat="server" ErrorMessage="Password required" Text="*"
            ControlToValidate="txtPassword" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
        </p>    
         
        <p>
            <asp:TextBox ID="txtConfirmPassword" TextMode="Password" runat="server" 
                class="form-control" placeholder="Confirm Password" Height="50px" Width="100%">
            </asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorConfirmPassword" 
            runat="server" ErrorMessage="Confirm Password required" Text="*"
            ControlToValidate="txtConfirmPassword" ForeColor="Red" 
            Display="Dynamic"></asp:RequiredFieldValidator>
            <asp:CompareValidator ID="CompareValidatorPassword" runat="server" 
            ErrorMessage="Password and Confirm Password must match"
            ControlToValidate="txtConfirmPassword" ForeColor="Red" 
            ControlToCompare="txtPassword" Display="Dynamic"
            Type="String" Operator="Equal" Text="*">
            </asp:CompareValidator>
        </p>    
    
         <p>
           
        
            <asp:TextBox ID="txtEmail" runat="server"
                class="form-control" placeholder="Email" Height="50px" Width="100%">
            </asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorEmail" 
            runat="server" ErrorMessage="Email required" Text="*"
            ControlToValidate="txtEmail" ForeColor="Red"
            Display="Dynamic"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidatorEmail" 
            runat="server" ErrorMessage="Invalid Email" ControlToValidate="txtEmail"
            ForeColor="Red" Display="Dynamic" Text="*"
            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">
            </asp:RegularExpressionValidator>
        </p>  
        
          <p>
        
            <asp:Label ID="lblMessage" runat="server" ForeColor="Red">
            </asp:Label>

            <asp:ValidationSummary ID="ValidationSummary1" ForeColor="Red" runat="server" />
            
       
        <p>
            <asp:Button ID="btnRegister" runat="server" Text="Sign Up!" 
            onclick="btnRegister_Click" class="btn btn-xl"/>

        </p>    
    

    <br />

            <a href="../AbidUsers/MyAccount.aspx" style="color: #E66514"><h5>Click here to Login</a> 
                                                                 &nbsp; if you already have a user account.</h5>
        
            
            
</div>

    </div>
    </form>

    				
    				
    				</div>
    			</div>
    			
    		<div class="col-md-6">
    			<hr>
    			
    			<%--<img src="img/abcd.png" class="img-responsive" alt="" />--%>
                	
                <img src="img/loginImage.gif" class="img-responsive" alt="" />
    			</div>	
    			
        </div>
	</div>
    		

</section>


         
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
</html>
