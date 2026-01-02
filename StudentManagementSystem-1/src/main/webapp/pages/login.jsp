<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login | CJC Institute</title>

<style>
    * {
        box-sizing: border-box;
        font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
    }

    body {
        margin: 0;
        height: 100vh;
        background: #f4f6f9;
        display: flex;
        justify-content: center;
        align-items: center;
    }

    .login-container {
        width: 900px;
        height: 480px;
        background: #ffffff;
        display: flex;
        border-radius: 16px;
        overflow: hidden;
        box-shadow: 0 15px 40px rgba(0,0,0,0.15);
    }

    /* LEFT IMAGE SECTION */
    .login-image {
        width: 50%;
        background: #eaf1ff;
        display: flex;
        justify-content: center;
        align-items: center;
        padding: 30px;
    }

    .login-image img {
        width: 100%;
        max-width: 380px;
    }

    /* RIGHT FORM SECTION */
    .login-form {
        width: 50%;
        padding: 50px 40px;
        display: flex;
        flex-direction: column;
        justify-content: center;
    }

    .login-form h2 {
        margin-bottom: 10px;
        color: #0d47a1;
    }

    .login-form p {
        margin-bottom: 30px;
        color: #666;
        font-size: 14px;
    }

    .login-form input {
        width: 100%;
        padding: 12px 14px;
        margin-bottom: 18px;
        border-radius: 8px;
        border: 1px solid #ccc;
        font-size: 15px;
    }

    .login-form input:focus {
        outline: none;
        border-color: #0d47a1;
    }

    .login-form button {
        padding: 12px;
        background: #0d47a1;
        color: white;
        border: none;
        border-radius: 8px;
        font-size: 16px;
        cursor: pointer;
        transition: background 0.3s;
    }

    .login-form button:hover {
        background: #08306b;
    }

    /* RESPONSIVE */
    @media (max-width: 768px) {
        .login-container {
            flex-direction: column;
            width: 95%;
            height: auto;
        }

        .login-image, .login-form {
            width: 100%;
        }

        .login-image img {
            max-width: 250px;
        }
    }
</style>
</head>

<body>

<div class="login-container">

    <!-- LEFT IMAGE -->
    <div class="login-image">
        <img src="images/loginimg.jpeg" alt="Login Illustration">
    </div>

    <!-- RIGHT FORM -->
    <div class="login-form">
        <h2>Welcome Back</h2>
        <p>Please login to your account</p>

        <form action="loginn" method="post">
            <input type="text" name="username" placeholder="Enter Username" required>
            <input type="password" name="password" placeholder="Enter Password" required>
            <button type="submit">Login</button>
        </form>
    </div>

</div>

</body>
</html>
