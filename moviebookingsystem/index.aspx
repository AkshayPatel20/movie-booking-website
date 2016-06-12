<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">


    <title>Homepage</title>

    <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />

    <style>
    .item {
        background: #333;
        text-align: center;
        height: 300px !important;
    }
    h2 {
        margin: 0;
        color: #888;
        padding-top: 100px;
        font-size: 50px;
    }
    
   
   h4{
	color:darkgreen;
	font-family:algerian;
	font-size:24px;
    }

 
 details ul
{
	color:#D51165;
	font-size:15px;
	text-align:center
}

details
{
	color:darkgreen;
	font-family:algerian;
	font-size:15px;	
}

aside p
{
	text-align:center;
	background-color:darkgreen;
	color:white;
	font-size:15px;
}


    
</style>


</head>
<body>
    <form id="form1" runat="server">
   
    
    <nav class="navbar navbar-default navbar-fixed-top" role="navigation">
  <div class="container-fluid">

  <a class="navbar-brand" href="#"><img src="images/IMG-20150401-WA0003.jpg"
  style="height: 45px; width: 236px; top: 2px; line-height: normal; position: absolute; z-index: auto;" /></a>
  
  <div class="navbar-header navbar-right">
  <ul class="nav navbar-nav" nav-tabs>
  <li><a href="index.aspx">Home</a></li>
  <li><a href="index.html">About us</a></li>
    <li><a href="Login.aspx">Admin Login</a></li>
   <li><a href="booking.aspx">Booking</a></li>
  </ul>
  </div>
  </div>
  
</nav>
<br><br>
<h1 style="font-size:20px;color:darkgreen;font-family:algerian; text-align:right">
		Hurry Up!Heavy Discounts on weekends....</h1>

<h4 align="center">Currently,showing...</h4>






<div class="thumbnail">
    <div id="DemoCarousel" class="carousel slide" data-interval="2000" data-ride="carousel">
        <!-- Carousel indicators -->
        <ol class="carousel-indicators">
            <li data-target="#DemoCarousel" data-slide-to="0" class="active"></li>
            <li data-target="#DemoCarousel" data-slide-to="1"></li>
            <li data-target="#DemoCarousel" data-slide-to="2"></li>
        </ol>
        <!-- Carousel items -->
        <div class="carousel-inner">
            <div class="item active">
                <img src="fan.jpg" />
                
                <div class="carousel-caption">
                    
                </div>
            </div>
            <div class="item">
                <img src="badlapur.jpg" />
                <div class="carousel-caption">
                    
                </div>
            </div>
            <div class="item">
                <img src="Happy-New-Year.jpg" />
                <div class="carousel-caption">
                   
                </div>
            </div>
        </div>
        <!-- Carousel Controls -->
        <a class="carousel-control left" href="#DemoCarousel" data-slide="prev">
            <span class="glyphicon glyphicon-chevron-left"></span>
        </a>
        <a class="carousel-control right" href="#DemoCarousel" data-slide="next">
            <span class="glyphicon glyphicon-chevron-right"></span>
        </a>
    </div>
</div>



<div class="container">
<div class=" col-md-6 col-md-offset-0">
       <br> <br> 
        <p style="color:black;font-size:15px;font-family:arial;">
		AP CINEMA is a emerging entertainment compant field of booking online movie ticket in India.
		We pvr cinema halls in India by establishing the first multiplex cinema in 2001 and larger multiscreen cienma in 
		in 2012.
		with it head office in Jogeshwari,AP CINEMA is now serving the viewing of major India cities.
		</p>
		<p style="color:black;font-size:15px;font-family:arial;">
	     Waiting in queues to book tickets of your favorite movie is now a matter a past.
          AP CINEMA empower you to offering a platform to book movie ticket anywhere,anytime.whether a shopping in a mall,
		  enjoying vacation at juhu beach,taking you girlfriend for a walk,
	      AP CINEMA is there to reserve your hot seat in your favorite AP CINEMA. 
			</p>
</div>
<div class=" col-md-6 col-md-offset-0">
<p style="color:darkgreen;font-family:algerian; text-align:center; font-size:20px">Latest Booking!!</p>
	<embed width="420" height="260"
	src="http://www.youtube.com/embed/watch?v=Fq2jCV_QsEA">

</div>
</div>

</br>

<div class="container">
<details>
		<summary style=" text-align:center"><b>Currently,Operating in:</b></summary> 
			<ul>
				<li>Jogeshwari</li>
				<li>Malad</li>
			</ul>

		With a annual turnover of India $55 Million,
		AP CINEMA is expanding its wings we are launching three new cinema in Pakistan,Afganistan, Shortly.
</details>
</div>

</br>

<div class=" container">
<aside>
		<p>
	<i><b>AP CINEMA value it customers.we keep update you with new discount and offers.		
		<br>
		we appreciate your association!</b></i>
	</p>
</aside> 
</div>




</br>

<div class="navbar navbar-inverse">
    <div class=" container">
    <p class="navbar-text pull-left">&copy; 2015 AP Cinema - Your Favorite movie booking Website!. All rights reserved.</p>
    </div>

</div>






    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"> </script>
    
    <script src="js/bootstrap.min.js"></script>








  
    </form>
</body>
</html>
