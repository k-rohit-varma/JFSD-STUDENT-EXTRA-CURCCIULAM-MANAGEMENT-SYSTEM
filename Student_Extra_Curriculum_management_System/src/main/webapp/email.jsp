<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Mail Sending</title>
    <style>
        /* General styles */
        body {
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
            background-color: #f0f8ff; /* Light blue background */
            color: #333; /* Dark text */
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            text-align: center;
        }

        h1 {
            color: #1e90ff; /* Dodger blue */
            font-size: 2em;
            margin-bottom: 30px;
        }

        /* Form container */
        form {
            background-color: #ffffff; /* White background */
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1); /* Subtle shadow */
            width: 400px;
            display: flex;
            flex-direction: column;
            gap: 15px;
        }

        /* Label styles */
        label {
            color: #1e90ff; /* Dodger blue text */
            font-size: 1.1em;
            margin-bottom: 5px;
            align-self: flex-start;
        }

        /* Input & textarea fields */
        input[type="text"], textarea {
            width: 100%;
            padding: 10px;
            border: 1px solid #ddd;
            border-radius: 5px;
            font-size: 1em;
        }

        /* Submit button */
        input[type="submit"] {
            background-color: #1e90ff; /* Dodger blue */
            color: white;
            padding: 10px 20px;
            font-size: 1.2em;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        input[type="submit"]:hover {
            background-color: #4682b4; /* Steel blue on hover */
        }

        /* Responsive design */
        @media (max-width: 600px) {
            form {
                width: 90%;
            }

            h1 {
                font-size: 1.5em;
            }
        }
    </style>
</head>
<body>
    <form method="post" action="sending">
        <label>Send email to:</label>
        <input type="text" name="toEmail">
        <br/><br/>
        <label>Subject:</label>
        <textarea rows="2" cols="80" name="subject"></textarea>
        <br/><br/>
        <label>Message:</label>
        <textarea rows="5" cols="80" name="message"></textarea>
        <br/><br/>
        <input type="submit" value="Send">
    </form>
</body>
</html>
