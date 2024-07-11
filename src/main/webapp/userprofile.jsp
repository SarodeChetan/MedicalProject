<!DOCTYPE html>
<%@page import="java.util.ArrayList"%>
<%@page import="Model.UserDTO"%>
<%@page import="java.util.List"%>
<html>
<head>
    <title>User Profile</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }

        .profile-container {
            width: 80%;
            margin: 40px auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        .profile-header {
            text-align: center;
            margin-bottom: 20px;
        }

        .profile-header h1 {
            font-size: 36px;
            color: #333;
        }

        .profile-info {
            margin-bottom: 30px;
            padding: 0 20px;
        }

        .profile-info h2 {
            font-size: 24px;
            color: #333;
            margin-bottom: 10px;
        }

        .profile-info p {
            font-size: 18px;
            color: #555;
            margin-bottom: 5px;
        }

        .profile-options {
            text-align: center;
        }

        .profile-options ul {
            list-style: none;
            padding: 0;
        }

        .profile-options li {
            margin-bottom: 10px;
        }

        .profile-options a {
            text-decoration: none;
            color: #007bff;
            font-weight: bold;
            transition: color 0.3s;
        }

        .profile-options a:hover {
            color: #0056b3;
        }
    </style>
</head>
<body>
<% List<UserDTO>user=(ArrayList<UserDTO>)request.getAttribute("user"); %>
    <div class="profile-container">
        <div class="profile-header">
            <h1>User Profile</h1>
        </div>
        <% for(UserDTO u:user){ %>
        <h2>HELLO  <%=u.getName() %>!!</h2>
        <div class="profile-info">
            <h4>USERNAME: <%=u.getUsername() %></h2>
       		     <p><strong>Email:</strong> <%= u.getEmailId() %></p>
            <p><strong>Contact Number:</strong> <%= u.getContactNumber() %></p>
        </div>
        <div class="profile-options">
            <ul>
                <li><a href="changepassword.jsp">Change Password</a></li>
                <li><a href="logoutlink">Logout</a></li>
                <li><a href="editinfolink">Edit Info</a></li>
            </ul>
        </div>
    </div>
    <%} %>
</body>
</html>
