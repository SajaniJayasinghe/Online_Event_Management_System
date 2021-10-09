<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="keywords" content="footer, address, phone, icons" />
	
	<title>Cover page</title>

	<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css">
	<link href="http://fonts.googleapis.com/css?family=Cookie" rel="stylesheet" type="text/css">


<style>

.dim ul {
  list-style-type: none;
  margin: 0;
  padding: 0;
  width: 600px;
  background-color: rgba(0,0,0,0.5);
  
}

.dim li a {
  text-align:center;
  font: normal 40px 'Cookie', cursive;
  font-size:25px;
  display: block;
  color: #F7DC6F ;
  padding: 25px 16px;

}

/* Change the link color on hover */
.dim li a:hover {
  transform: scale(1.05);
  color:white;
  transition: 0.5s;
  background-image: url("bt2.jpg");
  cursor: pointer;
  box-shadow: 2px 2px 10px black;
}
.ga img {
   opacity:0.9;
   width: 49.7%;
  height: 300px;
}

.ga img:hover {
  transform: scale(1.02);
  transition: 0.5s;
  opacity:1.0;
  cursor: pointer;
  box-shadow: 3px 3px 10px black;
}
.we p{
	text-align:center;
	color:white;
	font: normal 40px 'Cookie', cursive;
	font-size:50px;
	font-weight:bolder;
  
}
.x img {
	width: 19.75%;
	height: 220px;
}  
.x img:hover {
  cursor: pointer;
  transform: scale(1.15);
  transition: 0.5s;
  box-shadow: 2px 2px 10px black;
}
.y img {
	width: 100%;
  height: 450px;
}
.y img:hover {
	transform: scale(1.02);
	cursor: pointer;
	box-shadow: 3px 3px 10px black;
}
.ax p{
	text-align:center;
	color:white;
	font: normal 40px 'Cookie', cursive;
	font-size:70px;
	font-weight:bolder;
	background-image: url("../images/bt1.jpg");
}
.z img {
	width: 100%;
	height: 300px;
  }
.z img:hover {
	transform: scale(1.04);
	transition: 0.5s;
	cursor: pointer;
	box-shadow: 3px 3px 10px black;
}

* {
  padding: 0;
  margin: 0
}

/* Slideshow container */
.slideshow-container {
  max-width: 1000px;
  position: relative;
  margin: auto;
}


/* Styling for ###BODY### part */
body
{
  background-image: url("https://stisglobal.in/wp-content/uploads/2019/06/event-management.jpg");
  background-size:80%;

}

/* Start of header  */
header{
	display: inline-flex;
	width:100%;
	background-color:rgba(0,0,0,0.7);
    left: 0;
    bottom: 0;

}
.head p{
	color:white;
	font-weight: bold;
	/* text-align:center; */
	font-weight:250;
	font-size:26px;
	margin-top: 0px;
	margin-left: 160px!important;

}
.head{
	box-sizing:border-box;
	height:70px;
	width:150%;
    margin-left:0px;

}

img
{
	width : 250px;
	height: 100px;
	left: 0;
    bottom: 0;
	background-position: top left;
}
.button{
	float:right;
	display: inline-flex;
    width: 50%;
	border-radius:15px;
	height:5%;
	margin-top:15px;
	margin-right:15px;
}
.k{
	margin-right:10px;
	
}
.social

{
    background-color:#000080;
	box-sizing:border-box;
	font-family:sans-serif;
	border:1px solid black;
	border-radius:5px;
	width:130%;
	font-size: 18px;
	padding: 10px;
	color: white;
}
.social:hover
{
	transition: 0.2s;
	color: yellow;
}
a{
  text-decoration: none;
  color:white;
  font-family:comic sans ms;
}
p
{
  text-align: center;
}

.Journey
{
  position:absolute;
  top:60%;
  left:35%;
  border-radius: 25px;
  /* padding: 10px; */
  width:15%;
  font-family: comic sans ms;
  font-weight: bolder;
  font-size: 35px;
  border: 2px solid black;
  padding:20px;
  color:black ;
 background:url("https://i.dailymail.co.uk/1s/2018/12/18/20/7586166-0-image-a-6_1545165148480.jpg");
  
}
.Journey:hover
{
  /* background-color:rgba(251,37,37, 1); */
  color:black;
  transition: 0.5s;
  box-shadow:8px 8px 8px  red;

}

/* start of footer  */
.foot{
        background-color:rgba(0,0,0,0.7);
        color: white;
		width:100%;
		position: absolute;
		right: 0;
		bottom: 0;
		left: 0;
        height: 5px;
        padding-top: 5px;


}
.foot p{
right:5px;
font-family:sans-serif;
text-align:left;
}
.row{
	float:left;
	margin-top:-5px;
	margin-right:35px;


}
/* end of footer  */


footer{
	position: fixed;
	bottom: 0;
}

