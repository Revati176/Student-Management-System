<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Registration Complete</title>
<style>
    body, html {
        margin: 0;
        padding: 0;
        height: 100%;
        font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
        background: #f8f8f8; /* fallback background */
    }

    .background {
        background-image: url('images/registration_complete.jpg'); /* your image path */
        background-size: cover;
        background-position: center;
        background-repeat: no-repeat;
        height: 100%;
        display: flex;
        justify-content: center;
        align-items: center;
    }

    /* Centered message block */
    .message-block {
        background-color: rgba(255, 255, 255, 0.85); /* off-white semi-transparent */
        padding: 50px 80px;
        border-radius: 12px;
        text-align: center;
        box-shadow: 0 8px 25px rgba(0,0,0,0.2);
    }

    .message-block h2 {
        color: #0d47a1;
        font-size: 48px;
        margin-bottom: 20px;
    }

    .message-block h3 {
        color: #333;
        font-size: 32px;
    }
</style>
</head>
<body>

<div class="background">
    <div class="message-block">
        <h2>Registration Complete</h2>
        <h3>Thank You...!!!</h3>
        <a href="comreg">Home</a>
    </div>
</div>

</body>
</html>
