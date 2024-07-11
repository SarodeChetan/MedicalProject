<%@page import="java.util.ArrayList"%>
<%@page import="Model.MedicalDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Product List</title>
      
    <!-- code for font awesome cdn -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <!-- code for font awesome cdn -->
    
    <style>
       @import url('https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,400;0,500;1,300&display=swap');
       
        :root {
            --green: green;
            --black: #130f40;
            --light-color: #666;
            /*--box-shadow: 0 .1rem 1rem rgba(0,0,0.1);*/

            --box-shadow: 0 .5rem 1.5rem rgba(0,0,0,.1);

            --border: 2rem solid rgba(0,0,0,.1);
            --outline: .1rem solid rgba(0,0,0,.1);
        }

        * {
            font-family: 'Poppins', sans-serif;
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            outline: none;
            border: none;
            text-decoration: none;
            text-transform: capitalize;
            transition: all .2s linear;
        }

        html {
            font-size: 62.5%;
            overflow-x: hidden;
            scroll-behavior: smooth;
            scroll-padding-top: 7rem;
        }
       section {
            padding: 2rem 9%;
        }
       
        body {
            font-family: Arial, sans-serif;
            background-color: #f5f5f5;
            margin: 0;
            padding: 100px;
        }
         .btn {
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

        .btn:hover {
            background: var(--green);
            color: #fff;
        }
        
          /* Header Styles */
        .header {
            border: 0px solid;
            position: fixed;
            top: 0;
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

        .header .logo {
            font-size: 2.5rem;
            font-weight: bolder;
        }

        .header .logo i {
            color: var(--green);
        }

        .header .icons div {
            border: 0px solid;
            height: 4.5rem;
            width: 4.5rem;
            line-height: 4.5rem;
            border-radius: .5rem;
            background: #eee;
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

        #menu-btn {
            display: none;
        }

.header .search-form
{
	border: 0px solid;
	position: absolute;
	top: 110%;
	right: -110%;
	max-width: 50rem;
	height: 5rem;
	background: #fff;
	border-radius:  .5rem;
	overflow: hidden;
	display: flex;
	align-items: center;
	box-shadow: var(--box-shadow)
}

.header .search-form.active
{
	right: 2rem;
	transition: .4s linear;
}

.header .search-form input
{
	height: 100%;
	width: 100%;
	background: none;
	text-transform: none;
	font-size: 1.6rem;
	color: var(--black);
	padding: 5.5rem;
}

.header .search-form label
{
	font-size: 2.2rem;
	padding-right: 1.5rem;
	color: var(--black);
	cursor: pointer;
}

.header .search-form label:hover {
	color: var(--green)
}

 
        .header .logout-form {
            right: 2rem;
            transition: .4s linear;
        }

        .header .navbar a {
            font-size: 1.7rem;
            margin: 0 1rem;
            color: var(--black);
        }

        .header .navbar a:hover {
            color: var(--green)
        }

        .container {
            max-width: 760px;
            margin: 0 auto;
        }

        .row {
            display: flex;
            flex-wrap: wrap;
            margin: -10px;
        }

        .column {
            flex-basis: 50%;
            padding: 10px;
            box-sizing: border-box;
        }

        .card {
            border: 1px solid #e0e0e0;
            border-radius: 4px;
            padding: 20px;
            margin-bottom: 20px;
            background-color: #fff;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s;
        }

        .card:hover {
            transform: translateY(-5px);
        }

        .card img {
            width: 100%;
            max-height: 200px;
            object-fit: cover;
            border-radius: 4px;
            margin-bottom: 20px;
        }

        .card h3 {
            font-size: 18px;
            margin: 0;
            margin-bottom: 10px;
        }

        .card p {
            margin: 0;
            margin-bottom: 10px;
        }

        .cart-button {
            background-color: #4CAF50;
            color: white;
            padding: 8px 16px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            border-radius: 4px;
            cursor: pointer;
            border: none;
            font-size: 14px;
            transition: background-color 0.3s;
        }

        .cart-button:hover {
            background-color: #45a049;
        }

        @media screen and (max-width: 600px) {
            .column {
                flex-basis: 100%;
            }
        }
        
        .scroll-to-top {
				  display: none; /* Hide the button by default */
				  position: fixed ;
				  bottom: 20px ;
				  right: 30px ;
				  width: 60px;
				  height: 60px;
				  background-color: green;
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

<!-- Header section -->
<header class="header">
    <a href="home.jsp" class="logo"><i class="fa fa-plus-square" aria-hidden="true"></i> Medical Store</a>
    
    <!-- Navbar section -->
<nav class="navbar">
    <a href="home.jsp#home">home</a>
    <a href="home.jsp#features">features</a>
    <a href="home.jsp#categories">categories</a>
    <a href="#yourorder">your order</a>
</nav>
    
    <div class="icons">
        <div class="fa fa-bars" id="menu-btn"></div>
        <div class="fa fa-search" id="search-btn"></div>
        <a href="displaycartlink">
            <div class="fa fa-shopping-cart" id="cart-btn">
                <span id="cart-notification" class="notification-dot"></span>
            </div>
        </a>

        <div class="fa fa-user" id="logout-btn"></div>
    </div>
            
    <form action="searchlink" class="search-form">
<input type="search" id="search-box" name="" placeholder="Search Here...">
<a href="searchlink"><label for="search-box" class="fa fa-search"></label></a>
</form>
    
    <form action="logoutlink" class="logout-form">
        <input type="submit" value="logout" class="btn">
    </form>
</header>


		<!-- scroll button -->
		<button class="scroll-to-top" onclick="scrollToTop()">&#8593;</button>
	 <!--header section  -->
	<!-- <header class="header">
		<a href="home.jsp" class="logo"><i class="fa fa-plus-square" aria-hidden="true"></i> Medical Store</a>
		<nav class="navbar">
			<a href="#home">home</a>
			<a href="#categories">categories</a>
			<a href="#features">features</a>
			<a href="#products">products</a>
			<a href="#review">review</a>
		</nav> 
		<div class="icons">
			<div class="fa fa-bars" id="menu-btn"></div>
			<div class="fa fa-search" id="search-btn"></div>
			<div class="fa fa-shopping-cart" id="cart-btn"></div>
			<div class="fa fa-user" id="logout-btn"></div>
		</div>
		<form action="searchlink" class="search-form">
			<input type="search" id="search-box" name="" placeholder="Search Here...">
			<label for="search-box" class="fa fa-search"></label>
		</form>
		<form action="logoutlink" class="logout-form">
			<input type="submit" value="logout" class="btn">
		</form>
	</header> 
	<br><br> -->
	<div class="container">
	    <div class="row">
	        <%
	            ArrayList<MedicalDTO> productList = (ArrayList<MedicalDTO>) request.getAttribute("list");
	            for (MedicalDTO m1 : productList) {
	        %>
	        <div class="column">
	            <div class="card">
	                <img src="<%= m1.getImageUrl()%>" alt="Product Image">
	                <h3><%= m1.getProductName() %></h3>
	                <p>Manufacturer Name: <%= m1.getManufactureName() %></p>
	                <p>Product Price: <%= m1.getPrice() %></p>
	                <form method="get" action="cartservletlink">
	                    <input type="hidden" name="productId" value="<%= m1.getProductId() %>">
	                    <label for="quantity">Quantity:</label>
	                    <input type="number" id="quantity" name="quantity" min="1" value="1" style="width: 50px"><br>
	                    <button type="submit" class="cart-button">Add To Cart</button>
	                </form>
	            </div>
	        </div>
	        <% } %>
	    </div>
	</div>
		
	
<script>

let searchForm = document.querySelector('.search-form');
document.querySelector('#search-btn').onclick = () => {
  searchForm.classList.toggle('active');
  logoutForm.classList.remove('active');
  navbar.classList.remove('active');
}

let logoutForm = document.querySelector('.logout-form');
document.querySelector('#logout-btn').onclick = () => {
  logoutForm.classList.toggle('active');
  searchForm.classList.remove('active');
  navbar.classList.remove('active');
}

let navbar = document.querySelector('.navbar');
document.querySelector('#menu-btn').onclick = () => {
  navbar.classList.toggle('active');
  searchForm.classList.remove('active');
  logoutForm.classList.remove('active');
}

window.onscroll = () => {
  searchForm.classList.remove('active');
  logoutForm.classList.remove('active');
  navbar.classList.remove('active');
}

//Function to check if the page is scrolled down
function checkScroll() {
  var scrollPosition = window.pageYOffset || document.documentElement.scrollTop;
  var scrollToTopButton = document.querySelector('.scroll-to-top');

  // If the scroll position is greater than 300 pixels, show the button. Otherwise, hide it.
  if (scrollPosition > 300) {
    scrollToTopButton.style.display = 'block';
  } else {
    scrollToTopButton.style.display = 'none';
  }
}

// Function to scroll to the top of the page
function scrollToTop() {
  window.scrollTo({
    top: 0,
    behavior: 'smooth'
  });
}

// Add event listener to check the scroll position
window.addEventListener('scroll', checkScroll);
</script>
<script>
    // Function to check if the page is scrolled down
    function checkScroll() {
        var scrollPosition = window.pageYOffset || document.documentElement.scrollTop;
        var scrollToTopButton = document.querySelector('.scroll-to-top');

        // If the scroll position is greater than 300 pixels, show the button. Otherwise, hide it.
        if (scrollPosition > 300) {
            scrollToTopButton.style.display = 'block';
        } else {
            scrollToTopButton.style.display = 'none';
        }
    }

    // Function to scroll to the top of the page
    function scrollToTop() {
        window.scrollTo({
            top: 0,
            behavior: 'smooth'
        });
    }

    // Add event listener to check the scroll position
    window.addEventListener('scroll', checkScroll);
</script>

<script type="text/javascript">
			<% if (session.getAttribute("buyProduct") != null && (boolean) session.getAttribute("buyProduct")) { %>
    window.onload = function() {      
        alert(" Yours Order Successfully placed!!");
    };
    <% session.setAttribute("buyProduct", false); %>
		<% } %>

</script>
</body>
</html>
