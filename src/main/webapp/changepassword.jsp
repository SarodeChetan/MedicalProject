<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Change Password</title>


</head>
<body>


<form name="passwordForm" action="changepasslink" method="get" onsubmit="return validateForm()">
    <label>ENTER OLD PASSWORD</label>
    <input type="text" name="oldpass"/>
    <label>ENTER NEW PASSWORD</label>
    <input type="password" name="newpass"/>
    <label>RE-ENTER NEW PASSWORD</label>
    <input type="password" name="renewpass"/>

    <input type="submit" value="Change Password"/>
</form>




<script>
function validateForm() {
    var oldPass = document.forms["passwordForm"]["oldpass"].value;
    var newPass = document.forms["passwordForm"]["newpass"].value;
    var renewPass = document.forms["passwordForm"]["renewpass"].value;
   
    
    if (oldPass === "" || newPass === "" || renewPass === "") {
        alert("All fields are required");
        return false;
    }
    
    if (newPass !== renewPass) {
        alert("New passwords do not match");
        return false;
    }
    
    
    return true;
}
</script>
</body>

</html>
