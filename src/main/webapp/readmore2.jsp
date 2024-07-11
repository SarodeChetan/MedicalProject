<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Insert title here</title>
    
<!--code for font awesome cdn  -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<!--code for font awesome cdn  -->

<style>
@import url('https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,400;0,500;1,300&display=swap');


:root
{
	--green: green;
	--black:#130f40;
	--light-color:#666;
	/*--box-shadow: 0 .1rem 1rem rgba(0,0,0.1);*/
	
	--box-shadow: 0 .5rem 1.5rem rgba(0,0,0,.1);
	
	--border: 2rem solid rgba(0,0,0.1);
	--outline: .1rem solid rgba(0,0,0.1);
}



*{
	font-family: 'Poppins',sans-serif;
	margin: 0;
	padding: 0;
	box-sizing: border-box;
	outline: none;
	border: none;
	text-decoration: none;
	text-transform: capitalize;
	transition: all .2s linear;
}


html
{
	font-size: 62.5%;
	overflow-x: hidden;
	scroll-behavior:smooth;
	scroll-padding-top:7rem; 
}

body
{
		 padding:10rem;
	 	 background-image: url("https://cdn.pixabay.com/photo/2019/11/06/07/15/home-4605394_640.png");
         background-size: cover;
         background-position: center;

}

section
{
	padding: 2rem 9%;
}

.container {

			background-color:#eee;
            max-width: 600px;
            margin: 0 auto;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.2);
        }

.btn
{
	border: .2rem solid var(--black);
	margin-top: 1rem;
	display: inline-block;
	padding: .8rem 3rem;
	font-size: 1.7rem;
	border-radius: .5rem;
	color: var(--black);
	cursor: pointer;
	background: none;
}

.btn:hover
{
	background: var(--green);
	color: #fff;
}


.header
{
	border: 0px solid;
	position: fixed;
	top:0;
	left: 0;
	right: 0;
	z-index: 1000;
	display: flex;
	align-items: center;
	justify-content: space-between;
	padding: 2rem 9%;
	background: white;
	box-shadow: var(--box-shadow)
}

.header .logo
{
	font-size:  2.5rem;
	font-weight: bolder;
}

.header .logo i
{
	color: var(--green);
}

 .header .navbar a
{
font-size: 1.7rem;
margin: 0 1rem;
color: var(--black);	
}

.header .navbar a:hover {
	color: var(--green)
}


.header .icons div
{
	border: 0px solid;
	height:4.5rem;
	width: 4.5rem;
	line-height: 4.5rem;
	border-radius: .5rem
	background #eee;
	color: var(--black);
	font-size: 2rem;
	margin-right: .3rem;
	text-align: center;
	cursor: pointer;
}

.header .icons div:hover {
	background: var(--green);
	color: white;
}

#menu-btn
{
	display: none;
}
.header .logout-form
{
	right: 2rem;
	transition: .4s linear;
}

.content
{
	
	display: flex;
	justify-content: center;
	
}


 h1 {
        	color:black;
            font-size: 34px;
            margin-top: 0;
           border: 2px solid;
             
        }


  h2 {
        	color:red;
            font-size: 24px;
            margin-top: 0;
             color: green;
        }

        p {
        	color:black;
            font-size: 16px;
            line-height: 1.5;
            margin-bottom: 20px;
        }




/* media queires*/
@media (max-width: 991px) 
{
	html
{
	font-size: 55%;
	 
}
	.header
	{
	padding: 2rem;
	}
	section
	 {
	padding: 2rem;
	
	}
}

@media (max-width: 768px)
{
	#menu-btn
{
	display: inline-block;
}

.header .search-form
{
	width: 90%;
}

	.header .navbar
	{
	position: absolute;
	top: 110%;
	right: -110%;
	width: 30rem;
	box-shadow: var(--box-shadow);
	border-radius: .5rem;
	background:#fff; 
	}
	
	.header .navbar a
	{
		font-size: 2rem;
		margin: 2rem 2.5rem;
		display: block;
	}
}

@media (max-width: 450px) 
{
	html
{
	font-size: 50%;
	 
}
.heading
{
	font-size: 2.5rem;
}
	
	.footer
	{ 
		text-align: center;
	}
	
}

  .scroll-to-top {
				  display: none; /* Hide the button by default */
				  position: fixed ;
				  bottom: 20px ;
				  right: 20px;
				  width: 60px;
				  height: 60px;
				  background-color: #f20505;
				  color: #ffffff;
				  border: none;
				  border-radius: 50%;
				  font-size: 24px;
				  cursor: pointer;
				  opacity: 0.8;
				  transition: opacity 0.3s ease;
				}
				
				.scroll-to-top:hover {
				  opacity: 1;
				}
			
