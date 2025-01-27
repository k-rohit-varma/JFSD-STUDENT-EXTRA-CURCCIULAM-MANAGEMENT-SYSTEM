<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="jakarta.tags.core" prefix="c"%>    

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Student Home</title>
    <!-- Link to external CSS file -->
    <link rel="stylesheet" type="text/css" href="css/studenthome.css">
</head>
<body>
    <h1>Student Home Page</h1>
    <div class="profile">
        <p>ID: <c:out value="${id}"></c:out></p>
    </div>

    <a href="/">Logout</a>
    <br/><br/>

    <a href="showAllEventForStudent?id=${id}">View all events</a><br/><br/>

    <a href="Events?id=${id}">Registered events</a>
    <br/>
    
    <a href="StudentProfile?id=${id}">My Profile</a>
</body>
</html>
