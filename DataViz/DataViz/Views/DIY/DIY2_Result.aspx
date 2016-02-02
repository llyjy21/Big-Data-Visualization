<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage" %>
<!DOCTYPE html>
<html>
<head runat="server">
<title>DIY2--Result</title>

   	<link href="<%= Url.Content("/Css/bootstrap.css") %>" rel="stylesheet" >
    <link href="<%= Url.Content("/Font/Css/font-awesome.min.css") %>" rel="stylesheet" type="text/css" />
    <link href="<%= Url.Content("/Css/animations.css") %>" rel="stylesheet" />
    <link href="<%= Url.Content("/Css/style.css") %>" rel="stylesheet">
	<link href="<%= Url.Content("/Css/colorDefault.css") %>" rel="stylesheet">

	<link href="<%= Url.Content("/Css/DIY2_style.css") %>" rel="stylesheet" />

	<script src="<%= Url.Content("/Scripts/jquery/jquery.min.js") %>"></script>
	<script src="<%= Url.Content("/Scripts/modernizr.js")%>"></script>
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
	<div id="chart">
		<svg>
		</svg>
	</div>
		<div id="widgets">
			<div id="header">
				<h1>Completion--Result</h1>
			</div>

			<div id="info">
			</div>
		</div>
		<script src="<%= Url.Content("/Scripts/d3.js") %>"></script>
		<script src="<%= Url.Content("/Scripts/underscore-min.js") %>"></script>
		<script type="text/javascript">
		  Modernizr.load({
		    test: Modernizr.svg,
		    yep: '<%= Url.Content("/Scripts/lineChart.js") %>',
		    nope: ['<%= Url.Content("/Scripts/jquery/jquery.min.js") %>', '<%= Url.Content("/Scripts/fallback.js") %>']
		  });
		</script>
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
