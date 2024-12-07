<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="jakarta.tags.core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Event</title>
<style>
    /* General Reset */
    body {
        font-family: Arial, sans-serif;
        background-color: #f4f7fa; /* Light background color */
        margin: 0;
        padding: 0;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        color: #333;
    }

    /* Container Styling */
    h2 {
        text-align: center;
        color: #007bff;
        margin-bottom: 20px;
        font-size: 2em;
    }

    form {
        background-color: #fff;
        border-radius: 8px;
        padding: 25px;
        box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
        width: 100%;
        max-width: 500px;
        text-align: left;
    }

    .form-group {
        margin-bottom: 20px;
    }

    label {
        font-size: 14px;
        font-weight: bold;
        color: #555;
    }

    input[type="text"],
    input[type="date"],
    input[type="time"],
    input[type="radio"] {
        width: 100%;
        padding: 10px;
        margin-top: 5px;
        margin-bottom: 10px;
        border: 1px solid #ccc;
        border-radius: 4px;
        font-size: 14px;
        background-color: #f7f9fc;
    }

    input[type="radio"] {
        width: auto;
    }

    input[type="text"]:focus,
    input[type="date"]:focus,
    input[type="time"]:focus {
        outline: none;
        border-color: #007bff;
        box-shadow: 0 0 8px rgba(0, 123, 255, 0.3);
    }

    input[type="submit"] {
        background-color: #007bff;
        color: #fff;
        border: none;
        border-radius: 6px;
        padding: 12px 20px;
        font-size: 16px;
        cursor: pointer;
        width: 100%;
        transition: background-color 0.3s ease;
    }

    input[type="submit"]:hover {
        background-color: #0056b3;
    }

</style>
</head>
<body>
    
    <form method="post" action="editEventSuccess">
        <input type="hidden" name="ename" value="${event.name}">
        
        <div class="form-group">
            <label>Edit Branch:</label>
            <input type="text" name="ebranch" value="${event.branch}">
        </div>

        <div class="form-group">
            <label>Edit Date:</label>
            <input type="date" name="edate" value="${event.date}">
        </div>

        <div class="form-group">
            <label>Edit Time:</label>
            <input type="time" name="etime" value="${event.time}">
        </div>

        <div class="form-group">
            <label>Edit End Time:</label>
            <input type="time" name="endtime" value="${event.endtime}">
        </div>

        <div class="form-group">
            <label>Edit Venue:</label>
            <input type="text" name="evenue" value="${event.venue}">
        </div>

        <div class="form-group">
            <label>Edit Type:</label><br>
            <input type="radio" name="etype" value="CSE" id="CSE"> CSE
            <input type="radio" name="etype" value="ECE" id="ECE"> ECE
            <input type="radio" name="etype" value="EEE" id="EEE"> EEE
        </div>

        <div class="form-group">
            <label>Edit Points:</label>
            <input type="text" name="epoints" value="${event.points}">
        </div>

        <div class="form-group">
            <label>Edit Count:</label>
            <input type="text" name="ecount" value="${event.maxCount}">
        </div>

        <div class="form-group">
            <input type="submit" value="Save">
        </div>
    </form>
</body>
</html>
