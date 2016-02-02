<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>DIY</title>

	<!-- css -->
    <link href="<%= Url.Content("/Css/bootstrap.css") %>" rel="stylesheet" >
    <link href="<%= Url.Content("/Font/Css/font-awesome.min.css") %>" rel="stylesheet" type="text/css" />
	<link href="<%= Url.Content("/Css/nivo-lightbox.css") %>" rel="stylesheet" />
	<link href="<%= Url.Content("/Css/nivo-lightbox-theme/default.css") %>" rel="stylesheet" type="text/css" />
	<link href="<%= Url.Content("/Css/animations.css") %>" rel="stylesheet" />
    <link href="<%= Url.Content("/Css/style.css") %>" rel="stylesheet">
	<link href="<%= Url.Content("/Css/colorDefault.css") %>" rel="stylesheet">
</head>
<body>
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
                                                  <li class="active"><a href="/Home/Index">Home</a></li>
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

	<section id="works" class="home-section color-dark text-center bg-white">
		<div class="container marginbot-50">
			<div class="row">
				<div class="col-lg-8 col-lg-offset-2">
					<div>
					<div class="animatedParent">
					<div class="section-heading text-center">
					<h2 class="h-bold animated bounceInDown">Choose One Style</h2>
					<div class="divider-header"></div>
					</div>
					</div>
					</div>
				</div>
			</div>

		</div>

		<div class="container">

            <div class="row animatedParent">
                <div class="col-sm-12 col-md-12 col-lg-12" >

                    <div class="row">
                    	
                        <div class="col-md-4">
							<a href="/DIY/DIY1_Index">
								<img src="<%= Url.Content("/Img/works/DIY1.jpg") %>" class="img-responsive" alt="img">
							</a>
						</div>
						<div class="col-md-3">
						</div>
						<div class="col-md-4">
							<a href="/DIY/DIY2_Index">
								<img src="<%= Url.Content("/Img/works/DIY2.jpg") %>" class="img-responsive" alt="img">
							</a>
						</div>
					</div>
	
                </div>
            </div>	
		</div>
	</section>
	<!-- /Section: works -->

	<footer>
		<div class="container">
			<div class="row">
				<div class="col-md-6">
					<ul class="footer-menu">
						<li><a href="/Home/Index">Home</a></li>
					</ul>
				</div>
				<div class="col-md-6 text-right">
					<p>&copy;Thanks to - Bocor.</p>
				</div>
			</div>	
		</div>
	</footer>

    <!-- Core JavaScript Files -->
    <script src="<%= Url.Content("/Scripts/jquery/jquery.min.js") %>"></script>
   	<script src="<%= Url.Content("/Scripts/bootstrap.min.js") %>"></script>
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