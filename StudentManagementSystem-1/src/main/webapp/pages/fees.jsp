<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Fees</title>

<style>
    body {
        margin: 0;
        font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
        background: linear-gradient(to right, #0d47a1, #1976d2);
        min-height: 100vh;
        display: flex;
        justify-content: center;
        align-items: center;
    }

    .form-container {
        background: #ffffff;
        padding: 30px;
        width: 450px;
        border-radius: 12px;
        box-shadow: 0 12px 30px rgba(0,0,0,0.3);
    }

    .form-container h2 {
        text-align: center;
        margin-bottom: 25px;
        color: #0d47a1;
    }

    .form-group {
        margin-bottom: 15px;
    }

    .form-group label {
        display: block;
        margin-bottom: 6px;
        font-weight: 600;
        font-size: 14px;
    }

    .form-group input {
        width: 100%;
        padding: 10px;
        border-radius: 6px;
        border: 1px solid #ccc;
        font-size: 14px;
    }

    .form-group input[readonly] {
        background: #f5f5f5;
        cursor: not-allowed;
    }

    .btn-submit {
        width: 100%;
        padding: 12px;
        background: #0d47a1;
        color: white;
        border: none;
        border-radius: 6px;
        font-size: 16px;
        font-weight: bold;
        cursor: pointer;
        margin-top: 15px;
    }

    .btn-submit:hover {
        background: #08306b;
    }
</style>
</head>

<body>

<div class="form-container">
    <h2>Update Student Fees</h2>



        <!-- Hidden ID -->
        <input type="hidden" name="id" value="${students.id}">

        <div class="form-group">
            <label>Name</label>
            <input type="text" value="${students.name}" readonly>
        </div>

        <div class="form-group">
            <label>Email</label>
            <input type="text" value="${students.email}" readonly>
        </div>

        <div class="form-group">
            <label>Mobile</label>
            <input type="text" value="${students.mobile}" readonly>
        </div>

        <div class="form-group">
            <label>Course</label>
            <input type="text" value="${students.course}" readonly>
        </div>

        <div class="form-group">
            <label>Batch Mode</label>
            <input type="text" value="${students.batchMode}" readonly>
        </div>

        <div class="form-group">
            <label>Batch Number</label>
            <input type="text" value="${students.batchNumber}" readonly>
        </div>

      <form action="updatefees">
      
       <!-- Hidden ID -->
        <input type="hidden" name="id" value="${students.id}">
      
      
       <div class="form-group">
    <label>Payment Status</label>
    <select name="paymentStatus" required>
        <option value="">Select Status</option>

        <option value="Paid"
            ${students.paymentStatus == 'Paid' ? 'selected' : ''}>
            Paid
        </option>

        <option value="Pending"
            ${students.paymentStatus == 'Pending' ? 'selected' : ''}>
            Pending
        </option>
    </select>
</div>

        <div class="form-group">
            <label>Fees Paid</label>
            <input type="text" name="feesPaid" value="${students.feesPaid}">
        </div>

        <button type="submit" class="btn-submit">Update Fees</button>
      
      </form>
</div>

</body>
</html>
