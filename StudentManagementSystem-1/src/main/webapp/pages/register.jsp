<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Student Registration</title>
<style>
    /* Body Styling */
    body {
        margin: 0;
        padding: 0;
        font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
        background-color: #f8f8f5; /* Off-white background */
        display: flex;
        justify-content: center;
        align-items: center;
        min-height: 100vh;
    }

    /* Form Container */
    .registration-form {
        background-color: #ffffff;
        padding: 30px 40px;
        border-radius: 12px;
        box-shadow: 0 10px 25px rgba(0,0,0,0.15);
        width: 400px;
    }

    .registration-form h2 {
        text-align: center;
        color: #0d47a1;
        margin-bottom: 25px;
    }

    /* Form Labels */
    .registration-form label {
        display: block;
        margin-bottom: 6px;
        font-weight: 500;
        color: #333;
    }

    /* Form Inputs */
    .registration-form input[type="text"],
    .registration-form input[type="number"],
    .registration-form select {
        width: 100%;
        padding: 10px 12px;
        margin-bottom: 20px;
        border-radius: 6px;
        border: 1px solid #ccc;
        font-size: 14px;
        box-sizing: border-box;
    }

    /* Radio Groups */
    .radio-group {
        margin-bottom: 20px;
    }

    .radio-group label {
        margin-right: 15px;
        font-weight: 400;
    }

    .radio-group input[type="radio"] {
        margin-right: 6px;
    }

    /* Submit Button */
    .registration-form button {
        width: 100%;
        padding: 12px;
        background-color: #0d47a1;
        color: white;
        font-size: 16px;
        font-weight: bold;
        border: none;
        border-radius: 6px;
        cursor: pointer;
        transition: background 0.3s ease;
    }

    .registration-form button:hover {
        background-color: #08306b;
    }

</style>
</head>
<body>

<form class="registration-form" action="registers" method="post">
    <h2>Student Registration</h2>

    <label>Student Name</label>
    <input type="text" name="name" placeholder="Enter Your Name" required>

    <label>Email</label>
    <input type="text" name="email" placeholder="Enter Your Email" required>

    <label>Course</label>
    <select name="course" required>
        <option value="">Select Course</option>
        <option>Java Full Stack</option>
        <option>Python Full Stack</option>
        <option>Data Analytics</option>
        <option>Web Development</option>
    </select>

    <label>Username</label>
    <input type="text" name="username" placeholder="Username" required>

    <label>Password</label>
    <input type="text" name="password" placeholder="Password" required>

    <label>Mobile Number</label>
    <input type="text" name="mobile" placeholder="Mobile Number" required>

    <label>Batch Number</label>
    <select name="batchNumber" required>
        <option value="">Select Batch Number</option>
        <option>fdj196</option>
        <option>fdj197</option>
        <option>fdj198</option>
        <option>Reg196</option>
        <option>Reg197</option>
        <option>Reg198</option>
    </select>

    <label>Batch Mode</label>
    <div class="radio-group">
        <label><input type="radio" name="batchMode" value="Online" required> Online</label>
        <label><input type="radio" name="batchMode" value="Offline"> Offline</label>
    </div>

    <label>Fees Paid</label>
    <input type="number" name="feesPaid" placeholder="Paid amount">

    <label>Student Address</label>
    <input type="text" name="address" placeholder="Enter Your Address" required>

    <label>Payment Status</label>
    <div class="radio-group">
        <label><input type="radio" name="paymentStatus" value="Paid"> Paid</label>
        <label><input type="radio" name="paymentStatus" value="Pending"> Pending</label>
    </div>

    <button type="submit">Register</button>
</form>
<a href="streg"></a>
</body>
</html>
