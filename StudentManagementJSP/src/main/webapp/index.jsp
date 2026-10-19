<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Student Management System</title>

    <style>
        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
        }

        body {
            background-color: #f4f6f9;
            color: #333;
        }

        header {
            background-color: #1e3a8a;
            color: white;
            padding: 25px;
            text-align: center;
        }

        header h1 {
            margin-bottom: 8px;
        }

        nav {
            background-color: #172554;
            padding: 15px;
            text-align: center;
        }

        nav a {
            color: white;
            text-decoration: none;
            margin: 0 20px;
            font-size: 16px;
        }

        nav a:hover {
            color: #93c5fd;
        }

        .container {
            width: 85%;
            margin: 50px auto;
            text-align: center;
        }

        .container h2 {
            margin-bottom: 15px;
            color: #1e3a8a;
        }

        .cards {
            display: flex;
            justify-content: center;
            gap: 30px;
            margin-top: 40px;
        }

        .card {
            background-color: white;
            width: 280px;
            padding: 35px;
            border-radius: 10px;
            box-shadow: 0 4px 12px rgba(0,0,0,0.1);
        }

        .card h3 {
            color: #1e3a8a;
            margin-bottom: 15px;
        }

        .card p {
            margin-bottom: 20px;
        }

        .btn {
            display: inline-block;
            background-color: #1e3a8a;
            color: white;
            padding: 10px 20px;
            text-decoration: none;
            border-radius: 5px;
        }

        .btn:hover {
            background-color: #172554;
        }

        footer {
            margin-top: 100px;
            background-color: #172554;
            color: white;
            text-align: center;
            padding: 15px;
        }
    </style>
</head>

<body>

<header>
    <h1>Student Management System</h1>
    <p>Manage Students and Courses</p>
</header>

<nav>
    <a href="index.jsp">Home</a>
    <a href="students.jsp">Students</a>
    <a href="courses.jsp">Courses</a>
</nav>

<div class="container">

    <h2>Welcome to Student Management System</h2>

    <p>Manage student records and course information easily.</p>

    <div class="cards">

        <div class="card">
            <h3>Students</h3>
            <p>Add, view and delete student records.</p>
            <a href="students.jsp" class="btn">Manage Students</a>
        </div>

        <div class="card">
            <h3>Courses</h3>
            <p>Add, view and delete course records.</p>
            <a href="courses.jsp" class="btn">Manage Courses</a>
        </div>

    </div>

</div>

<footer>
    <p>Student Management System</p>
</footer>

</body>
</html>