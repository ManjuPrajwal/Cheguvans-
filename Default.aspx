<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">


<html lang="en">
<head>
   
    
    <title>Cheguvans Solution | Place Deals Website - ManjuKarthik  </title>
	<!-- core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet"/>
    <link href="css/font-awesome.min.css" rel="stylesheet"/>
    <link href="css/animate.min.css" rel="stylesheet"/>
    <link href="css/owl.carousel.css" rel="stylesheet"/>
    <link href="css/owl.transitions.css" rel="stylesheet"/>
    <link href="css/prettyPhoto.css" rel="stylesheet"/>
    <link href="css/main.css" rel="stylesheet"/>
    <link href="css/responsive.css" rel="stylesheet"/>
    <!--[if lt IE 9]>
    <script src="js/html5shiv.js"></script>
    <script src="js/respond.min.js"></script>
    <![endif]-->      
     
    <link rel="shortcut icon" href="images/ico/C1.jpg">
    
    <meta id="Viewport" name="viewport" content="initial-scale=1, maximum-scale=1, minimum-scale=1, user-scalable=no">
<script type="text/javascript">
$(function(){
if( /Android|webOS|iPhone|iPad|iPod|BlackBerry/i.test(navigator.userAgent) ) {
  var ww = ( $(window).width() < window.screen.width ) ? $(window).width() : window.screen.width; //get proper width
  var mw = 480; // min width of site
  var ratio =  ww / mw; //calculate ratio
  if( ww < mw){ //smaller than minimum size
   $('#Viewport').attr('content', 'initial-scale=' + ratio + ', maximum-scale=' + ratio + ', minimum-scale=' + ratio + ', user-scalable=yes, width=' + ww);
  }else{ //regular size
   $('#Viewport').attr('content', 'initial-scale=1.0, maximum-scale=2, minimum-scale=1.0, user-scalable=yes, width=' + ww);
  }
}
});
</script>
   
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
                    
                    <%--<a class="navbar-brand" href="index.html"> Cheguvans Solution<img width="50px" height="45px" src="images/CheLogo.JPG" alt="logo"></a>--%>
                      <h3 style="color:Teal;">Cheguvans Solution</h3>
                    
                    
                </div>
				
                <div class="collapse navbar-collapse navbar-right">
                    <ul class="nav navbar-nav">
                        <li class="scroll active"><a href="#home">Home</a></li> 
                        <li class="scroll"><a href="#features">Features</a></li>
                        <li class="scroll"><a href="#services">Services</a></li>
                       <li class="scroll"><a href="#portfolio">Portfolio</a></li>
                        
                        <li class="scroll"><a href="#pricing">Pricing</a></li>
                        
                        <li class="scroll"><a href="#get-in-touch">Contact</a></li>                        
                    </ul>
                </div>
            </div><!--/.container-->
        </nav><!--/nav-->
    </header><!--/header-->

    <section id="main-slider">
        <div class="owl-carousel">
            <%--<div class="item" style="background-image: url(images/slider/AdMain.png);">
                <div class="slider-inner">
                    <div class="container">
                        <div class="row">
                            <div class="col-sm-6">
                                <div class="carousel-content">
                                   
                                  
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>--%><!--/.item-->
            
             <div class="item" style="background-image: url(images/slider/Indeximage.jpg);">
                <div class="slider-inner">
                    <div class="container">
                        <div class="row">
                            <div class="col-sm-6">
                               
                                <div class="carousel-content">
                                <br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
                                     <h2>Respnsive Website <span>At Low Price</span> </h2>
                                   <br /><br />
                                   <p style="color:Blue; font-size:15px"> Call Us : 9962840361  &nbsp;&nbsp;&nbsp; Mail Us :  info@cheguvanssolution.com </p>  
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div><!--/.item-->
            <div class="item" style="background-image: url(images/slider/Hosting.jpg);">
                <div class="slider-inner">
                    <div class="container">
                        <div class="row">
                            <div class="col-sm-6">
                                <div class="carousel-content">
                                  
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
               <div class="item" style="background-image: url(images/slider/AdMain.png);">
                <div class="slider-inner">
                    <div class="container">
                        <div class="row">
                            <div class="col-sm-6">
                                <div class="carousel-content">
                                    
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div><!--/.item-->
            
            
            <div class="item" style="background-image: url(images/slider/Website3.jpg);">
                <div class="slider-inner">
                    <div class="container">
                        <div class="row">
                            <div class="col-sm-6">
                                <div class="carousel-content">
                                    
                                 </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="item" style="background-image: url(images/slider/Apps1.jpg);">
                <div class="slider-inner">
                    <div class="container">
                        <div class="row">
                            <div class="col-sm-6">
                                <div class="carousel-content">
                                    
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="item" style="background-image: url(images/slider/Apps3.jpg);">
                <div class="slider-inner">
                    <div class="container">
                        <div class="row">
                            <div class="col-sm-6">
                                <div class="carousel-content" align="right">
                                <br />
                                     <p style="color:White; font-size:16px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Call Us : 9962840361</p>  
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            
        </div><!--/.owl-carousel-->
    </section><!--/#main-slider-->


       <section id="features">
        <div class="container">
            <div class="section-header">
                <h2 class="section-title text-center wow fadeInDown">Awesome Features</h2>
                <p class="text-center wow fadeInDown">we had amazing features to the customers at our best ways </p>
            </div>
            <div class="row">
                <div class="col-sm-6 wow fadeInLeft">
                    <img class="img-responsive" src="images/slider/Apps2.jpg" alt="">
                     <img class="img-responsive" src="images/slider/Apps1.jpg" alt="">
                </div>
                <div class="col-sm-6">
                    <div class="media service-box wow fadeInRight">
                        <div class="pull-left">
                            <i class="fa fa-line-chart"></i>
                        </div>
                        <div class="media-body">
                            <h4 class="media-heading">Mobile Compatibility design</h4>
                            <p>We creates the website suits to the mobile </p>
                        </div>
                    </div>

                    <div class="media service-box wow fadeInRight">
                        <div class="pull-left">
                            <i class="fa fa-cubes"></i>
                        </div>
                        <div class="media-body">
                            <h4 class="media-heading">High Quality UI design</h4>
                            <p>we provide high quality UI Design for websites</p>
                        </div>
                    </div>

                    <div class="media service-box wow fadeInRight">
                        <div class="pull-left">
                            <i class="fa fa-pie-chart"></i>
                        </div>
                        <div class="media-body">
                            <h4 class="media-heading">SEO Services</h4>
                            <p>We offers the SEO Service for free to the customers</p>
                        </div>
                    </div>

                    <div class="media service-box wow fadeInRight">
                        <div class="pull-left">
                            <i class="fa fa-pie-chart"></i>
                        </div>
                        <div class="media-body">
                            <h4 class="media-heading">Fast Delivery </h4>
                            <p>We Delivery in time and quick manner to the customers </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section id="cta2">
        <div class="container">
            <div class="text-center">
                <h2 class="wow fadeInUp" data-wow-duration="300ms" data-wow-delay="0ms"><span>CHEGUVANS SOLUTION</span> IS A CREATIVE WEB DESIGN COMPANY</h2>
                <p class="wow fadeInUp" data-wow-duration="300ms" data-wow-delay="100ms">We provide first One Year Mainteance Free </p>
                
                <img class="img-responsive wow fadeIn" src="images/cta2/cta2-img.png" alt="" data-wow-duration="300ms" data-wow-delay="300ms">
            </div>
        </div>
    </section>

    <section id="services" >
        <div class="container">

            <div class="section-header">
                <h2 class="section-title text-center wow fadeInDown">Our Services</h2>
                <p class="text-center wow fadeInDown"> He have deals following services in our Company in the efficient Manner </p>
            </div>

            <div class="row">
                <div class="features">
                    <div class="col-md-4 col-sm-6 wow fadeInUp" data-wow-duration="300ms" data-wow-delay="0ms">
                        <div class="media service-box">
                            <div class="pull-left">
                                <i class="fa fa-line-chart"></i>
                            </div>
                            <div class="media-body">
                                <h4 class="media-heading">Web design</h4>
                                <p> We have deals with both Static and Dyanamic Website design to the various customer requirements.</p>
                            </div>
                        </div>
                    </div><!--/.col-md-4-->

                    <div class="col-md-4 col-sm-6 wow fadeInUp" data-wow-duration="300ms" data-wow-delay="100ms">
                        <div class="media service-box">
                            <div class="pull-left">
                                <i class="fa fa-cubes"></i>
                            </div>
                            <div class="media-body">
                                <h4 class="media-heading">Web Application</h4>
                                <p>We have handling the Web oriented application on various Business process with Bug free and Accuracy</p>
                            </div>
                        </div>
                    </div><!--/.col-md-4-->

                    <div class="col-md-4 col-sm-6 wow fadeInUp" data-wow-duration="300ms" data-wow-delay="200ms">
                        <div class="media service-box">
                            <div class="pull-left">
                                <i class="fa fa-pie-chart"></i>
                            </div>
                            <div class="media-body">
                                <h4 class="media-heading">SEO Services</h4>
                                <p> We offers SEO service on the Primary level SEO process with the clients to needfull.We doing without SEO tools</p>
                            </div>
                        </div>
                    </div><!--/.col-md-4-->
                
                    <div class="col-md-4 col-sm-6 wow fadeInUp" data-wow-duration="300ms" data-wow-delay="300ms">
                        <div class="media service-box">
                            <div class="pull-left">
                                <i class="fa fa-bar-chart"></i>
                            </div>
                            <div class="media-body">
                                <h4 class="media-heading">Customize Application</h4>
                                <p>We had customized application on some specific field,Through we customize the on Customer needs with efficient level.  </p>
                            </div>
                        </div>
                    </div><!--/.col-md-4-->

                    <div class="col-md-4 col-sm-6 wow fadeInUp" data-wow-duration="300ms" data-wow-delay="400ms">
                        <div class="media service-box">
                            <div class="pull-left">
                                <i class="fa fa-language"></i>
                            </div>
                            <div class="media-body">
                                <h4 class="media-heading">Hosting Services</h4>
                                <p>We provide another Services to the Customer is Hosting services.We had at present Windows shared Server for hosting services </p>
                            </div>
                        </div>
                    </div><!--/.col-md-4-->

                    <div class="col-md-4 col-sm-6 wow fadeInUp" data-wow-duration="300ms" data-wow-delay="500ms">
                        <div class="media service-box">
                            <div class="pull-left">
                                <i class="fa fa-bullseye"></i>
                            </div>
                            <div class="media-body">
                                <h4 class="media-heading">IT Services</h4>
                                <p> We provide technology planning and consulting to help identify the most effective network and systems to match your organization’s needs.</p>
                            </div>
                        </div>
                    </div><!--/.col-md-4-->
                </div>
            </div><!--/.row-->    
        </div><!--/.container-->
    </section><!--/#services-->

    <section id="portfolio">
        <div class="container">
            <div class="section-header">
                <h2 class="section-title text-center wow fadeInDown">Our Works</h2>
                
            </div>

            <div class="text-center">
                <ul class="portfolio-filter">
                    <li><a class="active" href="#" data-filter="*">All Works</a></li>
                    <li><a href="#" data-filter=".creative">Education</a></li>
                    <li><a href="#" data-filter=".corporate">Corporate</a></li>
                    <li><a href="#" data-filter=".portfolio">Industry</a></li>
                </ul><!--/#portfolio-filter-->
            </div>

         <div class="portfolio-items">
                <div class="portfolio-item creative">
                    <div class="portfolio-item-inner">
                        <img class="img-responsive" src="images/portfolio/Mayura.png" alt="">
                        <div class="portfolio-info">
                            <h3><a style="color:White;" href="http://www.mayuraa.in/"> Mayura Decors</a> </h3>
                          
                            <a class="preview" href="images/portfolio/Mayura.png" rel="prettyPhoto"><i class="fa fa-eye"></i></a>
                        </div>
                    </div>
                </div>

             
                
          

            

               

             <div class="portfolio-item corporate">
                    <div class="portfolio-item-inner">
                        <img class="img-responsive" src="images/portfolio/Alhayat.png" alt="">
                        <div class="portfolio-info">
                            
                              <h3><a style="color:White;" href="http://www.alhayat.in/"> Alhayat Restaurant</a> </h3>
                            <a class="preview" href="images/portfolio/Alhayat.png" rel="prettyPhoto"><i class="fa fa-eye"></i></a>
                        </div>
                    </div>
                </div>
                <!--/.portfolio-item-->

                <div class="portfolio-item creative portfolio">
                    <div class="portfolio-item-inner">
                        <img class="img-responsive" src="images/portfolio/JaIndustry.png" alt="">
                        <div class="portfolio-info">
                            
                            <h3><a style="color:White;" href="http://jaindustries.org"> JA Industry</a> </h3>
                             
                            <a class="preview" href="images/portfolio/JaIndustry.png" rel="prettyPhoto"><i class="fa fa-eye"></i></a>
                        </div>
                    </div>
                </div><!--/.portfolio-item-->

             
                
                 <div class="portfolio-item creative">
                    <div class="portfolio-item-inner">
                        <img class="img-responsive" src="images/portfolio/JayaBairavi.png" alt="">
                        <div class="portfolio-info">
                            
                            <h3><a style="color:White;" href="http://www.jayabairavi.in"> Jaya Bairavi Catering</a> </h3>
                            <a class="preview" href="images/portfolio/JayaBairavi.png" rel="prettyPhoto"><i class="fa fa-eye"></i></a>
                        </div>
                    </div>
                </div>
                
                
                 <div class="portfolio-item corporate">
                    <div class="portfolio-item-inner">
                        <img class="img-responsive" src="images/portfolio/Sivam.png" alt="">
                        <div class="portfolio-info">
                            
                              <h3><a style="color:White;" href="http://www.sivamrenovation.in"> Sivam Renovation</a> </h3>
                            <a class="preview" href="images/portfolio/Sivam.png" rel="prettyPhoto"><i class="fa fa-eye"></i></a>
                        </div>
                    </div>
                </div>
                
                <div class="portfolio-item corporate">
                    <div class="portfolio-item-inner">
                        <img class="img-responsive" src="images/portfolio/UniqueCapitals.png" alt="">
                        <div class="portfolio-info">
                            
                              <h3><a style="color:White;" href="http://www.uniquecapitals.com"> Unique Capital</a> </h3>
                            <a class="preview" href="images/portfolio/UniqueCapitals.png" rel="prettyPhoto"><i class="fa fa-eye"></i></a>
                        </div>
                    </div>
                </div>
                
                <div class="portfolio-item corporate">
                    <div class="portfolio-item-inner">
                        <img class="img-responsive" src="images/portfolio/PriceEdu.png" alt="">
                        <div class="portfolio-info">
                            
                              <h3><a style="color:White;" href="http://www.price.edu.in"> Price Educational Institution</a> </h3>
                            <a class="preview" href="images/portfolio/PriceEdu.png" rel="prettyPhoto"><i class="fa fa-eye"></i></a>
                        </div>
                    </div>
                </div>
                
                
                 <div class="portfolio-item corporate">
                    <div class="portfolio-item-inner">
                        <img class="img-responsive" src="images/portfolio/zigzag.png" alt="">
                        <div class="portfolio-info">
                            
                              <h3><a style="color:White;" href="http://www.zigzagproevents.in"> ZigZag Pro Events</a> </h3>
                            <a class="preview" href="images/portfolio/zigzag.png" rel="prettyPhoto"><i class="fa fa-eye"></i></a>
                        </div>
                    </div>
                </div>
                
                
                <div class="portfolio-item creative">
                    <div class="portfolio-item-inner">
                        <img class="img-responsive" src="images/portfolio/PestControl.png" alt="">
                        <div class="portfolio-info">
                            
                            <h3><a style="color:White;" href="http://www.pestcontrolz.in/"> Pest Control Service</a> </h3>
                            <a class="preview" href="images/portfolio/PestControl.png"rel="prettyPhoto"><i class="fa fa-eye"></i></a>
                        </div>
                    </div>
                </div>
                
                
               
                
         
                
             
                
            </div>
        </div><!--/.container-->
    </section>
   <!--/#portfolio-->

   <%-- <section id="about">
        <div class="container">

            <div class="section-header">
                <h2 class="section-title text-center wow fadeInDown">About Us</h2>
                <p class="text-center wow fadeInDown">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut <br> et dolore magna aliqua. Ut enim ad minim veniam</p>
            </div>

            <div class="row">
                <div class="col-sm-6 wow fadeInLeft">
                    <h3 class="column-title">Video Intro</h3>
                    <!-- 16:9 aspect ratio -->
                    <div class="embed-responsive embed-responsive-16by9">
                        <iframe src="//player.vimeo.com/video/58093852?title=0&amp;byline=0&amp;portrait=0&amp;color=e79b39" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>
                    </div>
                </div>

                <div class="col-sm-6 wow fadeInRight">
                    <h3 class="column-title">Multi Capability</h3>
                    <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>

                    <p>Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>

                    <div class="row">
                        <div class="col-sm-6">
                            <ul class="nostyle">
                                <li><i class="fa fa-check-square"></i> Ipsum is simply dummy</li>
                                <li><i class="fa fa-check-square"></i> When an unknown</li>
                            </ul>
                        </div>

                        <div class="col-sm-6">
                            <ul class="nostyle">
                                <li><i class="fa fa-check-square"></i> The printing and typesetting</li>
                                <li><i class="fa fa-check-square"></i> Lorem Ipsum has been</li>
                            </ul>
                        </div>
                    </div>

                    <a class="btn btn-primary" href="#">Learn More</a>

                </div>
            </div>
        </div>
    </section><!--/#about-->--%>

    <section id="work-process">
        <div class="container">
            <div class="section-header">
                <h2 class="section-title text-center wow fadeInDown">Our Process</h2>
                
            </div>

            <div class="row text-center">
                <div class="col-md-2 col-md-4 col-xs-6">
                    <div class="wow fadeInUp" data-wow-duration="400ms" data-wow-delay="0ms">
                        <div class="icon-circle">
                            <span>1</span>
                            <i class="fa fa-coffee fa-2x"></i>
                        </div>
                        <h3>MEET</h3>
                    </div>
                </div>
                <div class="col-md-2 col-md-4 col-xs-6">
                    <div class="wow fadeInUp" data-wow-duration="400ms" data-wow-delay="100ms">
                        <div class="icon-circle">
                            <span>2</span>
                            <i class="fa fa-bullhorn fa-2x"></i>
                        </div>
                        <h3>PLAN</h3>
                    </div>
                </div>
                <div class="col-md-2 col-md-4 col-xs-6">
                    <div class="wow fadeInUp" data-wow-duration="400ms" data-wow-delay="200ms">
                        <div class="icon-circle">
                            <span>3</span>
                            <i class="fa fa-image fa-2x"></i>
                        </div>
                        <h3>DESIGN</h3>
                    </div>
                </div>
                <div class="col-md-2 col-md-4 col-xs-6">
                    <div class="wow fadeInUp" data-wow-duration="400ms" data-wow-delay="300ms">
                        <div class="icon-circle">
                            <span>4</span>
                            <i class="fa fa-heart fa-2x"></i>
                        </div>
                        <h3>DEVELOP</h3>
                    </div>
                </div>
                <div class="col-md-2 col-md-4 col-xs-6">
                    <div class="wow fadeInUp" data-wow-duration="400ms" data-wow-delay="400ms">
                        <div class="icon-circle">
                            <span>5</span>
                            <i class="fa fa-shopping-cart fa-2x"></i>
                        </div>
                        <h3>TESTING</h3>
                    </div>
                </div>
                <div class="col-md-2 col-md-4 col-xs-6">
                    <div class="wow fadeInUp" data-wow-duration="400ms" data-wow-delay="500ms">
                        <div class="icon-circle">
                            <span>6</span>
                            <i class="fa fa-space-shuttle fa-2x"></i>
                        </div>
                        <h3>LAUNCH</h3>
                    </div>
                </div>
            </div>
            
            <h5 style="color:White;">We make following types of websites</h5>
            <p>Automobile Website Design, Beauty & Spa Website Design, Beauty Fashion Website Design,Charity Website Design, Christian & Church Website Design, Clubs & Association Website, College Website Design, Communication Website Design, Communications Website Design, Computers Technology Website Design, Construction Engineering Website Design, Construction Website Design, Consultancy Services, Consulting Website Design, Corporate Website Design, Cosmetic Surgery Website Design, Creative Design Website Design,Dentist Website Design, Education Kids Website Design, Education Website Design,Sports Fitness Website Design, Sports Website Design,Travel Tourism Website </p>
            
        </div>
    </section><!--/#work-process-->
    
    <section id="pricing">
        <div class="container">
            <div class="section-header">
                <h2 class="section-title text-center wow fadeInDown">Pricing Table</h2>
               
            </div>

            <div class="row">
                <div class="col-sm-6 col-md-3">
                    <div class="wow zoomIn" data-wow-duration="400ms" data-wow-delay="0ms">
                        <ul class="pricing">
                            <li class="plan-header">
                                <div class="price-duration">
                                    <span class="price">
                                        Rs 165
                                    </span>
                                    <span class="duration">
                                        Per month
                                    </span>
                                </div>

                                <div class="plan-name">
                                    Starter
                                </div>
                            </li>
                            <li><strong>1</strong> DOMAIN</li>
                            <li><strong>250 MB</strong> DISK SPACE</li>
                            <li><strong>1 GB</strong> BANDWIDTH</li>
                            
                            <li><strong>2</strong> EMAIL ADDRESS</li>
                            
                            <li class="plan-purchase"><a class="btn btn-primary" href="CustomerQuote.aspx">ORDER NOW</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-sm-6 col-md-3">
                    <div class="wow zoomIn" data-wow-duration="400ms" data-wow-delay="200ms">
                        <ul class="pricing featured">
                            <li class="plan-header">
                                <div class="price-duration">
                                    <span class="price">
                                        Rs 416
                                    </span>
                                    <span class="duration">
                                        Per month
                                    </span>
                                </div>

                                <div class="plan-name">
                                    Business
                                </div>
                            </li>
                            <li><strong>5</strong> DOMAIN</li>
                            <li><strong>10 GB</strong> DISK SPACE</li>
                            <li><strong>30 GB</strong> BANDWIDTH</li>
                            <li><strong>30</strong> EMAIL ADDRESS</li>
                            
                            <li class="plan-purchase"><a class="btn btn-default" href="CustomerQuote.aspx">ORDER NOW</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-sm-6 col-md-3">
                    <div class="wow zoomIn" data-wow-duration="400ms" data-wow-delay="400ms">
                        <ul class="pricing">
                            <li class="plan-header">
                                <div class="price-duration">
                                    <span class="price">
                                        Rs 250
                                    </span>
                                    <span class="duration">
                                        Per month
                                    </span>
                                </div>

                                <div class="plan-name">
                                    E-Commerce
                                </div>
                            </li>
                            <li><strong>1</strong> DOMAIN</li>
                            <li><strong>350 MB</strong> DISK SPACE</li>
                            <li><strong>2 GB</strong> BANDWIDTH</li>
                            <li><strong>5</strong> EMAIL ADDRESS</li>
                            
                            <li class="plan-purchase"><a class="btn btn-primary" href="CustomerQuote.aspx">ORDER NOW</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-sm-6 col-md-3">
                    <div class="wow zoomIn" data-wow-duration="400ms" data-wow-delay="600ms">
                        <ul class="pricing">
                            <li class="plan-header">
                                <div class="price-duration">
                                    <span class="price">
                                        Rs 583
                                    </span>
                                    <span class="duration">
                                        Per month
                                    </span>
                                </div>

                                <div class="plan-name">
                                    Reseller 
                                </div>
                            </li>
                            <li><strong>10</strong> DOMAIN</li>
                            <li><strong>20GB</strong> DISK SPACE</li>
                            <li><strong>50GB</strong> BANDWIDTH</li>
                            <li><strong>50</strong> EMAIL ADDRESS</li>
                            <li class="plan-purchase"><a class="btn btn-primary" href="CustomerQuote.aspx">ORDER NOW</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </section><!--/#pricing-->

       <section id="get-in-touch">
        <div class="container">
            <div class="section-header">
                <h2 class="section-title text-center wow fadeInDown">Get in Touch</h2>
               
          <div class="container-wrapper">
         
                <div class="row">
                    <div align="center">
                 
                            <address>
                              <strong style="font-size:25px">Cheguvans Solution</strong><br>
                              No 3/569,G-6, SSL Green Park Appartment,Kundrathur.<br />
                              Road,Madhananthpuram,Moulivakkam,<br>
                              Pincode - 600125<br>
                              <br />
                              <abbr>Phone:</abbr>&nbsp;+91 9962840361 <br />
                              <abbr>Tel:</abbr>&nbsp; 044 - 48616353 <br />
                              <br />
                              <abbr>Email:&nbsp;</abbr>info@cheguvanssolution.com <br />
                              <abbr>Website:&nbsp;</abbr>www.cheguvanssolution.com <br />
                            </address>

                            
                        </div>
                    </div>
               
            </div>
        </div>
            
        </div>
    </section><!--/#get-in-touch-->

  

   
    <footer id="footer">
        <div class="container">
            <div class="row">
                <div class="col-sm-6">
                    &copy; 2017 Cheguvans Solution. Designed by <a target="_blank" href="http://www.cheguvanssolution.com" title="Place to Deals Website">Cheguvans Solution</a>
                </div>
             
            </div>
        </div>
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
