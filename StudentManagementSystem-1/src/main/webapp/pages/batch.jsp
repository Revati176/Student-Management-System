<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Batches</title>

<style>
    * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
        font-family: Arial, Helvetica, sans-serif;
    }

    body {
        min-height: 100vh;
        background: 
            linear-gradient(rgba(0,0,0,0.6), rgba(0,0,0,0.6)),
            url("images/batchimg.jpeg"); /* <-- your image */
        background-size: cover;
        background-position: center;
        background-repeat: no-repeat;
        display: flex;
        justify-content: center;
        align-items: center;
    }

    .container {
        background: rgba(255, 255, 255, 0.92);
        padding: 40px 50px;
        border-radius: 12px;
        text-align: center;
        width: 420px;
        box-shadow: 0 15px 40px rgba(0, 0, 0, 0.35);
    }

    h2 {
        margin-bottom: 30px;
        color: #333;
        font-size: 28px;
    }

    .batch-links a {
        display: block;
        text-decoration: none;
        margin: 15px 0;
        padding: 14px;
        font-size: 18px;
        font-weight: bold;
        color: #ffffff;
        border-radius: 8px;
        transition: all 0.3s ease;
    }

    .batch-links a:first-child {
        background-color: #007bff;
    }

    .batch-links a:last-child {
        background-color: #28a745;
    }

    .batch-links a:hover {
        transform: translateY(-3px);
        opacity: 0.9;
        box-shadow: 0 8px 18px rgba(0, 0, 0, 0.25);
    }
</style>
</head>

<body>

<div class="container">
    <h2>Batches</h2>

    <div class="batch-links">
        <a href="jobs">Job Oriented Batches</a>
        <a href="skills">Skill Oriented Batches</a>
    </div>
</div>

</body>
</html>
