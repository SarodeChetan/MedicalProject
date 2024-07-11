<%@ page import="Model.MedicalDTO" %>
<%@ page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Update Product</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
</head>
<body>

    <div class="container">
        <div class="row">
            <h1 align="center">Medical Store</h1>
        </div>
        <hr>
        <div class="row">
            <h2 align="center">Update Product</h2>
        </div>
    </div>
    <hr>
    <div class="row">
        <%
            ArrayList<MedicalDTO> productList = (ArrayList<MedicalDTO>) request.getAttribute("productList");
            if (productList != null) {
                for (MedicalDTO product : productList) {
                   int productId=product.getProductId();
                    String productName = product.getProductName();
                    String productMfgName = product.getManufactureName();
                    int productQty = product.getQty();
                    double productPrice = product.getPrice();
                    String productType = product.getProductType();
                    String mfgDate = product.getMfgDate();
                    String expDate = product.getExpDate();
                    String imgUrl=product.getImageUrl();
        %>
        <form id="productForm" action="updateproductlink" method="get">
           <div class="form-group">
                <input type="hidden" name="productid" id="productId" class="form-control" value="<%= productId %>" readonly="readonly"/>
            </div>
            <div class="form-group">
                <label>ENTER PRODUCT NAME</label>
                <input type="text" name="name" id="productName" class="form-control" value="<%= productName %>"/>
            </div>
            <div class="form-group">
                <label>ENTER MANUFACTURER NAME</label>
                <input type="text" name="mfgName" id="productMfgName" class="form-control" value="<%= productMfgName %>"/>
            </div>
            <div class="form-group">
                <label>ENTER QUANTITY</label>
                <input type="text" name="qty" id="productQty" class="form-control" value="<%= productQty %>"/>
            </div>
            <div class="form-group">
                <label>ENTER PRODUCT PRICE</label>
                <input type="text" name="price" id="productPrice" class="form-control" value="<%= productPrice %>"/>
            </div>
            <div class="form-group">
                <label>ENTER MFG DATE</label>
                <input type="date" name="mfgdate" id="mfgDate" class="form-control" value="<%= mfgDate %>"/>
            </div>
            <div class="form-group">
                <label>ENTER EXP DATE</label>
                <input type="date" name="expdate" id="expDate" class="form-control" value="<%= expDate %>"/>
            </div>
            <div class="form-group">
                <label>PRODUCT TYPE</label>
                <input type="radio" name="MedicineType" value="Medicine" class="form-check-input" <%= productType.equals("Medicine") %> />Medicine
                <input type="radio" name="MedicineType" value="Drinks" class="form-check-input" <%= productType.equals("Drinks")  %> />Drinks
                <input type="radio" name="MedicineType" value="Ayurvedic" class="form-check-input" <%= productType.equals("Ayurvedic")%> />Ayurvedic
                <input type="radio" name="MedicineType" value="Ortho" class="form-check-input" <%= productType.equals("Ortho") %> />Ortho
                <input type="radio" name="MedicineType" value="Syrup" class="form-check-input" <%= productType.equals("Syrup") %> />Syrup
            </div>
            <div class="form-group">
                <label>ENTER IMEGE URL</label>
                <input type="text" name="imgurl" id="imgUrl" class="form-control" value="<%= imgUrl %>"/>
            </div>
            <div class="form-group">
                <input type="submit" value="UPDATE PRODUCT" class="btn btn-success"/>
            </div>
        </form>
        <%
            }
        }
        %>
    </div>

    <script>
        document.getElementById("productForm").addEventListener("submit", function(event) {
            event.preventDefault();

            var productName = document.getElementById("productName").value;
            var productMfgName = document.getElementById("productMfgName").value;
            var productQty = document.getElementById("productQty").value;
            var productPrice = document.getElementById("productPrice").value;
            var productType = document.querySelector('input[name="MedicineType"]:checked').value;

            if (productName.trim() === "") {
                alert("Please enter a valid product name.");
                return;
            }

            if (productMfgName.trim() === "") {
                alert("Please enter a valid manufacturer name.");
                return;
            }

            if (isNaN(productQty) || productQty.trim() === "") {
                alert("Please enter a valid quantity.");
                return;
            }

            if (isNaN(productPrice) || productPrice.trim() === "") {
                alert("Please enter a valid product price.");
                return;
            }

            if (!productType) {
                alert("Please select a product type.");
                return;
            }

            // If all validations pass, submit the form
            this.submit();
        });
    </script>
</body>
</html>
