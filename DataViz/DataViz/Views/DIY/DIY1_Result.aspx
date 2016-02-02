<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>DIY1--Result</title>

	<!-- css -->
    <link href="<%= Url.Content("/Css/bootstrap.css") %>" rel="stylesheet" >
    <link href="<%= Url.Content("/Font/Css/font-awesome.min.css") %>" rel="stylesheet" type="text/css" />
	<link href="<%= Url.Content("/Css/nivo-lightbox.css") %>" rel="stylesheet" />
	<link href="<%= Url.Content("/Css/nivo-lightbox-theme/default.css") %>" rel="stylesheet" type="text/css" />
	<link href="<%= Url.Content("/Css/animations.css") %>" rel="stylesheet" />
    <link href="<%= Url.Content("/Css/style.css") %>" rel="stylesheet">
	<link href="<%= Url.Content("/Css/colorDefault.css") %>" rel="stylesheet">

	<link href="<%= Url.Content("/Css/leaflet.css") %>" rel="stylesheet" />
	<link href="<%= Url.Content("/Css/MainCSS.css") %>" rel="stylesheet"/>

	<script src="<%= Url.Content("/Scripts/jquery/jquery.min.js") %>"></script>
	<script src="<%= Url.Content("/Scripts/leaflet-src.js") %>"></script>
	<script src="<%= Url.Content("/Scripts/d3.js") %>"></script>
	<script src="http://cdnjs.cloudflare.com/ajax/libs/lodash.js/1.0.0-rc.3/lodash.underscore.min.js"></script>
	<script src="<%= Url.Content("/Scripts/colorbrewer.js") %>"></script>
	<script src="<%= Url.Content("/Scripts/leaflet.points-layer.js") %>"></script>
	<script src="<%= Url.Content("/Scripts/utilities.js") %>"></script>

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
    <center>
		<div class="container marginbot-50">
			<div class="row">
				<div class="col-lg-8 col-lg-offset-2">
					<div class="animatedParent">
					<div class="section-heading text-center animated bounceInDown">
					<h2 class="h-bold">Completion--TimeseriesMap</h2>
					<div class="divider-header"></div>
					</div>
					</div>
				</div>
			</div>

		</div>
		<div id="map" data-source=""></div>
		<div id="underMap"></div>
		<script src="<%= Url.Content("/Scripts/script.js") %>"></script>
	</center>
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