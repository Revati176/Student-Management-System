<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>CJC Institute</title>

<style>
    body {
        margin: 0;
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        background: linear-gradient(135deg, #e3f2fd, #ffffff);
        color: #333;
    }

    /* Header */
    .header {
        padding: 40px 20px;
        text-align: center;
        background: #0d47a1;
        color: white;
    }

    .header h2 {
        margin: 0;
        font-size: 36px;
        letter-spacing: 1px;
    }

    /* Hero section */
    .hero {
        display: flex;
        justify-content: center;
        align-items: center;
        padding: 40px 20px;
    }

    .hero img {
        max-width: 80%;
        height: auto;
        border-radius: 16px;
        box-shadow: 0 10px 25px rgba(0,0,0,0.2);
    }

    /* Main blocks */
    .container {
        display: flex;
        justify-content: center;
        gap: 30px;
        padding: 50px 20px;
        flex-wrap: wrap;
    }

    .card {
        background: white;
        width: 300px;
        border-radius: 18px;
        padding: 25px;
        box-shadow: 0 12px 30px rgba(0,0,0,0.12);
        transition: transform 0.3s ease;
    }

    .card:hover {
        transform: translateY(-8px);
    }

    .card h3 {
        margin-top: 0;
        font-size: 22px;
        color: #0d47a1;
        border-bottom: 2px solid #e3f2fd;
        padding-bottom: 10px;
    }

    /* Inner small links */
    .inner-links {
        margin-top: 15px;
    }

    .inner-links a {
        display: block;
        padding: 10px 14px;
        margin-bottom: 10px;
        text-decoration: none;
        background: #f5f7fa;
        color: #333;
        border-radius: 10px;
        font-size: 15px;
        transition: background 0.3s ease, color 0.3s ease;
    }

    .inner-links a:hover {
        background: #0d47a1;
        color: white;
    }

    /* Footer */
    .footer {
        text-align: center;
        padding: 20px;
        background: #f1f1f1;
        font-size: 14px;
        color: #666;
    }
</style>
</head>

<body>

<div class="header">
    <h2>Welcome to ABC Institute</h2>
</div>

<div class="hero">
    <!-- Replace src with your image path -->
    <img src="images/displayimg.jpeg" alt="Learning Technology">
</div>

<div class="container">

    <!-- Admin Block -->
    <div class="card">
        <h3>Administration</h3>
        <div class="inner-links">
            <a href="adminlogin">Admin Login</a>
            <a href="studregister">Student Registration</a>
          
        </div>
    </div>

    <!-- Institute Block -->
    <div class="card">
        <h3>About Batches</h3>
        <div class="inner-links">
          
            <a href="aboutbatch">Batches</a>
          
        </div>
    </div>

    <!-- Contact Block -->
    <div class="card">
        <h3>Contact & Support</h3>
        <div class="inner-links">
            <a href="contact">Contact Us</a>
          
            <a href="#">Location</a>
        </div>
    </div>

</div>

<!-- <div class="footer">
    © 2025 ABC Institute | All Rights Reserved
</div>
 -->
</body>
</html>
