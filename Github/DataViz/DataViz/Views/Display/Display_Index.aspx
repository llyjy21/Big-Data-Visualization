<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Display</title>

	<!-- css -->
    <link href="<%= Url.Content("/Css/bootstrap.css") %>" rel="stylesheet" >
    <link href="<%= Url.Content("/Font/Css/font-awesome.min.css") %>" rel="stylesheet" type="text/css" />
	<link href="<%= Url.Content("/Css/nivo-lightbox.css") %>" rel="stylesheet" />
	<link href="<%= Url.Content("/Css/nivo-lightbox-theme/default.css") %>" rel="stylesheet" type="text/css" />
	<link href="<%= Url.Content("/Css/animations.css") %>" rel="stylesheet" />
    <link href="<%= Url.Content("/Css/style.css") %>" rel="stylesheet">
	<link href="<%= Url.Content("/Css/colorDefault.css") %>" rel="stylesheet">


	<link href="<%= Url.Content("/Css/DisplayCss.css") %>" rel="stylesheet">
	<script src="<%= Url.Content("/Scripts/d3.js") %>"></script>
 	<script src="<%= Url.Content("/Scripts/displayJs.js") %>"></script>

<!-------------------------------------------End D3JS part-------------------->
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
		<div class="container">
	        <div class="row">
	            <div class="col-lg-8 col-lg-offset-2 animatedParent">		
					<div class="text-center">

								<script>


var width = 1400;

var height = 720;

var canevas = d3.select("body").append("svg")
    .attr("width", width)
    .attr("height", height)

//var scale = 189000
  
  var scale = 280000
  
var offset = [width/2.2,height/2]




var projection = d3.geo.mercator()
  .scale(scale)// projection generator
  .translate(offset)
  .center([2.347383499145508,48.85418898940671]);
  
  var quantize = d3.scale.quantize()
  .domain([15,145])// les prix vont de 20 à 80
  //.range(['yellow','orange','red']);
  //.range(d3.range(4,9,2).map(function(i) { return "q" + i + "-9"; }));
  .range(['q4-9', 'q6-9', 'q8-9']);

  var quantize_size = d3.scale.quantize()
  .domain([0,5890])
  .range(d3.range(10));
  
d3.json("<%= Url.Content("/Data/Paris.geojson") %>",function(data) {// en arriere plan

  
 var path = d3.geo.path().projection(projection);
  
  var group = canevas.selectAll("g")
  .data(data.features).enter()
  .append("g")
  
 
 var area = group.append("path")
 .attr("d",path)
 .attr("class","area")
 .attr("fill","#151515")

 
});

d3.json("<%= Url.Content("/Data/Hotels_Paris.json") %>",function(error,data) {
    if (error) return console.warn(error);
    else
{	
var nodes = canevas.selectAll("circle").data(data)
  .enter() //place holder
  .append("circle")
    .attr("cx",function(d){ return projection([d.longitude,0])[0];})
    .attr("cy",function(d){ return projection([0,d.latitude])[1];})
	.attr("r",function(d){ return quantize_size(d.nbAvis*d.note)+4;})
	.attr("fill","grey")
	.attr("onmouseover",function(d){return "ddrivetip('" + d.title + "')"})
	.attr("onmouseout","hideddrivetip()")
    .style("z-index","1")
	.attr("class", function(d) {
if(d.prixLePlusBas<=145) {return quantize(d.prixLePlusBas);}

else if (d.prixLePlusBas<=300){return "q10-9"}

else if (d.prixLePlusBas<=1000){return "q12-9"}


	 })
}
});

	
</script>
	<div id="dhtmltooltip"></div>
	<div id="Legend"> 
	<div >
	<div id="price" class="component">Price / Night : </div>
	<div class="component q4-9 ">15 - 60 €</div>
	<div class="component q6-9 ">60 - 105 €</div>
	<div class="component q8-9 ">105 - 145 €</div>
	<div class="component q10-9 ">145 - 300 €</div>
	<div class="component q12-9 ">300 - 1000 €</div>
	</div>  
	<br/>
	<div id ="size" class="component">Size of points refers to Hotel's appreciation</div>
	</div>

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

    <!-- Core JavaScript Files-->
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