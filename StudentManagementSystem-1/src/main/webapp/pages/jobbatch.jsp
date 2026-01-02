<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View Batches</title>

<style>
    body {
        font-family: Arial, Helvetica, sans-serif;
        background-color: #e9eef3;   /* Page background */
        margin: 0;
        padding: 20px;
    }
    
     h1 {
        text-align: center;
        color: #2c3e50;
        margin-bottom: 30px;
    }
    

    .container {
        max-width: 900px;
        margin: auto;
    }

    .batch-card {
        padding: 20px;
        margin-bottom: 20px;
        border-radius: 10px;
        box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
        color: #2c3e50;
    }

    /* Different background colors */
    .java {
        background-color: #dff3ff;
    }

    .python {
        background-color: #e8f8f0;
    }

    .analyst {
        background-color: #fff3cd;
    }

    .datascience {
        background-color: #f3e8ff;
    }

    .cpp {
        background-color: #fdecea;
    }

    .batch-card h1 {
        margin-top: 0;
        font-size: 24px;
    }

    .batch-details h3 {
        margin: 6px 0;
        font-size: 16px;
        font-weight: normal;
    }

    .label {
        font-weight: bold;
    }
</style>
</head>

<body>

<h1>View Jobs Oriented Batches</h1>

<div class="container">

    <div class="batch-card java">
        <h1>Full Stack Java</h1>
        <div class="batch-details">
            <h3><span class="label">Duration:</span> 6 Months</h3>
            <h3><span class="label">Mode:</span> Online / Offline</h3>
            <h3><span class="label">Timing:</span> Morning / Evening</h3>
        </div>
    </div>

    <div class="batch-card python">
        <h1>Full Stack Python</h1>
        <div class="batch-details">
            <h3><span class="label">Duration:</span> 6 Months</h3>
            <h3><span class="label">Mode:</span> Online</h3>
            <h3><span class="label">Timing:</span> Evening</h3>
        </div>
    </div>

    <div class="batch-card analyst">
        <h1>Data Analyst</h1>
        <div class="batch-details">
            <h3><span class="label">Duration:</span> 4 Months</h3>
            <h3><span class="label">Mode:</span> Online</h3>
            <h3><span class="label">Timing:</span> Weekend</h3>
        </div>
    </div>

    <div class="batch-card datascience">
        <h1>Data Science</h1>
        <div class="batch-details">
            <h3><span class="label">Duration:</span> 8 Months</h3>
            <h3><span class="label">Mode:</span> Online / Offline</h3>
            <h3><span class="label">Timing:</span> Evening</h3>
        </div>
    </div>

    <div class="batch-card cpp">
        <h1>Full Stack C++</h1>
        <div class="batch-details">
            <h3><span class="label">Duration:</span> 5 Months</h3>
            <h3><span class="label">Mode:</span> Offline</h3>
            <h3><span class="label">Timing:</span> Morning</h3>
        </div>
    </div>

</div>

</body>
</html>
