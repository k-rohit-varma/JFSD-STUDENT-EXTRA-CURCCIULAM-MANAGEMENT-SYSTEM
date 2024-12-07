<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contact Us</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f9fc;
            color: #333;
            margin: 0;
            padding: 0;
        }
        .contact-container {
            max-width: 800px;
            margin: 50px auto;
            padding: 20px;
            background-color: #fff;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
        }
        .contact-title {
            font-size: 2em;
            color: #007BFF;
            text-align: center;
            margin-bottom: 20px;
        }
        .contact-content {
            font-size: 1.2em;
            text-align: center;
            margin-bottom: 30px;
        }
        .contact-form {
            display: flex;
            flex-direction: column;
            gap: 15px;
        }
        .contact-form label {
            font-weight: bold;
        }
        .contact-form input,
        .contact-form textarea,
        .contact-form button {
            font-size: 1em;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
            width: 100%;
        }
        .contact-form textarea {
            resize: vertical;
        }
        .contact-form button {
            background-color: #007BFF;
            color: #fff;
            border: none;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }
        .contact-form button:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <div class="contact-container">
        <h1 class="contact-title">Contact Us</h1>
        <p class="contact-content">
            Have questions, feedback, or need support? We’d love to hear from you! Please fill out the form below, and our team will get back to you as soon as possible.
        </p>
        <form class="contact-form" action="submit_form.php" method="POST">
            <label for="name">Your Name</label>
            <input type="text" id="name" name="name" placeholder="Enter your name" required>

            <label for="email">Your Email</label>
            <input type="email" id="email" name="email" placeholder="Enter your email address" required>

            <label for="message">Your Message</label>
            <textarea id="message" name="message" placeholder="Enter your message" rows="5" required></textarea>

            <button type="submit">Send Message</button>
        </form>
    </div>
</body>
</html>
