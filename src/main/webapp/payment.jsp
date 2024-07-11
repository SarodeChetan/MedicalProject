<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Payment and Place Order</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f5f5f5;
            margin: 0;
            padding: 20px;
        }

        form {
            max-width: 400px;
            margin: 0 auto;
            padding: 20px;
            background-color: #fff;
            border: 1px solid #e0e0e0;
            border-radius: 4px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }

        h3 {
            margin-top: 0;
        }

        input[type="radio"] {
            margin-right: 10px;
        }

        button[type="submit"] {
            background-color: #4CAF50;
            color: white;
            padding: 8px 16px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            border-radius: 4px;
            cursor: pointer;
            border: none;
            font-size: 14px;
            transition: background-color 0.3s;
            margin-top: 10px;
        }

        button[type="submit"]:hover {
            background-color: #45a049;
        }

        .error-message {
            color: red;
            margin-top: 5px;
        }
    </style>
    <script>
        function validateForm() {
            var paymentMethods = document.getElementsByName("paymentMethod");
            var selectedPaymentMethod = false;

            for (var i = 0; i < paymentMethods.length; i++) {
                if (paymentMethods[i].checked) {
                    selectedPaymentMethod = true;
                    break;
                }
            }

            if (!selectedPaymentMethod) {
                var errorMessage = document.getElementById("error-message");
                errorMessage.textContent = "Please select a payment method.";
                return false;
            }

            return true;
        }
    </script>
</head>
<body>
<% 
String orderId = request.getParameter("order_id");

String[] selectedProductIds = request.getParameterValues("selectedProducts");

%>
<form method="get" action="placeorderlink" onsubmit="return validateForm();">
    <h3>Select Payment Method:</h3>
    <input type="radio" id="cash" name="paymentMethod" value="Cash">
    <label for="cash">Payment By Cash</label><br>
    <input type="radio" id="debitCard" name="paymentMethod" value="DebitCard">
    <label for="debitCard">Payment By Debit Card</label><br>
    <input type="radio" id="creditCard" name="paymentMethod" value="CreditCard">
    <label for="creditCard">Payment By Credit Card</label><br>
    <input type="radio" id="upi" name="paymentMethod" value="UPI">
    <label for="upi">Payment By UPI</label><br><br>
    
    <input type="hidden" name="order_id" value="<%= orderId %>">
    <% for (String productId : selectedProductIds) { %>
        <input type="hidden" name="product_ids" value="<%= productId %>">
       	
    <% } %>
    
    <input type="hidden" name="selected_payment_method" id="selected_payment_method">

    <button type="submit">Place Order</button>

    <div id="error-message" class="error-message"></div>
</form>

<script>
    function validateForm() {
        var selectedPaymentMethod = document.querySelector('input[name="paymentMethod"]:checked').value;
        document.getElementById('selected_payment_method').value = selectedPaymentMethod;
        return true; // or return false if validation fails
    }
</script>
</body>
</html>
