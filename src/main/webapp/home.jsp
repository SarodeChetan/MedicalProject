<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>


<meta charset="ISO-8859-1">
<title>Medical Store</title>


<!-- <link rel="icon" type="image/icon" href="image/favicon.png"> -->


<!--code for font awesome cdn  -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<!--code for font awesome cdn  -->

<!--code for linking css file  -->
<link rel="stylesheet" type="text/css" href="home.css">
<!--code for linking css file  -->


<!-- Swiper CSS -->
<link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css">

<!-- Swiper JS -->
<script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>




<link rel="stylesheet" href="https://unpkg.com/swiper@7/swiper-bundle.min.css" />

<meta name="viewport" content="width=device-width, initial-scale=1.0">


</head>
<body>

		<!-- scroll button -->
		<button class="scroll-to-top" onclick="scrollToTop()">&#8593;</button>

<!--header section  -->
<header class="header">
<a href="#" class="logo"><i class="fa fa-plus-square" aria-hidden="true"></i> Medical Store</a>

<nav class="navbar">
<!-- <a href="#features">features</a> -->
<a href="productlink">products</a>
<a href="#categories">categories</a>
<a href="vieworderlink">Yours Orders</a>

</nav>

<div class="icons">
<div class="fa fa-bars" id="menu-btn"></div>
<div class="fa fa-search" id="search-btn"></div>
<a href="displaycartlink">
  <div class="fa fa-shopping-cart" id="cart-btn">
    <span id="cart-notification" class="notification-dot"></span>
  </div>
</a>

<a href="userprofilelink"><div class="fa fa-user" id="logout-btn"></div></a>
</div>

<form action="searchlink" class="search-form">
<input type="search" id="search-box" name="" placeholder="Search Here...">
<a href="searchlink"><label for="search-box" class="fa fa-search"></label></a>
</form>

<form action="logoutlink" class="logout-form">

<input type="submit" value="logout" class="btn">
</form>

</header>
<!--header section  -->


<!--banner section  -->
<section class="home" id="home">
<div class="content">
	<!-- <img src="images/banner-img.jpg"/> -->
<h3>The first wealth is <span>health</span></h3>
<p>To ensure good health: eat lightly, breathe deeply, live moderately, cultivate cheerfulness, and maintain an interest in life.
</p>

<a href="fitness.jsp" class="btn">know more</a>
</div>
</section>
<!--banner section  -->
  

<!--our products section  -->
<!--  
<section class="products" id="products">
<h1 class="heading">our<span>products</span></h1>

<div class="swiper products-slider">

<div class="swiper-wrapper">

<div class="swiper-slide box">
<img src="images/crocin.png">
<h1>Crocin</h1>
<div class="price">Rs 50/-</div>
<div class="stars">
<i class="fa fa-star"></i>
<i class="fa fa-star"></i>
<i class="fa fa-star"></i>
<i class="fa fa-star"></i>
<i class="fa fa-star-half"></i>
</div>
<a href="" class="btn">Add to cart</a>
</div>

<div class="swiper-slide box">
<img src="images/crocin.png">
<h1>Dolo</h1>
<div class="price">Rs 50/-</div>
<div class="stars">
<i class="fa fa-star"></i>
<i class="fa fa-star"></i>
<i class="fa fa-star"></i>
<i class="fa fa-star"></i>
<i class="fa fa-star-half"></i>
</div>
<a href="" class="btn">Add to cart</a>
</div>

<div class="swiper-slide box">
<img src="images/crocin.png">
<h1>Pan-D</h1>
<div class="price">Rs 50/-</div>
<div class="stars">
<i class="fa fa-star"></i>
<i class="fa fa-star"></i>
<i class="fa fa-star"></i>
<i class="fa fa-star"></i>
<i class="fa fa-star-half"></i>
</div>
<a href="" class="btn">Add to cart</a>
</div>

<div class="swiper-slide box">
<img src="images/crocin.png"><img alt="" src="">
<h1>Omez</h1>
<div class="price">Rs 50/-</div>
<div class="stars">
<i class="fa fa-star"></i>
<i class="fa fa-star"></i>
<i class="fa fa-star"></i>
<i class="fa fa-star"></i>
<i class="fa fa-star-half"></i>
</div>
<a href="" class="btn">Add to cart</a>
</div>

