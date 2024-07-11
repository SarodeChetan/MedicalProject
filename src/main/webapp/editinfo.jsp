<%@page import="java.util.ArrayList"%>
<%@page import="Model.UserDTO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Edit Info</title>
    <style type="text/css">
    /* Reset some default styles */
    body, h1, h2, p {
        margin: 0;
        padding: 0;
    }

    /* Basic styling for the page container */
    .edit-container {
        width: 80%;
        margin: 0 auto;
        padding: 20px;
        border: 1px solid #ccc;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        background-color: #fff;
    }

    /* Styling for the header */
    .edit-header h1 {
        font-size: 24px;
        margin-bottom: 10px;
    }

    /* Styling for the form */
    .edit-form label {
        font-weight: bold;
        display: block;
        margin-bottom: 5px;
    }

    .edit-form input[type="text"],
    .edit-form input[type="email"] {
        width: 100%;
        padding: 10px;
        margin-bottom: 10px;
        border: 1px solid #ccc;
        border-radius: 4px;
    }

    /* Styling for the "Save" button */
    .edit-form button {
        background-color: #007bff;
        color: #fff;
        border: none;
        padding: 10px 20px;
        border-radius: 4px;
        cursor: pointer;
    }

    /* Styling for the "Back to Profile" link */
    .edit-options a {
        text-decoration: none;
        color: #007bff;
        font-weight: bold;
    }

    /* Center align the "Back to Profile" link */
    .edit-options {
        text-align: center;
    }

    /* Add some spacing between form fields */
    .edit-form label + input {
        margin-top: 10px;
    }
    </style>
</head>
<body>
	<% List<UserDTO> user = (ArrayList<UserDTO>) request.getAttribute("user"); %>
	
    <div class="edit-container">
        <div class="edit-header">
            <h1>Edit Info</h1>
        </div>
        <% for(UserDTO u:user){ %>
        <div class="edit-form">
            <form method="get" action="updateInfoServletLink">
                <label for="username">Username:</label>
                <input type="text" id="username" name="username" value="<%=u.getUsername()%>" required readonly="readonly"><br>
				<label for="name">Name:</label>
                <input type="text" id="name" name="name" value="<%= u.getName() %>" required><br>
                
                <label for="email">Email:</label>
                <input type="email" id="email" name="email" value="<%= u.getEmailId() %>" required><br>

                <label for="location">Contact Number:</label>
                <input type="tel" id="number" name="number" value="<%= u.getContactNumber() %>" required><br>
                
                <button type="submit">Save</button>
            </form>
        </div>
        <%} %>
        <div class="edit-options">
            <a href="userprofile.jsp">Back to Profile</a>
        </div>
    </div>
</body>
</html>