@media (max-height:800px){
	footer { position: static; }
	header { padding-top:40px; }
}


.footer-distributed{
	background-color: rgba(0,0,0,0.7);
	box-sizing: border-box;
	width: 100%;
	text-align: left;
	font: bold 16px sans-serif;
	padding: 20px 20px 40px 30px;
	margin-top: 400px;
}

.footer-distributed .footer-left,
.footer-distributed .footer-center,
.footer-distributed .footer-right{
	display: inline-block;
	vertical-align: top;
}

/* Footer left */

.footer-distributed .footer-left{
	width: 30%;
}

.footer-distributed h3{
	color:  #ffffff;
	font: normal 36px 'Cookie', cursive;
	margin: 0;
}

/* The company logo */

.footer-distributed .footer-left img{
	width: 30%;
}

.footer-distributed h3 span{
	color:  #e0ac1c;
}

/* Footer links */

.footer-distributed .footer-links{
	color:  #ffffff;
	margin: 20px 0 12px;
}

.footer-distributed .footer-links a{
	display:inline-block;
	line-height: 1.8;
	text-decoration: none;
	color:  inherit;
}

.footer-distributed .footer-company-name{
	color:  #8f9296;
	font-size: 14px;
	font-weight: normal;
	margin: 0;
}

/* Footer Center */

.footer-distributed .footer-center{
	width: 35%;
}


.footer-distributed .footer-center i{
	background-color: black;
	color: #ffffff;
	font-size: 25px;
	width: 38px;
	height: 38px;
	border-radius: 50%;
	text-align: center;
	line-height: 42px;
	margin: 10px 15px;
	vertical-align: middle;
}

.footer-distributed .footer-center i.fa-envelope{
	font-size: 17px;
	line-height: 38px;
}

.footer-distributed .footer-center p{
	display: inline-block;
	color: #ffffff;
	vertical-align: middle;
	margin:0;
}

.footer-distributed .footer-center p span{
	display:block;
	font-weight: normal;
	font-size:14px;
	line-height:2;
}

.footer-distributed .footer-center p a{
	color:  #e0ac1c;
	text-decoration: none;;
}


/* Footer Right */

.footer-distributed .footer-right{
	width: 30%;
}

.footer-distributed .footer-company-about{
	line-height: 20px;
	color:  #92999f;
	font-size: 13px;
	font-weight: normal;
	margin: 0;
}

.footer-distributed .footer-company-about span{
	display: block;
	color:  #ffffff;
	font-size: 18px;
	font-weight: bold;
	margin-bottom: 20px;
}

.footer-distributed .footer-icons{
	margin-top: 25px;
}

.footer-distributed .footer-icons a{
	display: inline-block;
	width: 35px;
	height: 35px;
	cursor: pointer;
	background-color:white;
	border-radius: 2px;

	font-size: 20px;
	color: #151B54;
	text-align: center;
	line-height: 35px;

	margin-right: 3px;
	margin-bottom: 5px;
}

.footer-distributed .footer-icons a:hover
{
  /* background-color:rgba(251,37,37, 1); */
background-image: url("https://visme.co/blog/wp-content/uploads/2017/07/50-Beautiful-and-Minimalist-Presentation-Backgrounds-03.jpg");
	transition: 0.2s;
}

/* Here is the code for Responsive Footer */
/* You can remove below code if you don't want Footer to be responsive */


@media (max-width: 880px) {

	.footer-distributed .footer-left,
	.footer-distributed .footer-center,
	.footer-distributed .footer-right{
		display: block;
		width: 100%;
		margin-bottom: 40px;
		text-align: center;
	}

	.footer-distributed .footer-center i{
		margin-left: 0;
	}

}
.ph{
	margin-top:-32px;
}




*{
  margin: 0;
  padding: 0;
  outline: none;
  box-sizing: border-box;
  font-family: 'Montserrat', sans-serif;
}
nav{
  background: #171c24;
  display: flex;
  flex-wrap: wrap;
  align-items: center;
  justify-content: space-between;
  height: 70px;
  padding: 0 100px;
}
nav .logo{
  color: #82CAFF;
  font-size: 15px;
  letter-spacing: -1px;
}
nav .nav-items{
  display: flex;
  flex: 1;
  padding: 0 0 0 40px;
}
nav .nav-items li{
  list-style: none;
  padding: 0 15px;
}
nav .nav-items li a{
  color: #fff;
  font-size: 18px;
  font-weight: 500;
  text-decoration: none;
}
nav .nav-items li a:hover{
  color: #ff3d00;
}
nav form{
  display: flex;
  height: 40px;
  padding: 2px;
  background: #1e232b;
  min-width: 18%!important;
  border-radius: 2px;
  border: 1px solid rgba(155,155,155,0.2);
}
nav form .search-data{
  width: 100%;
  height: 100%;
  padding: 0 10px;
  color: #fff;
  font-size: 17px;
  border: none;
  font-weight: 500;
  background: none;
}
nav form button{
  padding: 0 15px;
  color: #fff;
  font-size: 17px;
  background: #ff3d00;
  border: none;
  border-radius: 2px;
  cursor: pointer;
}
nav form button:hover{
  background: #e63600;
}
nav .menu-icon,
nav .cancel-icon,
nav .search-icon{
  width: 40px;
  text-align: center;
  margin: 0 50px;
  font-size: 18px;
  color: #fff;
  cursor: pointer;
  display: none;
}
nav .menu-icon span,
nav .cancel-icon,
nav .search-icon{
  display: none;
}