</div>
</div>


<div class="swiper products-slider">

<div class="swiper-wrapper">

<div class="swiper-slide box">
<img src="images/crocin.png">
<h1>Crocin</h1>
<div class="price">Rs 50/-</div>
<div class="stars">
<i class="fa fa-star"></i>
<i class="fa fa-star"></i>
<i class="fa fa-star"></i>
<i class="fa fa-star"></i>
<i class="fa fa-star-half"></i>
</div>
<a href="" class="btn">Add to cart</a>
</div>

<div class="swiper-slide box">
<img src="images/crocin.png">
<h1>Dolo</h1>
<div class="price">Rs 50/-</div>
<div class="stars">
<i class="fa fa-star"></i>
<i class="fa fa-star"></i>
<i class="fa fa-star"></i>
<i class="fa fa-star"></i>
<i class="fa fa-star-half"></i>
</div>
<a href="" class="btn">Add to cart</a>
</div>

<div class="swiper-slide box">
<img src="images/crocin.png">
<h1>Pan-D</h1>
<div class="price">Rs 50/-</div>
<div class="stars">
<i class="fa fa-star"></i>
<i class="fa fa-star"></i>
<i class="fa fa-star"></i>
<i class="fa fa-star"></i>
<i class="fa fa-star-half"></i>
</div>
<a href="" class="btn">Add to cart</a>
</div>

<div class="swiper-slide box">
<img src="images/crocin.png"><img alt="" src="">
<h1>Omez</h1>
<div class="price">Rs 50/-</div>
<div class="stars">
<i class="fa fa-star"></i>
<i class="fa fa-star"></i>
<i class="fa fa-star"></i>
<i class="fa fa-star"></i>
<i class="fa fa-star-half"></i>
</div>
<a href="" class="btn">Add to cart</a>
</div>

</div>
</div>

</section>
-->
<!--our products section  -->

<!--  
<section class="products" id="products">
<h1 class="heading">our <span>products</span></h1>
<div class="box-container">

<div>
<div class="box">
<img src="images/crocin.png">
<h3>Crocin</h3>
<p>Corcins</p>
<a href="#" class="btn">shop now</a>
</div>

<div class="box">
<img src="images/crocin.png">
<h3>Crocin</h3>
<p>Corcins</p>
<a href="#" class="btn">shop now</a>
</div>

<div class="box">
<img src="images/crocin.png">
<h3>Crocin</h3>
<p>Corcins</p>
<a href="#" class="btn">shop now</a>
</div>

<div class="box">
<img src="images/crocin.png">
<h3>Crocin</h3>
<p>Corcins</p>
<a href="#" class="btn">shop now</a>
</div>
</div>


<div>
<div class="box">
<img src="images/crocin.png">
<h3>Crocin</h3>
<p>Corcins</p>
<a href="#" class="btn">shop now</a>
</div>

<div class="box">
<img src="images/crocin.png">
<h3>Crocin</h3>
<p>Corcins</p>
<a href="#" class="btn">shop now</a>
</div>

<div class="box">
<img src="images/crocin.png">
<h3>Crocin</h3>
<p>Corcins</p>
<a href="#" class="btn">shop now</a>
</div>

<div class="box">
<img src="images/crocin.png">
<h3>Crocin</h3>
<p>Corcins</p>
<a href="#" class="btn">shop now</a>
</div>

<br><br><br>

<div class="seemore">
 <a href="#" class="btn">see more</a>
 </div>
 
</div>

</div>

</section>

  
<!--our products section  -->

<!--our categories section  -->

<section class="categories" id="categories">
<h1 class="heading">product <span>categories</span></h1>
<div class="box-container">

<div class="box">
<img src="https://chaldn.com/_mpimage/all-meds?src=https%3A%2F%2Feggyolk.chaldal.com%2Fapi%2FPicture%2FRaw%3FpictureId%3D106031&q=low&v=1&m=400">
<h3>Medicines</h3>
<p>Upto 30% Off</p>
<a href="fetchmedicinelink" class="btn">shop now</a>
</div>

