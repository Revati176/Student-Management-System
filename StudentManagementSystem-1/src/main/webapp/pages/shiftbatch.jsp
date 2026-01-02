<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Shift Batch</title>

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

    .table-form-container {
        background: #ffffff;
        padding: 30px;
        width: 520px;
        border-radius: 14px;
        box-shadow: 0 12px 30px rgba(0,0,0,0.3);
    }

    .table-form-container h2 {
        text-align: center;
        margin-bottom: 20px;
        color: #0d47a1;
    }

    table {
        width: 100%;
        border-collapse: collapse;
    }

    td {
        padding: 10px;
        font-size: 14px;
    }

    td:first-child {
        font-weight: bold;
        width: 40%;
    }

    input[type="text"], select {
        width: 100%;
        padding: 8px;
        border-radius: 6px;
        border: 1px solid #ccc;
        font-size: 14px;
    }

    input[readonly] {
        background: #f5f5f5;
        cursor: not-allowed;
    }

    .radio-group {
        display: flex;
        gap: 20px;
    }

    .radio-group label {
        font-weight: normal;
    }

    .btn-submit {
        width: 100%;
        padding: 12px;
        background: #0d47a1;
        color: white;
        border: none;
        border-radius: 8px;
        font-size: 16px;
        font-weight: bold;
        cursor: pointer;
        margin-top: 20px;
    }

    .btn-submit:hover {
        background: #08306b;
    }
</style>
</head>

<body>

<div class="table-form-container">
    <h2>Shift Student Batch</h2>

    <form action="updatebatch" method="post">

        <!-- Hidden ID -->
        <input type="hidden" name="id" value="${students.id}">

        <table>
            <tr>
                <td>Name</td>
                <td><input type="text" value="${students.name}" readonly></td>
            </tr>

            <tr>
                <td>Email</td>
                <td><input type="text" value="${students.email}" readonly></td>
            </tr>

            <tr>
                <td>Course</td>
                <td><input type="text" value="${students.course}" readonly></td>
            </tr>

            <tr>
                <td>Batch Number</td>
                <td>
                    <select name="batchNumber" required>
                        <option value="">Select Batch Number</option>
                        <option>FDJ196</option>
                        <option>FDJ197</option>
                        <option>FDJ198</option>
                        <option>REG196</option>
                        <option>REG197</option>
                        <option>REG198</option>
                    </select>
                </td>
            </tr>

            <tr>
                <td>Batch Mode</td>
                <td>
                    <div class="radio-group">
                        <label>
                            <input type="radio" name="batchMode" value="Online" required> Online
                        </label>
                        <label>
                            <input type="radio" name="batchMode" value="Offline"> Offline
                        </label>
                    </div>
                </td>
            </tr>
        </table>

        <button type="submit" class="btn-submit">Update Batch</button>
    </form>
</div>

</body>
</html>
