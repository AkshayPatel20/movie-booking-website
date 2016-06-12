<%@ Page Language="C#" AutoEventWireup="true" CodeFile="booking.aspx.cs" Inherits="booking" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">


    <title>Booking</title>

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

    </style>



    <script src="jquery/jquery-1.11.2.js" type="text/javascript"></script>
    <script src="jquery/jquery-2.1.3.js" type="text/javascript"></script>
   <script type="text/javasript">
        $(document).ready(function () {
            $("a .c1").animate({
                opacity: '.5'
            });
            $("a .c1").hover(function () {
                $(this).stop().animate({ opacity: 1 }, 'fast');
            }, function () {
                $(this).stop().animate({ opacity: .5 }, 'slow');

            });
        });



    </script>

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
  <li><a href="aboutus.html">About us</a></li>
    <li><a href="Login.aspx">Admin Login</a></li>
   <li><a href="booking.aspx">Booking</a></li>
  </ul>
  </div>
  </div>
  
</nav>

</br></br>
</br></br>

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
<h3 style=" font-size:24px;color:darkgreen;font-family:algerian">Book Your Favorite Movie Now!!</h3>

<br>

<!-- 
<div class="row">
  <div class="col-sm-1 col-md-3">
    <div class="thumbnail">
      <img src="Happy-New-Year.jpg" alt="poster" style=" height:250px; width:300px;"class=" img-rounded">
      <div class="caption">
        <h3>Happy New Year</h3>
        <p> <span class="glyphicon glyphicon-star" aria-hidden="true"></span><span class="glyphicon glyphicon-star" aria-hidden="true"></span><span class="glyphicon glyphicon-star" aria-hidden="true"></span> Star</p>
        <p><a href="reviewhny.aspx" class="btn btn-primary btn-block" role="button">Buy Ticket</a></p>
      </div>
    </div>
  </div>

  <div class="col-sm-1 col-md-3">
    <div class="thumbnail">
      <img src="fast_and_furious_7_poster_desing_by_fographics_by_j2torino-d77yf9w.jpg" alt="poster" style=" height:250px; width:300px;"class=" img-rounded">
      <div class="caption">
        <h3>Fast and Furious 7</h3>
        <p> <span class="glyphicon glyphicon-star" aria-hidden="true"></span><span class="glyphicon glyphicon-star" aria-hidden="true"></span><span class="glyphicon glyphicon-star" aria-hidden="true"></span><span class="glyphicon glyphicon-star" aria-hidden="true"></span> Star</p>
        <p><a href="reviewfaf.aspx" class="btn btn-primary btn-block" role="button">Buy Ticket</a><p>
      </div>
    </div>
  </div>

  <div class="col-sm-1 col-md-3">
    <div class="thumbnail">
      <img src="badlapur.jpg" alt="poster" style=" height:250px; width:300px;"class=" img-rounded">
      <div class="caption">
        <h3>Badlapur</h3>
        <p> <span class="glyphicon glyphicon-star" aria-hidden="true"></span><span class="glyphicon glyphicon-star" aria-hidden="true"></span><span class="glyphicon glyphicon-star" aria-hidden="true"></span> Star</p>
        <p><a href="reviewbadlapur.aspx" class="btn btn-primary btn-block" role="button">Buy Ticket</a></p>
      </div>
    </div>
  </div>

  <div class="col-sm-1 col-md-3">
    <div class="thumbnail">
      <img src="fan.jpg" alt="poster" style=" height:250px; width:300px;"class=" img-rounded">
      <div class="caption">
        <h3>Fan</h3>
        <p> <span class="glyphicon glyphicon-star" aria-hidden="true"></span><span class="glyphicon glyphicon-star" aria-hidden="true"></span><span class="glyphicon glyphicon-star" aria-hidden="true"></span> Star</p>
        <p><a href="#" class="btn btn-primary btn-block" role="button">Buy Ticket</a></p>
      </div>
    </div>
  </div>


  <div class="col-sm-1 col-md-3">
    <div class="thumbnail">
      <img src="Yeh-Jawaani-Hai-Deewani-Poster.jpg" alt="poster" style=" height:250px; width:300px;"class=" img-rounded">
      <div class="caption">
        <h3>Yeh Jawaani Hai Deewani</h3>
        <p> <span class="glyphicon glyphicon-star" aria-hidden="true"></span><span class="glyphicon glyphicon-star" aria-hidden="true"></span> Star</p>
        <p><a href="#" class="btn btn-primary btn-block" role="button">Buy Ticket</a></p>
      </div>
    </div>
  </div>


  </div>


</div>

<div>

-->
 <asp:DataList id="DataList1" Visible="true" runat="server" RepeatDirection="Horizontal" HorizontalAlign="Left">
        
      <ItemTemplate>

        <a href ="user/Default2.aspx?mov=<%# String.Format("{0}",Eval("moviename")) %>" title="<%# String.Format("{0}",Eval("moviename")) %>">

            <asp:Image ID="Image1" runat="server" Height="145px" Width="226px" ImageUrl='<%# String.Format("images/{0}",Eval("movieimage")) %>' />  
                         </a>
                        
       </ItemTemplate>
       
    </asp:DataList>


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
