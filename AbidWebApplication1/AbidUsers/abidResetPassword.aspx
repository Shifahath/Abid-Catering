<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="abidResetPassword.aspx.cs" Inherits="AbidWebApplication1.AbidUsers.abidResetPassword" %>

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
                            <li><a href="../AbidUsers/Booking.aspx">Booking </a></li>
                            <li><a href="../AbidUsers/LiveMenus.aspx">Menus</a></li>
                            <li  class="active"><a href="../AbidUsers/MyAccount.aspx">My Account</a></li> 
                            <li><a href="../AbidUsers/ContactUsUsers.aspx">Contact Us</a></li> 
                        </ul>
                        <ul class="nav navbar-nav navbar-right">
                            <li><a href="../Home.aspx"><asp:Label ID="userName" runat="server" Text="" style="color: #fed136;"></asp:Label> <span class="glyphicon glyphicon-user"></span> Log Out</a></li>
                            
                        </ul>
                    </div>
                </div>
                </nav>
    <form id="form1" runat="server">
    <br />    <br />  <br /><br />
          <div class="container">

            <div class="container">

            <div class="row"> 
                <div class="col-lg-12 text-center">
                    <h1 class="section-heading">Reset Password</h1>
                    <p>Please complete the form below. We will arrange everything for you after that!</p>
                    
                </div>
            </div>
    </div>




             <hr>
            
<div class="row">
    <div class="col-lg-12">
        <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;RESET MY PASSWORD: (Confirm your user name below)</p>
      
        <div class="col-md-6">
        <asp:TextBox ID="txtUserName" runat="server" Height="50px" Width="100%" class="form-control" 
                                            placeholder="Your User Name *">
                </asp:TextBox>
        
        <asp:Label ID="lblMessage" runat="server"></asp:Label>
        <br />
        <asp:Button ID="btnResetPassword" runat="server" 
                 Text="Reset Password" onclick="btnResetPassword_Click" class="btn btn-xl" />
        </div>
        
        <div class="col-md-6">
            <img src="../img/passwordset.jpg" class="img-responsive" alt="" />
        </div>
    </div>
</div>

        

    </div>
    </form>
</body>
</html>
