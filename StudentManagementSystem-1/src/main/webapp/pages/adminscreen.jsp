<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student Management</title>

<style>
    /* Full-page background */
    body {
        margin: 0;
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        height: 100vh;
        background: url('images/adminscreenimg.jpeg') no-repeat center center fixed;
        background-size: cover;
        display: flex;
        justify-content: center;
        align-items: center;
    }

    /* Overlay for better readability */
    .overlay {
        background: rgba(0,0,0,0.6);
        width: 100%;
        height: 100%;
        position: absolute;
        top: 0;
        left: 0;
    }

    /* Container for blocks */
    .container {
        position: relative;
        display: flex;
        gap: 50px;
        z-index: 1;
        flex-wrap: wrap;
        justify-content: center;
    }

    /* Card style */
    .card {
        background: rgba(255,255,255,0.95);
        width: 300px;
        padding: 30px 20px;
        border-radius: 20px;
        text-align: center;
        box-shadow: 0 15px 30px rgba(0,0,0,0.2);
        transition: transform 0.3s ease, box-shadow 0.3s ease;
    }

    .card:hover {
        transform: translateY(-10px);
        box-shadow: 0 25px 45px rgba(0,0,0,0.3);
    }

    .card h3 {
        margin-bottom: 10px;
        font-size: 24px;
        color: #0d47a1;
    }

    .card p {
        font-size: 16px;
        color: #555;
        margin-bottom: 20px;
    }

    .card a {
        display: inline-block;
        text-decoration: none;
        padding: 12px 25px;
        background: #0d47a1;
        color: white;
        border-radius: 12px;
        font-size: 16px;
        transition: background 0.3s ease;
    }

    .card a:hover {
        background: #06418c;
    }

    /* Responsive */
    @media (max-width: 700px) {
        .container {
            flex-direction: column;
            gap: 30px;
        }
    }
</style>
</head>

<body>
    <div class="overlay"></div>

    <div class="container">
        <!-- Add Student -->
        <div class="card">
            <h3>Add Student</h3>
            <p>Create new student record</p>
            <a href="/addStudent">Open</a>
        </div>

        <!-- View Student -->
        <div class="card">
            <h3>View Student</h3>
            <p>View, Edit & Delete student data</p>
            <a href="/viewStudents">Open</a>
        </div>
    </div>
</body>
</html>
