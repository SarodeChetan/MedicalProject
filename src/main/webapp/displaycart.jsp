<%@ page import="Model.MedicalDTO" %>
<%@ page import="java.util.List" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Display Cart</title>
      
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
        .card {
            border: 1px solid #ccc;
            border-radius: 5px;
            padding: 10px;
            margin-bottom: 10px;
        }

        .card-content {
            display: flex;
            align-items: center;
        }

        .card-image {
            flex-basis: 30%;
            margin-right: 10px;
        }

        .card-image img {
            width: 100%;
            height: 100%;
            object-fit: cover;
            border-radius: 4px;
        }

        .card-details {
            flex-basis: 70%;
        }

        .product-name {
            font-weight: bold;
            margin-bottom: 5px;
        }

        .product-quantity {
            margin-bottom: 5px;
        }

        .product-price {
            font-weight: bold;
        }

        .action-buttons {
            margin-top: 10px;
        }

        .place-order-button {
            background-color: blue;
            color: white;
            padding: 10px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        .place-order-button:hover {
            background-color: #45a049;
        }

        .remove-product-button {
            background-color: red;
            color: white;
            padding: 5px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        .remove-product-button:hover {
            background-color: #ff0000;
        }
        .name h1{
        	font-size: 40px;
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
    
    <form action="logoutlink" class="logout-form">
        <input type="submit" value="logout" class="btn">
    </form>
</header>
<div class="name">
 <h1>Cart Details</h1>
</div>
   
    <%
        List<MedicalDTO> cartItems = (List<MedicalDTO>) request.getAttribute("list");
        for (MedicalDTO cartItem : cartItems) {
    %>
    <div class="card">
        <div class="card-content">
            <div class="card-image">
                <img src="<%= cartItem.getImageUrl() %>" alt="Product Image">
            </div>
            <div class="card-details">
                <div class="product-name"><%= cartItem.getProductName() %></div>
                <div class="product-quantity">Quantity: <%= cartItem.getQty() %></div>
                <div class="product-price">Price: <%= cartItem.getPrice() %></div>
                <div class="action-buttons">
                    <form action="removeproductlink" method="get">
                        <input type="hidden" name="productId" value="<%= cartItem.getProductId() %>">
                        <button class="remove-product-button" type="submit">Remove</button>
                    </form>
                </div>
            </div>
        </div>
        <form action="payment.jsp" method="get">
            <input type="checkbox" name="selectedProducts" value="<%= cartItem.getProductId() %>" >
            <button class="place-order-button" type="submit">Payment</button>
            <input type="hidden" name="order_id" value="<%= request.getParameter("order_id") %>">
            <input type="hidden" name="selectedProductCount" value="<%= cartItems.size() %>">
        </form>
    </div>
    <%
        }
    %>
</body>
</html>
