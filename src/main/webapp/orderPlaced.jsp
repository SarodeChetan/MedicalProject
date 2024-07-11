<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Order Placed</title>

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<link rel="stylesheet" href="https://unpkg.com/swiper@7/swiper-bundle.min.css" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<style type="text/css">

    @import url('https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,400;0,500;1,300&display=swap');
		    :root {
		        --green: green;
		        --black: #130f40;
		        --light-color: #666;
		        --box-shadow: 0 .5rem 1.5rem rgba(0, 0, 0, .1);
		        --border: 2rem solid rgba(0, 0, 0, .1);
		        --outline: .1rem solid rgba(0, 0, 0, .1);
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
		    body {
		        background: #eee;
		    }
		    /* CSS code for banner */
		    section {
		        padding: 2rem 9%;
		    }
		    .heading {
		        text-align: center;
		        padding: 2rem 0;
		        padding-bottom: 3rem;
		        font-size: 3.5rem;
		        color: var(--black);
		    }
		    .heading span {
		        background: var(--green);
		        color: #fff;
		        display: inline-block;
		        padding: .5rem 3rem;
		        clip-path: polygon(100% 0, 93% 50%, 100% 99%, 0% 100%, 7% 50%, 0% 0%);
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
		        box-shadow: var(--box-shadow);
		    }
		    .header .logo {
		        font-size: 2.5rem;
		        font-weight: bolder;
		    }
		    .header .logo i {
		        color: var(--green);
		    }
		    .header .navbar a {
		        font-size: 1.7rem;
		        margin: 0 1rem;
		        color: var(--black);
		    }
		    .header .navbar a:hover {
		        color: var(--green);
		    }
		    .header .icons div {
		        border: 0px solid;
		        height: 4.5rem;
		        width: 4.5rem;
		        line-height: 4.5rem;
		        border-radius: .5rem;
		        background: none;
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
		    .header .navbar.active {
		        right: 2rem;
		        transition: .4s linear;
		    }
		   
		    
		    .header .search-form {
		        border: 0px solid;
		        position: absolute;
		        top: 110%;
		        right: -110%;
		        max-width: 50rem;
		        height: 5rem;
		        background: #fff;
		        border-radius: .5rem;
		        overflow: hidden;
		        display: flex;
		        align-items: center;
		        box-shadow: var(--box-shadow);
		    }
		    .header .search-form.active {
		        right: 2rem;
		        transition: .4s linear;
		    }
		    .header .search-form input {
		        height: 100%;
		        width: 100%;
		        background: none;
		        text-transform: none;
		        font-size: 1.6rem;
		        color: var(--black);
		        padding: 1.5rem;
		    }
		    .header .search-form label {
		        font-size: 2.2rem;
		        padding-right: 1.5rem;
		        color: var(--black);
		        cursor: pointer;
		    }
		    .header .search-form label:hover {
		        color: var(--green);
		    }
		    .header .logout-form.active {
		        border: 0px solid;
		        position: absolute;
		        width: 35rem;
		        top: 110%;
		        right: -110%;
		        box-shadow: var(--box-shadow);
		        padding: 2rem;
		        border-radius: .5rem;
		        background: #fff;
		        text-align: center;
		    }
		    .header .logout-form {
		        right: 2rem;
		        transition: .4s linear;
		    }
		    .home {
		        border: 0px solid;
		        display: flex;
		        justify-content: center;
		        background: url("../images/banner-img.jpg") no-repeat;
		        background-position: center;
		        background-size: cover;
		        padding-top: 17rem;
		        padding-bottom: 10rem;
		    }
		    .home .content {
		        border: 0px solid;
		        text-align: center;
		        width: 60rem;
		    }
		    .home .content h3 {
		        color: var(--black);
		        font-size: 3rem;
		    }
		    .home .content h3 span {
		        color: var(--green);
		    }
		    .home .content p {
		        color: var(--light-color);
		        font-size: 1.7rem;
		        padding: 1rem 0;
		        line-height: 1.8;
		    }
		  
		    .navbar {
		        position: relative;
		    }
		    .notification {
		    position: absolute;
		    top: -10px;
		    right: -10px;
		    background-color: blue;
		    color: white;
		    font-size: 12px;
		    width: 20px;
		    height: 20px;
		    border-radius: 50%;
		    text-align: center;
		    line-height: 20px;
			}
			

</style>
</head>
<body>


		    <header class="header">
        <a href="home.jsp" class="logo"><i class="fa fa-plus-square" aria-hidden="true"></i> Medical Store</a>
        <nav class="navbar">
            <a href="displaycartlink"><div class="fa fa-shopping-cart" id="cart-btn"></a>
                <span id="cart-notification" class="notification">0</span>
            </div>
        </nav>
        <div class="icons">
            <div class="fa fa-bars" id="menu-btn"></div>
            <div class="fa fa-search" id="search-btn"></div>
            <div class="fa fa-user" id="logout-btn"></div>
        </div>
        <form action="searchlink" class="search-form">
            <input type="search" id="search-box" name="" placeholder="Search Here...">
            <label for="search-box" class="fa fa-search"></label>
        </form>
        <form action="logoutlink" class="logout-form">
            <input type="submit" value="logout" class="btn">
        </form>
    </header><br><br>
    <% 
        int count = (int) request.getAttribute("ordercount");
        String[] cartProductIds = request.getParameterValues("product_ids");
        int userId = 0;
       
        HttpSession ses = request.getSession();
        String username = null;
        if (ses != null) {
            username = (String) ses.getAttribute("username");
        }
        
        Connection con = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;
        
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/medicalproject?user=root&password=sql@123");
            
            // Retrieve userId based on username
            String selectQuery = "SELECT user_id FROM login_details WHERE username = ?";
            stmt = con.prepareStatement(selectQuery);
            stmt.setString(1, username);
            rs = stmt.executeQuery();
            
            if (rs.next()) {
                userId = rs.getInt("user_id");
            }
            
            String deleteQuery = "DELETE FROM cart_details WHERE product_id = ? AND user_id = ?";
            stmt = con.prepareStatement(deleteQuery);
            
            for (String productId : cartProductIds) {
                stmt.setString(1, productId);
                stmt.setInt(2, userId);
                stmt.executeUpdate();
            }
            
            stmt.close();
            con.close();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    %>
    

    
    <h1><%= count %> order placed successfully</h1>
    
    <a href="vieworderlink"><button>Your Order</button></a>
</body>
</html>
