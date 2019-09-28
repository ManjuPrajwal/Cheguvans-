<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminHome.aspx.cs" Inherits="AdminHome" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Cheguvans Solution | Place Deals Website</title>
	<!-- core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <link href="css/animate.min.css" rel="stylesheet">
    <link href="css/owl.carousel.css" rel="stylesheet">
    <link href="css/owl.transitions.css" rel="stylesheet">
    <link href="css/prettyPhoto.css" rel="stylesheet">
    <link href="css/main.css" rel="stylesheet">
    <link href="css/responsive.css" rel="stylesheet">
    <!--[if lt IE 9]>
    <script src="js/html5shiv.js"></script>
    <script src="js/respond.min.js"></script>
    <![endif]-->       
    <link rel="shortcut icon" href="images/ico/C1.jpg">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="images/ico/C1.jpg">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="images/ico/C1.jpg">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="images/ico/C1.jpg">
    <link rel="apple-touch-icon-precomposed" href="images/ico/C1.jpg">
   
    
   
</head>

<body id="home" class="homepage">

    <header id="header">
        <nav id="main-menu" class="navbar navbar-default navbar-fixed-top" role="banner">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    
                    <%--<a class="navbar-brand" href="index.html"> Cheguvans Solution<img width="50px" height="45px" src="images/Logcheguvan.png" alt="logo"></a>--%>
                    <h3 style="color:Teal;">Cheguvans Solution</h3>
                      
                    <asp:Label ID="lblUser" runat="server"></asp:Label>
                    
                </div>
				
                <div class="collapse navbar-collapse navbar-right">
                    <ul class="nav navbar-nav">
                        <li class="scroll active"><a href="AdminHome.aspx">Home</a></li> 
                        <li class="scroll"><a href="#features">Features</a></li>
                        <li class="scroll"><a href="#services">Services</a></li>
                        <li class="scroll"><a href="#portfolio">Portfolio</a></li>
                        
                        <li class="scroll"><a href="#pricing">Pricing</a></li>
                        <li class="scroll"><a href="AdminHome.aspx">Masters</a></li>
                        <li class="scroll"><a href="#get-in-touch">Contact</a></li>                        
                    </ul>
                </div>
            </div><!--/.container-->
        </nav><!--/nav-->
    </header><!--/header-->
     <br /><br />
     
     
     <div align="center">
    <h3>GO TO PAGES : </h3>  
     
     <br /><br />
          <a href="PlanTypeMaster.aspx">PlanType Master </a><br />
          <a href="CustomerQuoteView.aspx">Customer Quote </a><br />
          <a href="ClientList.aspx">HitList</a><br />
          <a href="LogOut.aspx">Logout</a>
          
          <br />
          <h3>
            LOAN DETAILS
          </h3>
          
          <a href="BankMaster.aspx">Bank Master </a><br />
          <a href="LoanEntry.aspx">Loan Entry </a><br />
          <a href="LoanView.aspx">Loan View</a><br />
          
     
     </div>
     <br /><br /><br />
   
      


   
    </footer><!--/#footer-->

    <script src="js/jquery.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="http://maps.google.com/maps/api/js?sensor=true"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/mousescroll.js"></script>
    <script src="js/smoothscroll.js"></script>
    <script src="js/jquery.prettyPhoto.js"></script>
    <script src="js/jquery.isotope.min.js"></script>
    <script src="js/jquery.inview.min.js"></script>
    <script src="js/wow.min.js"></script>
    <script src="js/main.js"></script>
</body>
</html>


