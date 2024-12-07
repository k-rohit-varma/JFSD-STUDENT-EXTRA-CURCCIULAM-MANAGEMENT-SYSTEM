<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Reset Password</title>
<style>
    /* General Reset */
    body {
        font-family: Arial, sans-serif;
        background-color: #f4f7fa;
        margin: 0;
        padding: 0;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        color: #333;
    }

    /* Container Styling */
    h1 {
        text-align: center;
        color: #007bff;
        margin-bottom: 30px;
        font-size: 2em;
    }

    form {
        background-color: #fff;
        border-radius: 8px;
        padding: 25px;
        box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
        width: 100%;
        max-width: 400px;
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

    input[type="password"] {
        width: 100%;
        padding: 10px;
        margin-top: 5px;
        border: 1px solid #ccc;
        border-radius: 4px;
        font-size: 14px;
        background-color: #f7f9fc;
    }

    input[type="password"]:focus {
        outline: none;
        border-color: #007bff;
        box-shadow: 0 0 8px rgba(0, 123, 255, 0.3);
    }

    button {
        width: 100%;
        padding: 12px;
        background-color: #007bff;
        color: #fff;
        border: none;
        border-radius: 4px;
        font-size: 16px;
        cursor: pointer;
        transition: background-color 0.3s ease;
    }

    button:hover {
        background-color: #0056b3;
    }

</style>
</head>
<body>

    <form method="post" action="/getNewPass">
        <input type="hidden" name="email" value="${email}">
        <div class="form-group">
            <label for="password">New Password:</label>
            <input type="password" id="password" name="password" required>
        </div>
        <button type="submit">Reset Password</button>
    </form>
</body>
</html>
