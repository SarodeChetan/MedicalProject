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

		 font-family: Arial, sans-serif;
         color: #333;
         margin: 0;
		 padding:10rem;
	 	 background-image: url("https://cdn.pixabay.com/photo/2018/03/10/10/23/selling-3213725_640.jpg");
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

<center><h1>Payment Safety</h1></center><br>
  <h2>Secure Payment Methods</h2>
  <p>Quick home delivery ensures safe payments for medical needs by offering secure payment methods such as encrypted online transactions, trusted payment gateways, and secure payment platforms. This reduces the risk of unauthorized access to personal and financial information.</p>

  <h2>Privacy Protection</h2>
  <p>Home delivery services prioritize the privacy of customers' payment information. They implement stringent data protection measures, including secure servers, encryption protocols, and compliance with industry standards such as PCI-DSS (Payment Card Industry Data Security Standard). This safeguards sensitive payment details from unauthorized disclosure or misuse.</p>

  <h2>Fraud Prevention</h2>
  <p>Home delivery services employ advanced fraud detection and prevention systems to safeguard against fraudulent activities. They utilize technologies such as real-time transaction monitoring, AI-powered fraud detection algorithms, and customer authentication measures to ensure secure and legitimate transactions.</p>

  <h2>Compliance with Regulations</h2>
  <p>Reliable home delivery services adhere to relevant regulations and compliance standards related to payment security, such as the General Data Protection Regulation (GDPR) or local data protection laws. This commitment ensures that customers' payment information is handled in accordance with the highest security standards.</p>

  <h2>Secure Storage of Payment Data</h2>
  <p>Home delivery services employ secure storage systems for customer payment data. They use encrypted databases and employ strict access controls to protect sensitive payment information from unauthorized access or data breaches.</p>

  <h2>Transparent Refund and Dispute Resolution Policies</h2>
  <p>In the event of any payment-related issues or disputes, reputable home delivery services have transparent refund and dispute resolution policies. This ensures that customers can seek assistance and receive appropriate resolution for any payment-related concerns.</p>

  <h2>Ongoing Security Audits and Testing</h2>
  <p>To maintain high standards of payment safety, home delivery services conduct regular security audits and testing of their payment systems. This proactive approach helps identify and address any vulnerabilities or potential security risks, ensuring continuous protection of customer payment information.</p>

  <h2>Customer Education</h2>
  <p>Home delivery services provide resources and educational materials to customers regarding payment safety. This empowers individuals to make informed decisions, recognize potential payment scams or fraudulent activities, and take necessary precautions while making online payments.</p>
</div>

</section>
<!--content section  -->


<div class="back">

<form action="home.jsp#features" class="back-form">
<center><input type="submit" value="<--back" class="btn"></center>
</form>
	
</div>


</body>
</html>
