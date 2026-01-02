<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Student</title>

<style>
/* ===== PAGE BACKGROUND ===== */
body {
    margin: 0;
    min-height: 100vh;
    font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
    background: linear-gradient(135deg, #667eea, #764ba2);
    display: flex;
    justify-content: center;
    align-items: center;
}

/* ===== FORM CARD ===== */
.form-container {
    background: #ffffff;
    width: 520px;
    padding: 35px 40px;
    border-radius: 16px;
    box-shadow: 0 20px 40px rgba(0,0,0,0.25);
}

/* ===== TITLE ===== */
.form-container h2 {
    text-align: center;
    margin-bottom: 25px;
    color: #333;
}

/* ===== FORM GROUP ===== */
.form-group {
    margin-bottom: 15px;
}

.form-group label {
    display: block;
    margin-bottom: 6px;
    font-weight: 600;
    color: #444;
    font-size: 14px;
}

/* ===== INPUTS ===== */
.form-group input,
.form-group select,
.form-group textarea {
    width: 100%;
    padding: 10px 12px;
    font-size: 14px;
    border-radius: 8px;
    border: 1px solid #ccc;
    outline: none;
    transition: border 0.3s, box-shadow 0.3s;
}

.form-group textarea {
    resize: none;
}

.form-group input:focus,
.form-group select:focus,
.form-group textarea:focus {
    border-color: #667eea;
    box-shadow: 0 0 6px rgba(102,126,234,0.5);
}

/* ===== RADIO GROUP ===== */
.radio-group {
    display: flex;
    gap: 25px;
}

.radio-group label {
    font-weight: normal;
    color: #333;
}

/* ===== BUTTON ===== */
button {
    width: 100%;
    margin-top: 20px;
    padding: 12px;
    font-size: 16px;
    font-weight: bold;
    color: #ffffff;
    background: linear-gradient(to right, #667eea, #764ba2);
    border: none;
    border-radius: 30px;
    cursor: pointer;
    transition: transform 0.2s, box-shadow 0.2s;
}

button:hover {
    transform: translateY(-2px);
    box-shadow: 0 12px 25px rgba(0,0,0,0.3);
}

/* ===== RESPONSIVE ===== */
@media (max-width: 600px) {
    .form-container {
        width: 90%;
        padding: 25px;
    }
}
</style>
</head>

<body>

<div class="form-container">
    <h2>Edit Student</h2>

    <form action="updateStudent" method="post">

        <input type="hidden" name="id" value="${student.id}">

        <div class="form-group">
            <label>Name</label>
            <input type="text" name="name" value="${student.name}">
        </div>

        <div class="form-group">
            <label>Email</label>
            <input type="email" name="email" value="${student.email}">
        </div>

        <div class="form-group">
            <label>Mobile</label>
            <input type="text" name="mobile" value="${student.mobile}">
        </div>

        <div class="form-group">
            <label>Batch Number</label>
            <select name="batchNumber">
                <option value="fdj196" ${student.batchNumber=='fdj196'?'selected':''}>fdj196</option>
                <option value="fdj197" ${student.batchNumber=='fdj197'?'selected':''}>fdj197</option>
                <option value="fdj198" ${student.batchNumber=='fdj198'?'selected':''}>fdj198</option>
            </select>
        </div>

        <div class="form-group">
            <label>Batch Mode</label>
            <select name="batchMode">
                <option value="Online" ${student.batchMode=='Online'?'selected':''}>Online</option>
                <option value="Offline" ${student.batchMode=='Offline'?'selected':''}>Offline</option>
            </select>
        </div>

        <div class="form-group">
            <label>Course</label>
            <select name="course">
                <option ${student.course=='Java Full Stack'?'selected':''}>Java Full Stack</option>
                <option ${student.course=='Python Full Stack'?'selected':''}>Python Full Stack</option>
                <option ${student.course=='Data Analytics'?'selected':''}>Data Analytics</option>
                <option ${student.course=='Web Development'?'selected':''}>Web Development</option>
            </select>
        </div>

        <div class="form-group">
            <label>Fees Paid</label>
            <input type="number" name="feesPaid" value="${student.feesPaid}">
        </div>

        <div class="form-group">
            <label>Payment Status</label>
            <div class="radio-group">
                <label>
                    <input type="radio" name="paymentStatus" value="Paid"
                           ${student.paymentStatus=='Paid'?'checked':''}> Paid
                </label>
                <label>
                    <input type="radio" name="paymentStatus" value="Pending"
                           ${student.paymentStatus=='Pending'?'checked':''}> Pending
                </label>
            </div>
        </div>

        <div class="form-group">
            <label>Address</label>
            <textarea name="address" rows="3">${student.address}</textarea>
        </div>

        <button type="submit">Update Student</button>

    </form>
</div>

</body>
</html>
