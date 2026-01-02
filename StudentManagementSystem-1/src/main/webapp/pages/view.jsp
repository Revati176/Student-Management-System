<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib uri="jakarta.tags.core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Search Students</title>

<style>
/* ===== BASE ===== */
body {
    margin: 0;
    font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
}

/* ===== FULL PAGE IMAGE ===== */
.banner {
    position: relative;
    width: 100%;
    height: 100vh;
    background: url("images/viewimg.jpeg") center/cover no-repeat;
    display: flex;
    justify-content: center;
    padding-top: 50px;
}

/* DARK OVERLAY */
.banner::before {
    content: "";
    position: absolute;
    inset: 0;
    background: rgba(0,0,0,0.55);
    z-index: 1;
}

/* CONTENT */
.content {
    position: relative;
    z-index: 2;
    width: 95%;
    max-width: 1300px;
}

/* ===== SEARCH BLOCK ===== */
.search-box {
    background: rgba(255,255,255,0.95);
    padding: 25px;
    border-radius: 12px;
    box-shadow: 0 12px 30px rgba(0,0,0,0.4);
    text-align: center;
    margin-bottom: 25px;
}

.search-box h2 {
    margin-bottom: 20px;
    color: #0d47a1;
}

.search-form {
    display: flex;
    justify-content: center;
    gap: 20px;
}

.search-form select {
    padding: 12px;
    width: 220px;
    border-radius: 6px;
    border: 1px solid #ccc;
    font-size: 15px;
}

.search-form button {
    padding: 12px 30px;
    background: #0d47a1;
    color: white;
    border: none;
    border-radius: 6px;
    cursor: pointer;
    font-size: 15px;
    font-weight: bold;
}

.search-form button:hover {
    background: #08306b;
}

/* ===== TABLE ===== */
.table-container {
    background: rgba(255,255,255,0.95);
    padding: 20px;
    border-radius: 12px;
    box-shadow: 0 8px 20px rgba(0,0,0,0.4);
    max-height: 55vh;
    overflow-y: auto;
}

table {
    width: 100%;
    border-collapse: collapse;
}

th, td {
    padding: 12px;
    border: 1px solid #ddd;
    text-align: center;
    font-size: 14px;
}

th {
    background: #0d47a1;
    color: white;
    position: sticky;
    top: 0;
    z-index: 2;
}

tr:nth-child(even) {
    background: #f9f9f9;
}

tr:hover {
    background: #eef3ff;
}

/* ===== ACTION BUTTONS ===== */
.btn {
    display: inline-block;
    padding: 6px 14px;
    font-size: 13px;
    font-weight: 600;
    text-decoration: none;
    border-radius: 6px;
    transition: all 0.25s ease;
    white-space: nowrap;
}

/* Pay Fees */
.btn-pay {
    background-color: #2e7d32;
    color: white;
}
.btn-pay:hover {
    background-color: #1b5e20;
}

/* Shift Batch */
.btn-shift {
    background-color: #ef6c00;
    color: white;
}
.btn-shift:hover {
    background-color: #e65100;
}

/* Edit */
.btn-edit {
    background-color: #1565c0;
    color: white;
}
.btn-edit:hover {
    background-color: #0d47a1;
}

/* Delete */
.btn-delete {
    background-color: #c62828;
    color: white;
}
.btn-delete:hover {
    background-color: #8e0000;
}
</style>
</head>

<body>

<div class="banner">
    <div class="content">

        <!-- SEARCH BLOCK -->
        <div class="search-box">
            <h2>Search Students by Batch</h2>

            <form class="search-form" action="searchByBatchNumberAndBatchMode" method="get">
                <select name="batchMode" required>
                    <option value="">Batch Mode</option>
                    <option value="Online">Online</option>
                    <option value="Offline">Offline</option>
                </select>

                <select name="batchNumber" required>
                    <option value="">Batch Number</option>
                    <option value="FDJ198">FDJ 198</option>
                    <option value="REG198">REG 198</option>
                    <option value="FDJ197">FDJ 197</option>
                    <option value="REG197">REG 197</option>
                    <option value="FDJ196">FDJ 196</option>
                    <option value="REG196">REG 196</option>
                </select>

                <button type="submit">Search</button>
            </form>
        </div>
        
        <c:if test="${not empty message}">
    <div style="
        background:#ffe0e0;
        color:#b00020;
        padding:10px;
        margin-bottom:15px;
        border-radius:6px;
        text-align:center;
        font-weight:bold;">
        ${message}
    </div>
</c:if>

        <!-- TABLE -->
        <div class="table-container">
            <table>
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Name</th>
                        <th>Email</th>
                        <th>Course</th>
                        <th>Mobile</th>
                        <th>Batch No</th>
                        <th>Batch Mode</th>
                        <th>Fees Paid</th>
                        <th>Address</th>
                        <th>Payment Status</th>
                        <th>Pay Fees</th>
                        <th>Shift Batch</th>
                        <th>Edit</th>
                        <th>Delete</th>
                    </tr>
                </thead>

                <tbody>
                    <c:forEach items="${students}" var="s">
                        <tr>
                            <td>${s.id}</td>
                            <td>${s.name}</td>
                            <td>${s.email}</td>
                            <td>${s.course}</td>
                            <td>${s.mobile}</td>
                            <td>${s.batchNumber}</td>
                            <td>${s.batchMode}</td>
                            <td>${s.feesPaid}</td>
                            <td>${s.address}</td>
                            <td>${s.paymentStatus}</td>
                            

                            <td>
                                <a href="payfees?id=${s.id}" class="btn btn-pay">Pay Fees</a>
                            </td>

                            <td>
                                <a href="shiftbatch?id=${s.id}" class="btn btn-shift">Shift Batch</a>
                            </td>

                            <td>
                                <a href="edit?id=${s.id}" class="btn btn-edit">Edit</a>
                            </td>

                            <td>
                                <a href="delete?id=${s.id}"
                                   class="btn btn-delete">Delete</a>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>

            </table>
        </div>

    </div>
</div>

</body>
</html>