@media (max-width: 1245px) {
  nav{
    padding: 0 50px;
  }
}
@media (max-width: 1140px){
  nav{
    padding: 0px;
  }
  nav .logo{
    flex: 2;
    text-align: center;
  }
  nav .nav-items{
    position: fixed;
    z-index: 99;
    top: 70px;
    width: 100%;
    left: -100%;
    height: 100%;
    padding: 10px 50px 0 50px;
    text-align: center;
    background: #14181f;
    display: inline-block;
    transition: left 0.3s ease;
  }
  nav .nav-items.active{
    left: 0px;
  }
  nav .nav-items li{
    line-height: 40px;
    margin: 30px 0;
  }
  nav .nav-items li a{
    font-size: 20px;
  }
  
  nav .menu-icon{
    display: block;
  }
  nav .search-icon,
  nav .menu-icon span{
    display: block;
  }
  nav .menu-icon span.hide,
  nav .search-icon.hide{
    display: none;
  }
  nav .cancel-icon.show{
    display: block;
  }
}

nav .logo.space{
  color: red;
  padding: 0 5px 0 0;
}
@media (max-width: 980px){
  nav .menu-icon,
  nav .cancel-icon,
  nav .search-icon{
    margin: 0 20px;
  }
 
@media (max-width: 350px){
  nav .menu-icon,
  nav .cancel-icon,
  nav .search-icon{
    margin: 0 10px;
    font-size: 16px;
  }
}
button{
	float:right;
	display: inline-flex;
    width: 30%;
	border-radius:15px;
	height:5%;
	margin-top:15px;
	margin-right:15px;
}
.k{
	margin-right:10px;
	
}
.social

{

	box-sizing:border-box;
	font-family:sans-serif;
	border:1px solid black;
	border-radius:5px;
	width:100%;
	font-size: 18px;
	padding: 10px;
	color: white;
}
.social:hover
{

	transition: 0.2s;
	color: yellow;
}
a{
  text-decoration: none;
  color:white;
}

p
{
  text-align: center;
}

</style>
</head>
<body>

  <div class ="crossfade">
    <figure></figure>
    <figure></figure>
    <figure></figure>
    <figure></figure>
    <figure></figure>
  </div> 
  
  
<!--header-->
  <header class="mainhead" >
  <div class= "head">
			
  <img src="https://www.designfreelogoonline.com/wp-content/uploads/2017/02/000616-Free-logo-maker-Event-planner-Logo-01.png " align="left" class="ph">		
  <p>PHEONIX &nbsp;&nbsp; EVENTS&nbsp;&nbsp;  MANAGEMENT</p>
</div>

		
</header>


<body>

<br><br><br><br><br><br><br><br>

    <div align =center>
      <a href="home.jsp"><button class="Journey" ><pre>START </pre></button></a>
 
  </div>

<!--footer-->
	<footer class="footer-distributed">

			<div class="footer-left">
				<h3>PHEONIX<span>Events Management</span></h3>

				<p class="footer-links">
					<a href="#">Home</a>
					|
					<a href="#">Blog</a>
					|
					<a href="#">About</a>
					|
					<a href="#">Contact</a>
				</p>

				<p class="footer-company-name">© 2021 PHEONIX Pvt.Ltd.</p>
			</div>

			<div class="footer-center">
				<div>
					<i class="fa fa-map-marker"></i>
					  <p><span>Nugegoda,Colombo 07, Sri Lanka -100200</span>
					</p>
				</div>

				<div>
					<i class="fa fa-phone"></i>
					<p>+9476 0012641</p>
				</div>
				<div>
					<i class="fa fa-envelope"></i>
					<p><a href="mailto:support@eduonix.com">support@pheonixevent.com</a></p>
				</div>
			</div>
			<div class="footer-right">
				<p class="footer-company-about">
					<span>About the company</span>
					We offer best products all over the world. Your happy is our wish.</p>
				<div class="footer-icons">
					<a href="#"><i class="fa fa-facebook"></i></a>
					<a href="#"><i class="fa fa-twitter"></i></a>
					<a href="#"><i class="fa fa-instagram"></i></a>
					<a href="#"><i class="fa fa-linkedin"></i></a>
					<a href="#"><i class="fa fa-youtube"></i></a>
				</div>
			</div>

</footer>
</body>
</html>