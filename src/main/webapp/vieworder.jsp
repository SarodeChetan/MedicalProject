<%@page import="java.util.ArrayList"%>
<%@page import="Model.MedicalDTO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>ORDER LIST</title>
</head>
<body>
    <%
        List<MedicalDTO> orderList = (ArrayList<MedicalDTO>) request.getAttribute("orderlist");
    %>

    <div><h1>OrderList : </h1></div>
    <hr>

    <table border="2px">
        <thead>
            <tr>
                <th>ORD NUMBER</th>
                <th>PRODUCT NAME</th>
                <th>MANUFACTURE NAME</th>
                <th>PRODUCT PRICE</th>
                <th>PRODUCT TYPE</th>
                <th>ORDERED QUANTITY</th>
                <th>ORDER DATE</th>
                <th>PAYMENT MODE</th>
            </tr>
        </thead>
        <tbody>
            <% for (MedicalDTO orderProduct : orderList) { %>
            <tr>
                <td><%= orderProduct.getOrdNo() %></td>
                <td><%= orderProduct.getProductName() %></td>
                <td><%= orderProduct.getManufactureName() %></td>
                <td><%= orderProduct.getPrice() %></td>
                <td><%= orderProduct.getProductType() %></td>
                <td><%= orderProduct.getOrdQty() %></td>
                <td><%= orderProduct.getOrdDate() %></td>
                <td><%= orderProduct.getPaymentMode() %></td>
            </tr>
            <% } %>
        </tbody>
    </table>
</body>
</html>
