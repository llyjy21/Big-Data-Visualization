<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage" %>
<!DOCTYPE html>
<html>
<head runat="server">
	<title>Settings</title>

	<!-- css -->
    <link href="<%= Url.Content("/Css/bootstrap.css") %>" rel="stylesheet" >
    <link href="<%= Url.Content("/Font/Css/font-awesome.min.css") %>" rel="stylesheet" type="text/css" />
	<link href="<%= Url.Content("/Css/nivo-lightbox.css") %>" rel="stylesheet" />
	<link href="<%= Url.Content("/Css/nivo-lightbox-theme/default.css") %>" rel="stylesheet" type="text/css" />
	<link href="<%= Url.Content("/Css/animations.css") %>" rel="stylesheet" />
    <link href="<%= Url.Content("/Css/style.css") %>" rel="stylesheet">
	<link href="<%= Url.Content("/Css/colorDefault.css") %>" rel="stylesheet">

	<script src="<%= Url.Content("/Scripts/jquery/jquery.min.js") %>"></script>
	<script src="<%= Url.Content("/Scripts/utilities.js") %>"></script>
	<script>
		var fileName;
		$(document).ready(function()
		{  
			var urlParams =  getUrlParams();
			for (var i = 0; i < urlParams.length-1; i++) 
			{
				var x1 = document.getElementById("select1");
				var x2 = document.getElementById("select2");
				var x3 = document.getElementById("select3");
				var x4 = document.getElementById("select4");
				var opt1 = document.createElement("option");
				var opt2 = document.createElement("option");
				var opt3 = document.createElement("option");
				var opt4 = document.createElement("option");
			 	opt1.text = urlParams[i];
  			 	opt1.value = urlParams[i];
  			 	opt2.text = urlParams[i];
  			 	opt2.value = urlParams[i];
  			 	opt3.text = urlParams[i];
  			 	opt3.value = urlParams[i];
  			 	opt4.text = urlParams[i];
  			 	opt4.value = urlParams[i];
				x1.options.add(opt1);
				x2.options.add(opt2);
				x3.options.add(opt3);
				x4.options.add(opt4);
			}

			fileName = urlParams[urlParams.length-1];
			$("#btnclick").click(function(){  
        var frameSrc = "../ErrorPages/NoPermission.html";  
        $("#NoPermissioniframe").attr("src", frameSrc);  
        $('#NoPermissionModal').modal({ show: true, backdrop: 'static' });  
    });  

		});

		function submitSettings()
		{
			window.location.href = "/DIY/DIY1_Result?X="+$('#select1').val()+"&Y="+$('#select2').val()+"&P1="+$('#select3').val()+"&P2="+$('#select4').val()+"&fileName="+fileName;
		}
	</script>
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

	<!-- Section: about -->
    <section id="about" class="home-section color-dark bg-white">
		<div class="container marginbot-50">
			<div class="row">
				<div class="col-lg-8 col-lg-offset-2">
					<div class="animatedParent">
					<div class="section-heading text-center animated bounceInDown">
					<h2 class="h-bold">Step 2</h2>
					<div class="divider-header"></div>
					</div>
					</div>
				</div>
			</div>

		</div>

		<div class="container">

		
        <div class="row">
		
            <div class="col-lg-8 col-lg-offset-2 animatedParent">		
				<div class="text-center">
					<p>Please enter the column you want to be the X-axis, Y-axis and the radius of circles</p>
					<p>We recommend that you select an entire column is not allowed anywhere, then you can get more accurate results</p>
					<p>X axis: <select id="select1">
					</select>
					Y axis: <select id="select2">
					</select>
					</p>
					<p>
					Auxiliary Property: <select id="select3">
					</select>
					Radius: <select id="select4">
					</select>
					<br>
					<a class="btn btn-skin" onclick="submitSettings()">Create</a>
					</p>
						
				</div>
            </div>

        </div>		
		</div>

	</section>
	<!-- /Section: about -->

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