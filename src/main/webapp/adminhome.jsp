<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Admin Home</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f5f5f5;
        }
        header {
            background-color: gray;
            color: white;
            padding: 10px 0;
            text-align: left ;
        }
        section {
            background-color: white;
            padding: 20px;
            margin: 20px;
            border-radius: 5px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
        }
        h1, h2 {
            margin-top: 0;
        }
        footer {
            background-color: #333;
            color: white;
            text-align: center;
            padding: 10px 0;
            position:relative;
            bottom: 0;
            width: 100%;
        }
        a {
            color: #333;
            text-decoration: none;
            font-weight: bold;
        }
        a:hover {
            color: #666;
        }
        
        .dashboard-section {
    background-color: #fff;
    padding: 20px;
    margin: 20px;
    border-radius: 5px;
    box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
}

.dashboard-content {
    display: flex;
    justify-content: space-around;
    flex-wrap: wrap;
    margin-top: 20px;
}

.dashboard-card {
    background-color: #f5f5f5;
    padding: 15px;
    margin: 10px;
    border-radius: 5px;
    box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
    text-align: center;
    flex: 1;
    min-width: 200px;
}

.dashboard-card h3 {
    margin-top: 0;
    color: #333;
}

.dashboard-card p {
    font-size: 24px;
    font-weight: bold;
    color: #666;
}
        
    </style>
</head>
<body>
    <header>
        <h1>Welcome, Admin!</h1>
    </header>
    
    <section class="dashboard-section">
    <% int totalProducts=(int)request.getAttribute("totalProducts");  %>
    <% 	int totalOrders=(int)request.getAttribute("totalOrders"); %>
    <% double totalReveneu=(double)request.getAttribute("totalReveneu"); %>
    <h2>Dashboard</h2>
    <div class="dashboard-content">
        <div class="dashboard-card">
            <h3>Total Products</h3>
            <p><%= totalProducts %></p>
        </div>
        <div class="dashboard-card">
            <h3>Total Orders</h3>
            <p><%=totalOrders %></p>
        </div>
        <div class="dashboard-card">
            <h3>Revenue</h3>
            <p><%=totalReveneu %></p>
        </div>
    </div>
</section>
    
    
    <section>
        <h2>Manage Products</h2>
        <a href="manageproductslink">View/Edit Products</a>
    </section>
    
    <section>
        <h2>Orders</h2>
        <a href="fetchorderslink">View Orders</a>
    </section>
    
    <section>
        <h2>User Management</h2>
        <a href="getuserinfolink">Manage Users</a>
    </section>
    <br>
    <footer>
        <p>&copy; 2023 Medical E-commerce. All rights reserved.</p>
    </footer>
</body>
</html>
