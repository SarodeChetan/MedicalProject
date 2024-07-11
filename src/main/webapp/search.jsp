
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="Model.MedicalDTO"%>
<%@page import="java.util.ArrayList"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Medical Shop</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" />
    <style>
    	 nav ul {
        list-style-type: none;
        margin: 0;
        padding: 0;
        overflow: hidden;
        background-color: #f9f9f9;
    }

  
    nav li {
        float: left;
    }

   
    nav li a {
        display: block;
        color: #333;
        text-align: center;
        padding: 14px 16px;
        text-decoration: none;
    }

    
    nav li a:hover {
        background-color: #ddd;
    }

    nav li.right {
        float: right;
    }

  
    nav li.right a.logout {
        background-color: #f44336;
        color: #fff;
    }

   
    nav li.right a.cart {
        background-color: #4CAF50;
        color: #fff;
    }
    
        body {
        	 background-image: url("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQqNp5GrQyoFt7NRK69cxxZh8cuWnXDWLxc8Q&usqp=CAU");
            background-repeat: no-repeat;
            background-size: cover; 
            font-family: Arial, sans-serif;
        }

        table {
            width: 600px;
            margin: 0 auto;
            border-collapse: collapse;
            margin-bottom: 20px;
        }

        th, td {
            padding: 10px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }

        th {
            background-color: #f2f2f2;
        }

        a button {
            padding: 10px 20px;
            background-color: #4CAF50;
            color: #fff;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            text-decoration: none;
            margin-right: 10px;
        }

        a button:hover {
            background-color: #45a049;
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
		<!-- scroll button -->
		<button class="scroll-to-top" onclick="scrollToTop()">&#8593;</button>
		 <nav>
        <ul>
            <li><a href="home.jsp">Home</a></li>
            <li style="float: right;"><a href="logoutlink">Logout</a></li>
            <li style="float: right;"><a href="cartlink"><i class="fa-light fa-cart-shopping"></i></a></li>
        </ul>
    </nav>
    <% 
        ArrayList<MedicalDTO> list =( ArrayList<MedicalDTO>)request.getAttribute("list");
    	
     %>
            <table>
                <tr>
                    <th>Product Name</th>
                    <th>Manufacture Name</th>
                    <th>Available Stock</th>
                    <th>Product Price</th>
                    <th>Product Manufacture date</th>
                    <th>Product Expiry Date</th>
                    
                </tr>
                <% for (MedicalDTO m1 : list) { %>
                    <tr>
                        <td><%=m1.getProductName()%></td>
                        <td><%=m1.getManufactureName() %></td>
                        <td><%=m1.getQty() %></td>
                        <td><%= m1.getPrice()%></td>
                        <td><%= m1.getMfgDate() %></td>
                        <td><%=m1.getExpDate() %></td>
                        <% int id=m1.getProductId(); %>
                     <td><a href="buylink?productId=<%=m1.getProductId()%>"><button>Buy</button></a></td> 
                       <td><a herf="addCart.jsp?productId=<%=m1.getProductId()%>"><button>Add to Card</button></a>
                    </tr>
                <% } %>
            </table>
             
       <script type="text/javascript">
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
   

   

</body>
</html>
