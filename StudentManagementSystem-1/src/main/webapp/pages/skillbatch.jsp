<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Skills Oriented Batches</title>

<style>
    body {
        font-family: Arial, Helvetica, sans-serif;
        background-color: #eef2f7;
        margin: 0;
        padding: 20px;
    }

    h1 {
        text-align: center;
        color: #2c3e50;
        margin-bottom: 30px;
    }

    .container {
        max-width: 800px;
        margin: auto;
    }

    .skill-card {
        background-color: #ffffff;
        padding: 20px;
        margin-bottom: 20px;
        border-radius: 10px;
        box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
    }

    .skill-card h2 {
        margin-top: 0;
        color: #34495e;
    }

    .skill-details p {
        margin: 6px 0;
        color: #555;
        font-size: 16px;
    }

    /* Different background colors for each skill */
    .java { background-color: #dff3ff; }
    .mongo { background-color: #e8f8f0; }
    .powerbi { background-color: #fff3cd; }
    .cpp { background-color: #fdecea; }
    .micro { background-color: #f3e8ff; }
</style>
</head>

<body>

<h1>View Skills Oriented Batches</h1>

<div class="container">

    <div class="skill-card java">
        <h2>Java</h2>
        <div class="skill-details">
            <p><strong>Duration:</strong> 3 months</p>
            <p><strong>Timing:</strong> Evening (2 hr)</p>
        </div>
    </div>

    <div class="skill-card mongo">
        <h2>MongoDB</h2>
        <div class="skill-details">
            <p><strong>Duration:</strong> 4 months</p>
            <p><strong>Timing:</strong> Morning (2 hr)</p>
        </div>
    </div>

    <div class="skill-card powerbi">
        <h2>Power BI</h2>
        <div class="skill-details">
            <p><strong>Duration:</strong> 2 months</p>
            <p><strong>Timing:</strong> Evening (2 hr)</p>
        </div>
    </div>

    <div class="skill-card cpp">
        <h2>C++</h2>
        <div class="skill-details">
            <p><strong>Duration:</strong> 5 months</p>
            <p><strong>Timing:</strong> Evening (2 hr)</p>
        </div>
    </div>

    <div class="skill-card micro">
        <h2>Microservices</h2>
        <div class="skill-details">
            <p><strong>Duration:</strong> 3 months</p>
            <p><strong>Timing:</strong> Afternoon (2 hr)</p>
        </div>
    </div>

</div>

</body>
</html>
