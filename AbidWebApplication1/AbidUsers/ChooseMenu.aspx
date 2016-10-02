<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ChooseMenu.aspx.cs" Inherits="AbidWebApplication1.AbidUsers.ChooseMenu" %>

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
                         <a class="navbar-brand" href="../Home.aspx"> <img src="../img/abcd.png" id="logo" /> </a>
                    </div>
                    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                        <ul class="nav navbar-nav">
                            <li><a href="../AbidUsers/HomeUsers.aspx">Home</a></li>
                            <li><a href="../AbidUsers/CurrentServices.aspx">Services</a></li>
                            <li class="active"><a href="../AbidUsers/Booking.aspx">Booking </a></li>
                            <li><a href="../AbidUsers/LiveMenus.aspx">Menus</a></li>
                            <li><a href="../AbidUsers/MyAccount.aspx">My Account</a></li> 
                            <li><a href="../AbidUsers/ContactUsUsers.aspx">Contact Us</a></li> 
                        </ul>
                        <ul class="nav navbar-nav navbar-right">
                            <li><a href="../Home.aspx"><asp:Label ID="userName" runat="server" Text="" style="color: #fed136;"></asp:Label> <span class="glyphicon glyphicon-user"></span> Log Out</a></li>
                            
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
                    <h1 class="section-heading">CHOOSE MENU</h1>
                    
                    
                </div>
            </div>
    </div>




             <hr>
            
<div class="row">
    <div class="col-lg-12">
      
        <div class="col-md-3" style="background-color:#E6E6E6;">

        <h4>YOUR BOOKING DETAILS</h4>
        <p>EVENT I.D:&nbsp;&nbsp;&nbsp;<asp:Label ID="eventId" runat="server" Text=""></asp:Label></p>
        <p>INFORMATION PROVIDED:&nbsp;&nbsp;&nbsp;</br><asp:Label ID="furtherInfo" runat="server" Text=""></asp:Label></p>
        <p>NO. OF GUESTS:&nbsp;&nbsp;&nbsp;<asp:Label ID="noOfGuests" runat="server" Text=""></asp:Label></p>
        <p>VENUE ID:&nbsp;&nbsp;&nbsp;<asp:Label ID="venueId" runat="server" Text=""></asp:Label></p>
        <p>EVENT DATE:&nbsp;&nbsp;&nbsp;<asp:Label ID="eventDate" runat="server" Text=""></asp:Label></p>
        <br />
                <asp:Button ID="Button1" runat="server" Text="BOOK MY EVENT" class="btn btn-xl" 
                    onclick="Button1_Click1"></asp:Button></br>
                    <asp:Label ID="MessageLabel" runat="server" Text="" ForeColor="#FF8000"></asp:Label>
        <br />
        <h4>YOUR GENERATING BILL:</h4>
        <p>Food Cost:&nbsp;£&nbsp;&nbsp;<asp:Label ID="Label4" runat="server" Text="0"></asp:Label> 
        <p style ="margin-bottom: 0;">Venue Price:&nbsp;&nbsp;&nbsp;<asp:Label ID="LabelVprice" runat="server" Text=""></asp:Label></p>
        <p style="font-size: 80%; margin:0; padding: 0;">(Including snacks, salad, chutney/pickels & caylapso coffee/tea)</p>
        <p>Venue Capacity:&nbsp;&nbsp;&nbsp;<asp:Label ID="LabelVcapacity" runat="server" Text=""></asp:Label></p>


               
       </div>
        

        
        <div class="col-md-9">
                
                <h5>Our Menu:</h5>
                             <div class="row">
                    <asp:ListView ID="ListView2" runat="server" DataSourceID="SqlDataSource1">
 
                        <ItemTemplate>
                            <div class="col-md-2" style="">
                            <center>
                                <br>
                                </br>
                                <p class="service-heading" style="margin-top: -15px;">
                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("mType") %>'></asp:Label>
                                <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("mImage") %>' Height="100px" Width="100px" class="img-circle img-responsive" />
                                
                                £
                                <asp:Label ID="Label3" runat="server" Text='<%# Eval("mPrice") %>'></asp:Label>/prn 

                                &nbsp;
                             <hr />  
                            </center>
                            </div>
                        </ItemTemplate>


                    </asp:ListView>
                    </div>

               

                    <div class="row">
                        <div class="col-md-3" style="">
                        <h5>Make your choices:</h5>
                        
                        <asp:CheckBoxList ID="CheckBoxList1" runat="server" DataSourceID="SqlDataSource1" 
                                DataTextField="mType" DataValueField="mPrice" AutoPostBack="True" 
                                onselectedindexchanged="CheckBoxList1_SelectedIndexChanged"> 
                        </asp:CheckBoxList> 
                        </div>
            
                       
                       <div class="col-md-4" style="">
                        <h5>Your Food Basket:</h5>
                        
                        <asp:ListBox ID="ListBox1" runat="server" SelectionMode="Multiple" Height="100%"></asp:ListBox>

                        <br />
                        Total Cost/ guest: £<asp:Label ID="Label2" runat="server" Text="0"></asp:Label>
                        </div>

                        <div class="col-md-5" style="">
                         <br /><br />
                         <asp:Button ID="Button2" runat="server" Text="Confirm Basket" onclick="Button2_Click" class="btn btn-xl" ></asp:Button>
                        </div>

                    </div>








                
                <br />
                

                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:DBCS %>" 
                        SelectCommand="SELECT * FROM [tblMenu]">
                        <SelectParameters>
                            <asp:Parameter DefaultValue="Abid" Name="catagory2" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
   
    

        
        

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
    		<div class="row">
  				<div class="col-md-4">
  				<!-- COLUMN STARTS-->
                            <ul class="list-group">
                                    <li class="list-group-item">
									<h3 style="color: #222">About Us em list-group-item-warning">
                                    <p>
										 Abid Catering has been listed 3 times by Ofsted as a particularly successful.  We were one of only catering service providers in the country at the time to have achieved this honour.
										 <br />

                                         <button class="btn lightgreen bg-orange" style="color: #28378E"><a href="Services.aspx">Read More</a></button>
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
                                            <h3 style="color: #222">Stay in Touch <img src="img/facebook.png" class="animated infinite pulse"></h3>
                                    </li>
									

                                    
  <li class="list-group-item list-group-item-success"><a href="https://www.facebook.com/AbidCateringServices?fref=ts"> </a>
  <div class="fb-page" data-href="https://www.facebook.com/AbidCateringServices?fref=ts" data-small-header="true" data-adapt-container-width="true" data-hide-cover="false" data-show-facepile="true" data-show-posts="false"><div class="fb-xfbml-parse-ignore"><blockquote cite="https://www.facebook.com/AbidCateringServices?fref=ts"></blockquote></div></div>
   </li>
</ul>
									<br>
									<!-- SOCIAL LINKS ENDS-->
									
						<!-- COLUMN ENDS-->
  				</div>
  				
  		
			</div>
    	
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
