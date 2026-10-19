<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>



<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="UTF-8">

    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Student Management System - Home</title>

    <style>

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: Arial, sans-serif;
            background: linear-gradient(
                135deg,
                #fce4ec,
                #e8eaf6,
                #e0f7fa
            );
            min-height: 100vh;
            color: #555;
        }

        /* ================= NAVBAR ================= */

        .navbar {
            height: 70px;
            background-color: rgba(255, 255, 255, 0.95);

            display: flex;
            align-items: center;
            justify-content: space-between;

            padding: 0 60px;

            box-shadow: 0 3px 15px rgba(120, 100, 150, 0.12);
        }

        .logo {
            font-size: 24px;
            font-weight: bold;
            color: #7e57c2;
        }

        .nav-links {
            display: flex;
            gap: 30px;
            align-items: center;
        }

        .nav-links a {
            text-decoration: none;
            color: #666;
            font-size: 15px;
            font-weight: bold;

            transition: 0.3s;
        }

        .nav-links a:hover {
            color: #9575cd;
        }

        .login-btn {
            padding: 10px 20px;

            background-color: #b39ddb;
            color: white !important;

            border-radius: 20px;
        }

        .login-btn:hover {
            background-color: #9575cd;
        }

        /* ================= HERO SECTION ================= */

        .hero {
            min-height: 400px;

            display: flex;
            align-items: center;
            justify-content: space-between;

            padding: 60px 10%;
        }

        .hero-text {
            max-width: 550px;
        }

        .hero-text h1 {
            font-size: 45px;
            color: #5e548e;
            margin-bottom: 15px;
        }

        .hero-text h1 span {
            color: #9575cd;
        }

        .hero-text p {
            font-size: 17px;
            line-height: 1.7;
            color: #777;
            margin-bottom: 25px;
        }

        .hero-btn {
            display: inline-block;

            padding: 13px 25px;

            background: linear-gradient(
                135deg,
                #b39ddb,
                #90caf9
            );

            color: white;
            text-decoration: none;

            border-radius: 10px;

            font-weight: bold;

            transition: 0.3s;
        }

        .hero-btn:hover {
            transform: translateY(-3px);

            box-shadow:
                0 8px 20px
                rgba(120, 100, 180, 0.25);
        }

        /* ================= HERO IMAGE / ICON ================= */

        .hero-image {
            width: 300px;
            height: 300px;

            background: linear-gradient(
                135deg,
                #d1c4e9,
                #b3e5fc
            );

            border-radius: 50%;

            display: flex;
            justify-content: center;
            align-items: center;

            font-size: 100px;

            box-shadow:
                0 15px 30px
                rgba(120, 100, 150, 0.15);
        }

        /* ================= FEATURES ================= */

        .features {
            background-color: rgba(255, 255, 255, 0.7);

            padding: 45px 8%;
        }

        .features h2 {
            text-align: center;

            color: #6a5acd;

            font-size: 30px;

            margin-bottom: 35px;
        }

        .card-container {
            display: flex;

            justify-content: center;

            gap: 25px;

            flex-wrap: wrap;
        }

        .card {
            width: 230px;

            background-color: white;

            padding: 25px;

            text-align: center;

            border-radius: 15px;

            box-shadow:
                0 8px 20px
                rgba(120, 100, 150, 0.12);

            transition: 0.3s;
        }

        .card:hover {
            transform: translateY(-7px);

            box-shadow:
                0 12px 25px
                rgba(120, 100, 150, 0.18);
        }

        .card-icon {
            font-size: 45px;

            margin-bottom: 15px;
        }

        .card h3 {
            color: #6a5acd;

            margin-bottom: 10px;
        }

        .card p {
            font-size: 14px;

            line-height: 1.5;

            color: #888;
        }

        /* ================= QUICK ACTIONS ================= */

        .quick-actions {
            text-align: center;

            padding: 45px 20px;
        }

        .quick-actions h2 {
            color: #6a5acd;

            margin-bottom: 25px;
        }

        .action-btn {
            display: inline-block;

            padding: 12px 22px;

            margin: 8px;

            border-radius: 10px;

            text-decoration: none;

            color: white;

            background-color: #81c784;

            font-weight: bold;

            transition: 0.3s;
        }

        .action-btn:nth-child(2) {
            background-color: #81d4fa;
        }

        .action-btn:nth-child(3) {
            background-color: #ffb74d;
        }

        .action-btn:hover {
            transform: translateY(-3px);

            opacity: 0.85;
        }

        /* ================= FOOTER ================= */

        footer {
            background-color: #d1c4e9;

            text-align: center;

            padding: 20px;

            color: #5e548e;

            font-size: 14px;
        }

        /* ================= RESPONSIVE ================= */

        @media (max-width: 768px) {

            .navbar {
                padding: 0 20px;
            }

            .nav-links {
                gap: 10px;
            }

            .nav-links a:not(.login-btn) {
                display: none;
            }

            .hero {
                flex-direction: column;

                text-align: center;

                gap: 40px;

                padding: 50px 20px;
            }

            .hero-text h1 {
                font-size: 35px;
            }

            .hero-image {
                width: 220px;
                height: 220px;

                font-size: 70px;
            }

        }

    </style>

</head>


<body>


    <!-- ================= NAVBAR ================= -->

    <nav class="navbar">

        <div class="logo">
            🎓 StudentHub
        </div>

        <div class="nav-links">

            <a href="#">Home</a>

            <a href="#">Students</a>

            <a href="#">Courses</a>

            <a href="#">About</a>

            <a href="#" class="login-btn">
                Login
            </a>

        </div>

    </nav>


    <!-- ================= HERO SECTION ================= -->

    <section class="hero">

        <div class="hero-text">

            <h1>
                Welcome to
                <span>StudentHub</span>
            </h1>

            <p>
                A simple and smart Student Management System
                designed to manage student information, courses,
                attendance and academic records in one place.
            </p>

            <a href="#" class="hero-btn">
                Get Started →
            </a>

        </div>


        <div class="hero-image">
            🎓
        </div>

    </section>


    <!-- ================= FEATURES ================= -->

    <section class="features">

        <h2>
            What You Can Manage
        </h2>


        <div class="card-container">


            <div class="card">

                <div class="card-icon">
                    👩‍🎓
                </div>

                <h3>
                    Students
                </h3>

                <p>
                    Add, update and manage student
                    information easily.
                </p>

            </div>


            <div class="card">

                <div class="card-icon">
                    📚
                </div>

                <h3>
                    Courses
                </h3>

                <p>
                    Manage courses and keep track
                    of student enrollment.
                </p>

            </div>


            <div class="card">

                <div class="card-icon">
                    📅
                </div>

                <h3>
                    Attendance
                </h3>

                <p>
                    Record and monitor student
                    attendance efficiently.
                </p>

            </div>


            <div class="card">

                <div class="card-icon">
                    📊
                </div>

                <h3>
                    Results
                </h3>

                <p>
                    Store and manage student
                    marks and academic results.
                </p>

            </div>


        </div>

    </section>


    <!-- ================= QUICK ACTIONS ================= -->

    <section class="quick-actions">

        <h2>
            Quick Actions
        </h2>

        <a href="#" class="action-btn">
            ➕ Add Student
        </a>

        <a href="#" class="action-btn">
            👥 View Students
        </a>

        <a href="#" class="action-btn">
            📊 View Results
        </a>

    </section>


    <!-- ================= FOOTER ================= -->

    <footer>

        © 2026 StudentHub | Student Management System

    </footer>


</body>

</html>

