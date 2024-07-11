<%@page import="Model.MedicalDTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="ISO-8859-1" xmlns:th="http://www.thymeleaf.org"
                             xmlns:sec="http//www.thymleaf.org/extras/spring-security">
  <title>Product Manage</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
</head>
<body>
  <% ArrayList<MedicalDTO> productList = (ArrayList<MedicalDTO>) request.getAttribute("productList");
  
  %>
  <div class="container">
    <div class="row">
      <h1 align="center">PRODUCTS</h1>
    </div>
  </div>
  <hr>
  <div class="row">
    <div class="col">
      <a href="addproduct.html"><button class="btn btn-primary">ADD NEW PRODUCT</button></a>
    </div>
    <div class="col-2" align="center">
      <input type="search" name="search" id="searchInput" class="form-control" onkeyup="search_book()">
    </div>
    <div class="col-3" align="center">
      <div class="dropdown">
        <button class="btn btn-primary dropdown-toggle" type="button" id="sortDropdown" data-bs-toggle="dropdown"
          aria-expanded="false">
          Sort By
        </button>
        <ul class="dropdown-menu" aria-labelledby="sortDropdown">
          <li><a class="dropdown-item" href="#" onclick="sortByName()">Name</a></li>
          <li><a class="dropdown-item" href="#" onclick="sortByPrice()">Price</a></li>
        </ul>
      </div>
    </div>
    <div class="col-4" align="right">
      <a href="logoutlink"><button class="btn btn-danger" type="button">LogOut</button></a>
<!--     </div> -->
  </div>
  <hr>
  <div class="row" id="bookContainer">
    <% for (MedicalDTO product : productList) { %>
    <div class="col-4">
      <div class="card">
        <div class="card-header text-danger">
          <h1>Product Name: <%= product.getProductName() %></h1>
        </div>
        <div class="card-body text-success">
          <h4>Manufacturing Name: <span><%= product.getManufactureName() %></span></h4>
          <h4>Quantity: <span><%= product.getQty() %></span></h4>
          <h4>Price: <span><%= product.getPrice() %></span></h4>
          <h4>Mfg Date: <span><%= product.getMfgDate() %></span></h4>
          <h4>Exp Date: <span><%= product.getExpDate() %></span></h4>
          <h4>Image URL: <span><%= product.getImageUrl() %></span></h4>
          <h4>CATEGORY: <span><%= product.getProductType() %></span></h4>
        </div>
        <div class="card-footer">
          <a href="getproductbyid?productId=<%=product.getProductId()%>"><button class="btn btn-info">UPDATE STOCK</button></a>
          
       
        </div>
      </div>
    </div>
    <% } %>
  </div>
		

<script>
  function sortByName() {
    var bookContainer = document.getElementById('bookContainer');
    var displayedBooks = Array.from(bookContainer.children).filter(function (book) {
      return book.style.display !== "none";
    });

    var sortedBooks = displayedBooks.sort(function (a, b) {
      var titleA = a.querySelector('.card-header h1').textContent.toUpperCase();
      var titleB = b.querySelector('.card-header h1').textContent.toUpperCase();
      return titleA.localeCompare(titleB);
    });

    sortedBooks.forEach(function (book) {
      bookContainer.appendChild(book);
    });
  }

  function sortByPrice() {
    var bookContainer = document.getElementById('bookContainer');
    var displayedBooks = Array.from(bookContainer.children).filter(function (book) {
      return book.style.display !== "none";
    });

    var sortedBooks = displayedBooks.sort(function (a, b) {
      var priceA = parseFloat(a.querySelector('.card-body h4 span').textContent);
      var priceB = parseFloat(b.querySelector('.card-body h4 span').textContent);
      return priceA - priceB;
    });

    sortedBooks.forEach(function (book) {
      bookContainer.appendChild(book);
    });
  }

  function search_book() {
    var input = document.getElementById("searchInput");
    var filter = input.value.toUpperCase();
    var bookContainers = document.getElementsByClassName("col-4");

    for (var i = 0; i < bookContainers.length; i++) {
      var cardName = bookContainers[i].querySelector('.card-header h1').textContent.toUpperCase();
      if (cardName.includes(filter)) {
        bookContainers[i].style.display = "block";
      } else {
        bookContainers[i].style.display = "none";
      }
    }
  }
 
  
  // Check if the session attribute indicates a new product added
  <% if (session.getAttribute("newProductAdded") != null && (boolean) session.getAttribute("newProductAdded")) { %>
      // Show a popup here
      window.onload = function() {
          // You can use any popup library or custom code here
          // For example, using the JavaScript alert function:
          alert("New product added successfully!");
      };

      // Reset the session attribute to avoid showing the popup on subsequent visits
      <% session.setAttribute("newProductAdded", false); %>
  <% } %>
  
</script>

 

</body>


</html>
    