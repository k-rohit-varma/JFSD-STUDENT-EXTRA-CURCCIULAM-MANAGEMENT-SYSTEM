<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Make Event Organizer</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f0f8ff;
        margin: 0;
        padding: 0;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
    }

    .form-container {
        background-color: #ffffff;
        padding: 30px;
        border-radius: 10px;
        box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2);
        width: 100%;
        max-width: 400px;
    }

    h1 {
        text-align: center;
        color: #007bff;
        margin-bottom: 20px;
    }

    label {
        display: block;
        font-weight: bold;
        margin-bottom: 5px;
        color: #333;
    }

    input[type="text"],
    input[type="password"],
    input[type="email"],
    input[type="tel"] {
        width: 100%;
        padding: 10px;
        margin-bottom: 20px;
        border: 1px solid #ccc;
        border-radius: 5px;
        font-size: 14px;
        box-sizing: border-box;
    }

    input:focus {
        border-color: #007bff;
        outline: none;
        box-shadow: 0 0 5px rgba(0, 123, 255, 0.5);
    }

    .submit-button {
        background-color: #007bff;
        color: #fff;
        padding: 10px 15px;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        font-size: 16px;
        width: 100%;
    }

    .submit-button:hover {
        background-color: #0056b3;
    }

    .error-message {
        color: red;
        font-size: 13px;
        margin-bottom: 10px;
        display: none;
    }
</style>
</head>
<body>

<div class="form-container">
    <h1>Make Event Organizer</h1>
    <form method="post" action="saveeventorganizer" onsubmit="return validateForm()">
        <label>Enter ID:</label>
        <input type="text" name="oid" required>

        <label>Enter Name:</label>
        <input type="text" name="oname" required>

        <label>Enter Email:</label>
        <input type="email" name="oemail" required>

        <label>Enter Phone Number:</label>
        <input type="tel" name="opn" maxlength="10" required>

        <label>Enter Gender:</label>
        <input type="text" name="ogender" required>

        <label>Enter Password:</label>
        <input type="password" name="opwd" required>

        <p class="error-message" id="error-message"></p>

        <input type="submit" value="Submit" class="submit-button">
    </form>
</div>

<script>
    function validateForm() {
        const phone = document.querySelector('input[name="opn"]').value;
        const password = document.querySelector('input[name="opwd"]').value;
        const email = document.querySelector('input[name="oemail"]').value;
        const errorMessage = document.getElementById('error-message');

        const phoneRegex = /^[0-9]{10}$/;
        const emailRegex = /^[^@\s]+@[^@\s]+\.[^@\s]+$/;
        const passwordRegex = /^(?=.*[!@#$%^&*(),.?":{}|<>])[A-Za-z\d!@#$%^&*(),.?":{}|<>]{8,}$/;

        if (!phoneRegex.test(phone)) {
            errorMessage.textContent = "Phone number must be exactly 10 digits.";
            errorMessage.style.display = "block";
            return false;
        }

        if (!emailRegex.test(email)) {
            errorMessage.textContent = "Please enter a valid email address.";
            errorMessage.style.display = "block";
            return false;
        }

        if (!passwordRegex.test(password)) {
            errorMessage.textContent = "Password must be at least 8 characters long and include at least one special character.";
            errorMessage.style.display = "block";
            return false;
        }

        errorMessage.style.display = "none";
        return true;
    }
</script>

</body>
</html>
