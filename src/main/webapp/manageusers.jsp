<%@page import="java.util.ArrayList"%>
<%@page import="Model.UserDTO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Manage User</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
        }
        header {
            background-color: #35424a;
            color: white;
            text-align: center;
            padding: 1rem;
        }
        .container {
            max-width: 1200px;
            margin: auto;
            padding: 2rem;
        }
        .user-list {
            border-collapse: collapse;
            width: 100%;
        }
        .user-list th, .user-list td {
            border: 1px solid #ddd;
            padding: 8px;
            text-align: left;
        }
        .user-list th {
            background-color: #35424a;
            color: white;
        }
        .user-list tr:nth-child(even) {
            background-color: #f2f2f2;
        }
        .user-list tr:hover {
            background-color: #ddd;
        }
    </style>
</head>
<body>
    <%
        List<UserDTO> userList = (ArrayList<UserDTO>) request.getAttribute("userList");
    %>
    <header>
        <h1>Manage User</h1>
    </header>
    <div class="container">
        <h2>User List</h2>
        <table class="user-list">
            <tr>
                <th>Name</th>
                <th>Email</th>
                <th>Contact</th>
                <th>UserName</th>
                <th>Action</th>
            </tr>
            <% for (UserDTO user : userList) { %>
            <tr>
                <td><%= user.getName() %></td>
                <td><%= user.getEmailId() %></td>
                <td><%= user.getContactNumber() %></td>
                <td><%= user.getUsername() %></td>
                <td><a href="deleteuserlink?userId=<%= user.getUserId()%>">Delete</a></td>
            </tr>
            <% } %>
        </table>
    </div>
    
    <script type="text/javascript">
 // Check if the session attribute indicates a new product added
    <% if (session.getAttribute("userdeleted") != null && (boolean) session.getAttribute("userdeleted")) { %>
        // Show a popup here
        window.onload = function() {
            // You can use any popup library or custom code here
            // For example, using the JavaScript alert function:
            alert("User Deleted Successfull!");
        };

        // Reset the session attribute to avoid showing the popup on subsequent visits
        <% session.setAttribute("userdeleted", false); %>
    <% } %>
    
    </script>
</body>
</html>