<div class="box">
<img src="https://img.freepik.com/free-vector/drinks-cans-plastic-bottles-illustrations-set_74855-16864.jpg?w=740&t=st=1693820944~exp=1693821544~hmac=71fff8c5907d4f9b656b92dc78414c60c453fff3596076b586ac469e6556bbec">
<h3>Drinks</h3>
<p>Upto 20% Off</p>
<a href="drinkslink" class="btn">shop now</a>
</div>

<div class="box">
<img src="https://img.freepik.com/premium-vector/orthopedy-medicine-joints-treatment-xray-poster_8071-34110.jpg?w=740">
<h3>Ortho</h3>
<p>Upto 45% Off</p>
<a href="ortholink" class="btn">shop now</a>
</div>

<div class="box">
<img src="https://www.keralaayurveda.biz/media/user_v1oz1Yz27j/4640/5-%282%29.jpg">
<h3>Ayurvedic</h3>
<p>Upto 50% Off</p>
<a href="ayurvediklink" class="btn">shop now</a>
</div>

</div>

</section>


<!--our categories section  -->
<!--our feature section  -->
<section class="features" id="features">
	<h1 class="heading" > our <span>features</span></h1>
	
	<div class="box-container">
	
	<div class="box">
	<img src="https://images.everydayhealth.com/images/what-are-natural-skin-care-products-alt-1440x810.jpg">
	<h3>Safe and Genuine Products</h3>
	<p>Trust your health to genuine, safe products. Your well-being is our priority, ensuring quality and peace of mind.</p>
	<a href="readmore1.jsp" class="btn">read more</a>
	</div>
	
	<div class="box">
	<img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT-X2a15dFtTEFDig8nrJbpWlb1kgF_Hdjsbw&usqp=CAU">
	<h3>Quick Home Delivery</h3>
	<p>Fast delivery of medical essentials to your doorstep. Convenience and speed at your service.</p>
	<a href="readmore2.jsp" class="btn">read more</a>
	</div>
	
	<div class="box">
	<img src="https://www.shutterstock.com/image-illustration/secure-payment-design-260nw-589663346.jpg">
	<h3>Payment Safety</h3>
	<p>Safe payments for your medical needs. Shop with confidence and protect your personal information.</p>
	<a href="readmore3.jsp" class="btn">read more</a>
	</div>
	
	</div>
</section>

<!--our feature section  -->


<!--our reviews section  -->

<section class="review" id="review">
<h1 class="heading">Customer's <span>Review</span></h1>

<div class="swiper review-slider" id="review-slider">
<div class="swiper-wrapper">

<div class="swiper-slide box">
<img src="https://api.duniagames.co.id/api/content/upload/file/8676351731690797256.jpg">
<p>"The XYZ Medical Device is a game-changer! Accurate, user-friendly, and seamless integration. Highly recommended for enhanced patient care."</p>
<h3>Suraj Sonawane</h3>
<div class="stars">
<i class="fa fa-star"></i>
<i class="fa fa-star"></i>
<i class="fa fa-star"></i>
<i class="fa fa-star"></i>
<i class="fa fa-star"></i>
</div>
</div>

<div class="swiper-slide box">
<img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQGDNPqYvfVXr50g4wSf4HLD4p557PbSFNdJaKHA0Sqmva990kgeqCWX32L8hlD2NNWyeU&usqp=CAU">
<p>"The ABC Medical App is a lifesaver! Intuitive design, convenient scheduling, secure messaging. Improved patient engagement and outcomes. Highly recommended!"</p>
<h3>Akshay Marathe</h3>
<div class="stars">
<i class="fa fa-star"></i>
<i class="fa fa-star"></i>
<i class="fa fa-star"></i>
<i class="fa fa-star"></i>
<i class="fa fa-star"></i>
</div>
</div>

