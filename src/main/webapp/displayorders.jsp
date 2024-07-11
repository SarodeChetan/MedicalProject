<%@page import="Model.MedicalDTO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Order Details</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f1f1f1;
            padding: 20px;
        }
        
        .card {
            background-color: #fff;
            border-radius: 4px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
            padding: 20px;
            margin-bottom: 20px;
        }
        
        table {
            width: 100%;
            border-collapse: collapse;
        }
        
        th, td {
            padding: 10px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }
        
        th {
            background-color: #f5f5f5;
        }
        .scroll-to-top {
				  display: none; /* Hide the button by default */
				  position: fixed;
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
		
    <h1>Order Details</h1>
    
    <% List<MedicalDTO> orderItems = (List<MedicalDTO>) request.getAttribute("list");
    for (MedicalDTO orderItem : orderItems) { %>
        <div class="card">
            <table>
                <thead>
                    <tr>
                    	 <th>Order Number</th>
                    	 <th>Order Date</th>
                        <th>Product Name</th>
                         <th>Manufacture Name</th>
                        <th>Quantity</th>
                        <th>Price</th>
                        <th>Payment Mode</th>
                        <th></th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td><%= orderItem.getOrdNo() %></td>
                         <td><%= orderItem.getOrdDate() %></td>
                        <td><%= orderItem.getProductName() %></td>
                           <td><%= orderItem.getManufactureName()%></td>
                        <td><%= orderItem.getQty() %></td>
                        <td><%= orderItem.getPrice() %></td>
                          <td><%= orderItem.getPaymentMode() %></td>
                        
                    </tr>
                </tbody>
            </table>
        </div>
    <% } %>
    
    
    
    
    
    
    
    
    
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
