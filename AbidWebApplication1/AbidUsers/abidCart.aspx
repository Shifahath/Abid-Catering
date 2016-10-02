<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="abidCart.aspx.cs" Inherits="AbidWebApplication1.AbidUsers.abidCart" %>

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
                            <li><a href="../Home.aspx">Home</a></li>
                            
                            <li><a href="../Services.aspx">Services</a></li>
                            <li class="active"><a href="../AbidUsers/Booking.aspx">Booking </a></li>
                            <li><a href="../AbidUsers/LiveMenus.aspx">Menus</a></li>
                            <li><a href="../AbidUsers/MyAccount.aspx">My Account</a></li> 
                            <li><a href="../ContactUs.aspx">Contact Us</a></li> 
                        </ul>
                        <ul class="nav navbar-nav navbar-right">
                            <li><a href="../Home.aspx"><asp:Label ID="userName" runat="server" Text="" style="color: #fed136;"></asp:Label> <span class="glyphicon glyphicon-user"></span> Log Out</a></li>
                            
                        </ul>
                    </div>
                </div>
                </nav>

    <form id="form1" runat="server">
    
    <div class="container"> 
        <br /><br /><br /><br />
                    <div class="container">

            <div class="row"> 
                <div class="col-lg-12 text-center">
                    <h1 class="section-heading">YOUR'S EVENT PAYMENT</h1>
                    <p>Please complete your payment. We will arrange everything for you after that!</p>
                    
                </div> 
            </div>
    <hr />
    </div>
        <div class="row">
         <div class="col-md-6">

           <img src="../img/catering.jpg" class="img-responsive" alt="" />

         </div>
         <div class="col-md-6">
            <br />
            <h4>your cart:</h4>
            <asp:GridView ID="GridView1" CssClass="GridView1" runat="server" AutoGenerateColumns="False" 
                DataKeyNames="id" DataSourceID="SqlDataSource1" 
                EmptyDataText="No Item in the Cart" 
                onrowdatabound="GridView1_RowDataBound" 
                onrowdeleted="GridView1_RowDeleted" BackColor="White" 
                BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="5" GridLines="vertical" 
                >
                <AlternatingRowStyle BackColor="#F7F7F7" />
        
                <Columns>
            
                    <asp:CommandField ShowDeleteButton="True" />
                    <asp:BoundField DataField="pName" HeaderText="SERVICE" SortExpression="pName" />
                    <asp:BoundField DataField="eDate" dataformatstring="{0:MM/dd/yyyy}" HeaderText="E.DATE" SortExpression="eDate"/>
                    <asp:BoundField DataField="guests" HeaderText="GUESTS" SortExpression="guests"/>
        
                    <asp:BoundField DataField="price" HeaderText="COST" SortExpression="price" />
            
                </Columns>
        
                <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                <SortedAscendingCellStyle BackColor="#F4F4FD" />
                <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
                <SortedDescendingCellStyle BackColor="#D8D8F0" />
                <SortedDescendingHeaderStyle BackColor="#3E3277" />
            </asp:GridView>
           
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:DBCS %>" 
                DeleteCommand="DELETE FROM [abidCart] WHERE [id] = @id" 
                InsertCommand="INSERT INTO [abidCart] ([uName], [pName], [eDate], [guests], [price]) VALUES (@uName, @pName, @eDate, @guests, @price)" 
                SelectCommand="SELECT * FROM [abidCart] WHERE ([uName] = @uName)" 
                UpdateCommand="UPDATE [abidCart] SET [uName] = @uName, [pName] = @pName, [eDate] = @eDate, [guests] = @guests, [price] = @price WHERE [id] = @id">
                <DeleteParameters>
                    <asp:Parameter Name="id" Type="Int64" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="uName" Type="String" />
                    <asp:Parameter Name="pName" Type="String" />
                    <asp:Parameter Name="brand" Type="String" />
                    <asp:Parameter Name="img" Type="String" />
                    <asp:Parameter Name="quantity" Type="Int32" />
                    <asp:Parameter Name="price" Type="Int64" />
                </InsertParameters>
                <SelectParameters>
                    <asp:CookieParameter CookieName="uname" Name="uName" Type="String" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="uName" Type="String" />
                    <asp:Parameter Name="pName" Type="String" />
                    <asp:Parameter Name="brand" Type="String" />
                    <asp:Parameter Name="img" Type="String" />
                    <asp:Parameter Name="quantity" Type="Int32" />
                    <asp:Parameter Name="price" Type="Int64" />
                    <asp:Parameter Name="id" Type="Int64" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <br />
            <div id="price">Total Cost: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  £<asp:TextBox ID="TextBox2" runat="server" 
                    BorderColor="#CC3300" Enabled="False" 
                Font-Bold="True" ForeColor="Red" Width="80px"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;
            <br /> &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;<%--<asp:ImageButton ID="ImageButton3" runat="server" AlternateText="check out" 
                onclick="ImageButton3_Click1" ToolTip="click for check out" ImageUrl="~/img/checkout.jpg"  />--%>
            <br />

            <asp:HyperLink ID="HyperLink1" runat="server"   > PROCEED PAYMENT </asp:HyperLink>

    
        <form action="https://www.paypal.com/cgi-bin/webscr" method="post" target="_top">
        <input type="hidden" name="cmd" value="_s-xclick">
        <input type="hidden" name="hosted_button_id" value="WCMUU53T7KT42">
        &nbsp;<img alt="" border="0" src="https://www.paypal.com/uk/cgi-bin/webscr?cmd=_flow&SESSION=Awrb1vmQG0TonKdWmkoxcDmOkbJ_2J2ga9z3QeOPiWxxU-d-A0MQFEWUQMS&dispatch=50a222a57771920b6a3d7b606239e4d529b525e0b7e69bf0224adecfb0124e9b61f737ba21b08198ecd47ed44bac94cd6fd721232afa4155" width="1" height="1">
        </form>

        <asp:ImageButton ID="ImageButton2" runat="server"   
                ImageUrl="https://www.paypalobjects.com/en_US/GB/i/btn/btn_buynowCC_LG.gif" onclick="ImageButton2_Click" />
        <a href="https://www.paypal.com/uk/cgi-bin/webscr?cmd=_flow&SESSION=-7wo67cmT-KrMEPOTaWs1JYuTK1HyABHBvbjqgFwVKGtM3AtYzkkOJj37IO&dispatch=50a222a57771920b6a3d7b606239e4d529b525e0b7e69bf0224adecfb0124e9b61f737ba21b08198ecd47ed44bac94cd6fd721232afa4155">PAY</a>

    






            </div>
    
            

        </div>
        </div>

</div>
    
    </form>
</body>
</html>
