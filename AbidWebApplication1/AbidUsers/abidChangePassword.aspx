<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="abidChangePassword.aspx.cs" Inherits="AbidWebApplication1.AbidUsers.abidChangePassword" %>

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
                    <h1 class="section-heading">CHANGE YOUR PASSWORD</h1>
                    <p>Please complete the form below and confirm. Your passward will be change!</p>
                    
                </div>
            </div>
    </div>




             <hr>
            
<div class="row">
    <div class="col-lg-12">
        <p>&nbsp;&nbsp;&nbsp;&nbsp;CHANGE YOUR PASSWORD:</p>
      
        <div class="col-md-6">
                              <div>
                        

                        <div style="font-family: Arial">
                <table style="">
                    

                    <tr id="trCurrentPassword" runat="server">
                        <td>
                            Current Password&nbsp;
                        </td>
                        <td>
                            <asp:TextBox ID="txtCurrentPassword" TextMode="Password" 
                            runat="server" class="form-control"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidatorCurrentPassword" 
                                runat="server" ErrorMessage="Current Password required"
                                Text="*" ControlToValidate="txtCurrentPassword" ForeColor="Red">
                            </asp:RequiredFieldValidator>
                        </td>
                    </tr>

                    <tr>
                        <td>
                            New Password&nbsp;
                        </td>
                        <td>
                            <asp:TextBox ID="txtNewPassword" TextMode="Password" 
                            runat="server" class="form-control"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidatorNewPassword" 
                                runat="server" ErrorMessage="New Password required"
                                Text="*" ControlToValidate="txtNewPassword" ForeColor="Red">
                            </asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Confirm New Password&nbsp;
                        </td>
                        <td>
                            <asp:TextBox ID="txtConfirmNewPassword" TextMode="Password" runat="server" class="form-control">
                            </asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidatorConfirmNewPassword" 
                                runat="server" ErrorMessage="Confirm New Password required" Text="*" 
                                ControlToValidate="txtConfirmNewPassword"
                                ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                            <asp:CompareValidator ID="CompareValidatorPassword" runat="server" 
                                ErrorMessage="New Password and Confirm New Password must match"
                                ControlToValidate="txtConfirmNewPassword" ForeColor="Red" 
                                ControlToCompare="txtNewPassword"
                                Display="Dynamic" Type="String" Operator="Equal" Text="*">
                            </asp:CompareValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                    
                        </td>
                        <td>
                            <br />
                            &nbsp;<asp:Button ID="btnSave" runat="server" 
                            Text="Save" onclick="btnSave_Click" class="btn btn-xl" />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <asp:Label ID="lblMessage" runat="server">
                            </asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <asp:ValidationSummary ID="ValidationSummary1" 
                            ForeColor="Red" runat="server" />
                        </td>
                    </tr>
                </table>
                </div>

                    </div>
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
