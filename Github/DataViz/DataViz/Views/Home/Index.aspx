<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Viz</title>

    <!-- css -->
    <link href="<%= Url.Content("/Css/bootstrap.css") %>" rel="stylesheet" >
    <link href="<%= Url.Content("/Font/Css/font-awesome.min.css") %>" rel="stylesheet" type="text/css" />
    <link href="<%= Url.Content("/Css/nivo-lightbox.css") %>" rel="stylesheet" />
    <link href="<%= Url.Content("/Css/nivo-lightbox-theme/default.css") %>" rel="stylesheet" type="text/css" />
    <link href="<%= Url.Content("/Css/animations.css") %>" rel="stylesheet" />
    <link href="<%= Url.Content("/Css/style.css") %>" rel="stylesheet">
    <link href="<%= Url.Content("/Css/colorDefault.css") %>" rel="stylesheet">

</head>

<body id="page-top" data-spy="scroll" data-target=".navbar-custom">
    
    <section class="hero" id="intro">
            <div class="container">
              <div class="row">
                <div class="col-md-12 text-right navicon">
                  <a id="nav-toggle" class="nav_slide_button" href="#"><span></span></a>
                </div>
              </div>
              <div class="row">
                <div class="col-md-8 col-md-offset-2 text-center inner">
                    <div class="animatedParent">
                        <h1 class="animated fadeInDown">Tourism Flow in Big Data Century</h1>
                        <p class="animated fadeInUp">with Data Visualisation</p>
                    </div>
               </div>
              </div>
              <div class="row">
                <div class="col-md-6 col-md-offset-3 text-center">
                  <a href="#service" class="learn-more-btn btn-scroll">Get started</a>
                </div>
              </div>
            </div>
    </section>
    
    
    <!-- Navigation -->
    <div id="navigation">
        <nav class="navbar navbar-custom" role="navigation">
              <div class="container">
                    <div class="row">
                          <div class="col-md-2">
                                   <div class="site-logo">
                                            <a href="/Home/Index" class="brand">D.V.</a>
                                    </div>
                          </div>
                          

                          <div class="col-md-10">
         
                                      <!-- Brand and toggle get grouped for better mobile display -->
                          <div class="navbar-header">
                                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#menu">
                                <i class="fa fa-bars"></i>
                                </button>
                          </div>
                                      <!-- Collect the nav links, forms, and other content for toggling -->
                                      <div class="collapse navbar-collapse" id="menu">
                                            <ul class="nav navbar-nav navbar-right">
                                                  <li class="active"><a href="#intro">Home</a></li>
                                                   <li><a href="#service">Services</a></li>
                                            </ul>
                                      </div>
                                      <!-- /.Navbar-collapse -->
             
                          </div>
                    </div>
              </div>
              <!-- /.container -->
        </nav>
    </div> 
    <!-- /Navigation -->  
    
    <!-- Section: services -->
    <section id="service" class="home-section color-dark bg-gray">
        <div class="container marginbot-50">
            <div class="row">
                <div class="col-lg-8 col-lg-offset-2">
                    <div>
                    <div class="section-heading text-center">
                    <h2 class="h-bold">What we can do for you</h2>
                    <div class="divider-header"></div>
                    </div>
                    </div>
                </div>
            </div>

        </div>

        <div class="text-center">
        <div class="container">


        <div class="row animatedParent">

            <div class="col-xs-6 col-sm-4 col-md-4">
                <div class="animated rotateInDownLeft">
                <div class="service-box">
                    <div class="service-icon">
                        <span class="fa fa-laptop fa-2x"></span> 
                    </div>
                    <div class="service-desc">                        
                        <h5>Our Works</h5>
                        <div class="divider-header"></div>
                        <p>
                        Introduction
                        </p>
                        <a href="/Display/Display_Index" class="btn btn-skin">Learn more</a>
                    </div>
                </div>
                </div>
            </div>
            <div class="col-xs-6 col-sm-4 col-md-4">
                <div class="animated rotateInDownLeft slow">
                
                </div>
            </div>
            <div class="col-xs-6 col-sm-4 col-md-4">
                <div class="animated rotateInDownLeft slower">
                <div class="service-box">
                    <div class="service-icon">
                        <span class="fa fa-code fa-2x"></span> 
                    </div>
                    <div class="service-desc">
                        <h5>DIY your works</h5>
                        <div class="divider-header"></div>
                        <p>
                        Introduction.
                        </p>
                        <a href="/DIY/DIY_Index" class="btn btn-skin">Learn more</a>
                    </div>
                </div>
                </div>
            </div>

        </div>

        </div>
        </div>
    </section>
    <!-- /Section: services -->

    <footer>
        <div class="container">
            <div class="row">
                <div class="col-md-6">
                    <ul class="footer-menu">
                        <li><a href="#">Home</a></li>
                    </ul>
                </div>
                <div class="col-md-6 text-right">
                    <p>&copy;Thanks to - Bocor.</p>
                </div>
            </div>    
        </div>
    </footer>

    <!-- Core JavaScript Files --> 
    <script src="<%= Url.Content("/Scripts/bootstrap.min.js") %>"></script>
    <script src="<%= Url.Content("/Scripts/jquery/jquery.min.js") %>"></script>
    <script src="<%= Url.Content("/Scripts/jquery/jquery.sticky.js") %>"></script>
    <script src="<%= Url.Content("/Scripts/jquery/jquery.easing.min.js") %>"></script>
    <script src="<%= Url.Content("/Scripts/jquery/jquery.scrollTo.js") %>"></script>
    <script src="<%= Url.Content("/Scripts/jquery/jquery.appear.js") %>"></script>
    <script src="<%= Url.Content("/Scripts/stellar.js") %>"></script>
    <script src="<%= Url.Content("/Scripts/nivo-lightbox.min.js") %>"></script>
    <script src="<%= Url.Content("/Scripts/custom.js") %>"></script>
    <script src="<%= Url.Content("/Scripts/css3-animate-it.js") %>"></script>

</body>
</html>