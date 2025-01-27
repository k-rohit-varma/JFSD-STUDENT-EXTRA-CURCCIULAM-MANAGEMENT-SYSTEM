<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit My Profile</title>
<style>
    body {
        font-family: 'Arial', sans-serif;
        margin: 0;
        padding: 0;
        background-color: #f7f9fc;
        color: #333;
    }

    h1 {
        text-align: center;
        margin-top: 20px;
        font-size: 28px;
        color: #2c3e50;
        font-weight: bold;
    }

    .form-container {
        max-width: 500px;
        margin: 40px auto;
        padding: 20px;
        background-color: #ffffff;
        border-radius: 8px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        border: 1px solid #dfe4ec;
    }

    label {
        display: block;
        margin-bottom: 5px;
        font-weight: bold;
        color: #34495e;
    }

    input[type="text"], input[type="email"], input[type="submit"] {
        width: calc(100% - 20px);
        padding: 10px;
        margin-bottom: 15px;
        border: 1px solid #d1d9e6;
        border-radius: 5px;
        font-size: 16px;
        color: #333;
        box-sizing: border-box;
    }

    input[type="text"]:focus, input[type="email"]:focus {
        border-color: #3498db;
        outline: none;
        box-shadow: 0 0 5px rgba(52, 152, 219, 0.3);
    }

    input[type="submit"] {
        background-color: #3498db;
        color: #fff;
        border: none;
        cursor: pointer;
        transition: background-color 0.3s ease;
        font-size: 16px;
    }

    input[type="submit"]:hover {
        background-color: #2c82c9;
    }
</style>
</head>
<body>
    <h1>Edit My Profile</h1>
    <div class="form-container">
        <form method="post" action="getEditedDetails">
            <input type="hidden" value="${student.id}" name="sid">
            
            <label for="sname">Name:</label>
            <input type="text" id="sname" name="sname" value="${student.name}">
            
            <label for="semail">Email:</label>
            <input type="email" id="semail" name="semail" value="${student.email}">
            
            <label for="sphNumber">Phone Number:</label>
            <input type="text" id="sphNumber" name="sphNumber" value="${student.phNumber}">
            
            <label for="sgender">Gender:</label>
            <input type="text" id="sgender" name="sgender" value="${student.gender}">
            <input type="hidden"  value="${student.points}" name="spoints" >
           	<input type="hidden"  value="${student.password}" name="spassword" >
            <input type="submit" value="Update Profile">
        </form>
    </div>
</body>
</html>