<div class="swiper-slide box">
<img src="https://w0.peakpx.com/wallpaper/735/118/HD-wallpaper-roronoa-zoro-android-anime-badass-character-badass-moment-hero-iphone-kumar-luffy-one-piece.jpg">
<p>"The XYZ Medical Device is a game-changer! Accurate, user-friendly, and seamless integration. Highly recommended for enhanced patient care."</p>
<h3>Suraj Sonawane</h3>
<div class="stars">
<i class="fa fa-star"></i>
<i class="fa fa-star"></i>
<i class="fa fa-star"></i>
<i class="fa fa-star"></i>
<i class="fa fa-star-half"></i>
</div>
</div>

<div class="swiper-slide box">
<img src="https://e1.pxfuel.com/desktop-wallpaper/979/710/desktop-wallpaper-89-about-aesthetic-anime-itachi.jpg">
<p>"The XYZ Medical Device is a game-changer! Accurate, user-friendly, and seamless integration. Highly recommended for enhanced patient care."</p>
<h3>Suraj Sonawane</h3>
<div class="stars">
<i class="fa fa-star"></i>
<i class="fa fa-star"></i>
<i class="fa fa-star"></i>
<i class="fa fa-star"></i>
<i class="fa fa-star-half"></i>
</div>
</div>

<div class="swiper-slide box">
<img src="https://i.pinimg.com/474x/14/23/75/1423750c8484e47f9d406426b3cc76ad.jpg">
<p>"The XYZ Medical Device is a game-changer! Accurate, user-friendly, and seamless integration. Highly recommended for enhanced patient care."</p>
<h3>Suraj Sonawane</h3>
<div class="stars">
<i class="fa fa-star"></i>
<i class="fa fa-star"></i>
<i class="fa fa-star"></i>
<i class="fa fa-star"></i>

</div>
</div>

</div>
</div>
</section>

<!--our reviews section  -->

<!--our footer section  -->

<section class="footer">
<div class="box-container">
<div class="box">
<h3> Medical Store <i class="fa fa-plus-square"></i></h3>
<p>Feel Free To Follow Us On Our Social Media Handlers All The Links Are Given Below.</p>

	<div class="share">
		<a href="#" class="fa fa-facebook"></a>
		<a href="#" class="fa fa-instagram"></a>
		<a href="#" class="fa fa-twitter"></a>
		<a href="#" class="fa fa-linkedin"></a>
	</div>
</div>

<div class="box">
<h3> Contact Info </h3>
	<a href="#" class="links"><i class="fa fa-phone"> </i>+91 7219160672</a>
	<a href="#" class="links"><i class="fa fa-phone"> </i>+91 8087145657</a>
	<a href="#" class="links"><i class="fa fa-envelope"> </i> medicalstore@gmail.com</a>
	<a href="#" class="links"><i class="fa fa-map-marker"> </i>Pune-411028, Maharashtra, India</a>
</div>


<div class="box">
<h3> Quick Links </h3>
	<a href="#" class="links"><i class="fa fa-arrow-right"> </i> Home</a>
	<a href="#features" class="links"><i class="fa fa-arrow-right"> </i> Features</a>
	<a href="productlink" class="links"><i class="fa fa-arrow-right"> </i> Products</a>
	<a href="#categories" class="links"><i class="fa fa-arrow-right"> </i> Categories</a>
	<a href="#review" class="links"><i class="fa fa-arrow-right"> </i> Reviews</a>
</div>



<div class="box">
<h3> Newsletter </h3>
	<p>Subscribe For Latest Updates</p>
	<input type="email" placeholder="Your Email" class="email"><br>
	<input type="submit" value="Subscribe" class="btn">
	<img src="https://i0.wp.com/365webresources.com/wp-content/uploads/2023/04/Tiny-Payment-Method-Icons.webp?ssl=1" class="payment-img">
</div>

</div>

<div class="credit">Created By <span>A&S</span> | All Rights Reserved</div>

</section>


<!--our footer section  -->



<script src="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.js"></script>
<script src="js/script.js"></script>

<script>
//Initialize Swiper
var mySwiper = new Swiper('.swiper', {
  // other options...
  autoplay: {
    delay: 1000, // Delay between slides in milliseconds (5 seconds in this example)
  },
});

</script>
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