</style>
</head>
<body>
  
<!--header section  -->
<header class="header">
		<a href="home.jsp" class="logo"><i class="fa fa-plus-square" aria-hidden="true"></i> Medical Store</a>
		
		<nav class="navbar">
			<!-- <a href="home.jsp#home">home</a> -->
			<a href="home.jsp#features">features</a>
			<a href="home.jsp#categories">categories</a>
			<!-- <a href="home.jsp#yourorder">your order</a> -->
			<a href="home.jsp#review">review</a>
		</nav>
		
		<!-- <div class="icons">
<div class="fa fa-bars" id="menu-btn"></div>
<div class="fa fa-search" id="search-btn"></div>
		<a href="displaycartlink">
  		<div class="fa fa-shopping-cart" id="cart-btn">
    	<span id="cart-notification" class="notification-dot"></span>
 		 </div>
		</a>

<div class="fa fa-user" id="logout-btn"></div>
</div> -->

<form action="logoutlink" class="logout-form">

<input type="submit" value="logout" class="btn">
</form>
		
		
		
</header>
<!--header section  -->

<!--content section  -->
<section class="content">
 <div class="container">
 
 <center><h1>Quick Home Delivery</h1></center><br>
 
        <h2>Increased Accessibility:</h2>
        <p>Quick home delivery of medical essentials improves accessibility for individuals who may have limited mobility, are elderly, or live in remote areas. It ensures that essential medical supplies reach those who need them, regardless of their location.</p>

        <h2>Convenience:</h2>
        <p>Home delivery eliminates the need for individuals to visit a physical store or pharmacy, saving them time and effort. They can conveniently order their medical essentials online or over the phone and have them delivered directly to their doorstep.</p>

        <h2>Time-saving:</h2>
        <p>With quick home delivery, individuals can avoid long wait times at pharmacies or healthcare facilities. They can receive their medical supplies promptly, allowing them to focus on their health and well-being without unnecessary delays.</p>

        <h2>Safety and Privacy:</h2>
        <p>Home delivery of medical essentials ensures the safety and privacy of individuals, especially during times of pandemic or when dealing with sensitive health conditions. It reduces the risk of exposure to contagious diseases and provides a discreet way of obtaining necessary medications and healthcare products.</p>

      	<h2>Reliable Service :</h2>
      	<p>Fast delivery of medical essentials requires efficient logistics and reliable service providers. Companies specializing in home delivery of healthcare supplies often have systems in place to ensure the accurate and timely delivery of products, giving customers peace of mind.</p>
		
		<h2>Range of Products: </h2>
		<p> Quick home delivery services often offer a wide range of medical essentials, including prescription medications, over-the-counter drugs, medical devices, personal care items, and more. This allows individuals to conveniently access a variety of healthcare products without the need to visit multiple stores.</p>
        
        <h2>Cost-effective:</h2>
        <p>Home delivery services may offer competitive pricing, discounts, or loyalty programs, helping individuals save money on their medical expenses. Additionally, by avoiding unnecessary travel or transportation costs, individuals can further reduce their overall healthcare expenses.</p>
        
        <h2>Sustainability:</h2>
        <p>Home delivery services can contribute to reducing carbon emissions by consolidating multiple deliveries into one trip and optimizing delivery routes. This eco-friendly approach helps minimize the environmental impact associated with individual trips to physical stores.</p>

    </div>
</section>
<!--content section  -->



<div class="back">

<form action="home.jsp#features" class="back-form">
<center><input type="submit" value="<--back" class="btn"></center>
</form>
	
</div>


<script>

let searchForm = document.querySelector('.search-form');
document.querySelector('#search-btn').onclick = () =>
{
	searchForm.classList.toggle('active');
	
	logoutForm.classList.remove('active');
	navbar.classList.remove('active');
} 

let logoutForm = document.querySelector('.logout-form');
document.querySelector('#logout-btn').onclick = () =>
{
	logoutForm.classList.toggle('active');
	
	searchForm.classList.remove('active');
	navbar.classList.remove('active');
} 

let navbar = document.querySelector('.navbar');
document.querySelector('#menu-btn').onclick = () =>
{
	navbar.classList.toggle('active');
	searchForm.classList.remove('active');
	logoutForm.classList.remove('active');
}


window.onscroll = () =>
{
	searchForm.classList.remove('active');
	
	logoutForm.classList.remove('active');
	navbar.classList.remove('active');
}

 			
			
</script>
</body>
</html>
