<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Student Management System - Sign Up</title>

    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: Arial, sans-serif;

            /* Pastel background */
            background: linear-gradient(135deg, #fce4ec, #e8eaf6, #e0f7fa);

            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
        }

        .signup-container {
            width: 420px;
            background-color: #ffffff;
            padding: 35px;
            border-radius: 20px;

            /* Soft shadow */
            box-shadow: 0 10px 30px rgba(120, 100, 150, 0.18);
        }

        .signup-container h1 {
            text-align: center;
            color: #6a5acd;
            margin-bottom: 8px;
            font-size: 28px;
        }

        .signup-container p {
            text-align: center;
            color: #888;
            margin-bottom: 25px;
            font-size: 14px;
        }

        .form-group {
            margin-bottom: 15px;
        }

        .form-group label {
            display: block;
            margin-bottom: 6px;
            color: #555;
            font-weight: bold;
            font-size: 14px;
        }

        .form-group input,
        .form-group select {
            width: 100%;
            padding: 12px;

            border: 2px solid #e8e0f5;
            border-radius: 10px;

            background-color: #faf8ff;

            font-size: 14px;
            color: #555;

            transition: 0.3s;
        }

        .form-group input::placeholder {
            color: #aaa;
        }

        .form-group input:focus,
        .form-group select:focus {
            outline: none;

            border-color: #b39ddb;
            background-color: #f5f0ff;

            box-shadow: 0 0 8px rgba(179, 157, 219, 0.25);
        }

        .signup-btn {
            width: 100%;
            padding: 13px;

            border: none;
            border-radius: 10px;

            background: linear-gradient(
                135deg,
                #b39ddb,
                #90caf9
            );

            color: white;
            font-size: 16px;
            font-weight: bold;

            cursor: pointer;

            margin-top: 8px;

            transition: 0.3s;
        }

        .signup-btn:hover {
            transform: translateY(-2px);

            background: linear-gradient(
                135deg,
                #9575cd,
                #64b5f6
            );

            box-shadow: 0 6px 15px rgba(100, 150, 200, 0.25);
        }

        .login-link {
            text-align: center;
            margin-top: 20px;
            font-size: 14px;
            color: #777;
        }

        .login-link a {
            color: #9575cd;
            text-decoration: none;
            font-weight: bold;
        }

        .login-link a:hover {
            color: #64b5f6;
            text-decoration: underline;
        }

    </style>
</head>

<body>

    <div class="signup-container">

        <h1>Student Sign Up</h1>

        <p>Create your student account</p>

        <form>

            <div class="form-group">
                <label for="name">Full Name</label>

                <input
                    type="text"
                    id="name"
                    placeholder="Enter your full name"
                    required
                >
            </div>


            <div class="form-group">
                <label for="email">Email</label>

                <input
                    type="email"
                    id="email"
                    placeholder="Enter your email"
                    required
                >
            </div>


            <div class="form-group">
                <label for="roll">Roll Number</label>

                <input
                    type="text"
                    id="roll"
                    placeholder="Enter your roll number"
                    required
                >
            </div>


            <div class="form-group">
                <label for="course">Course</label>

                <select id="course" required>

                    <option value="">Select Course</option>

                    <option value="computer">
                        Computer Engineering
                    </option>

                    <option value="it">
                        Information Technology
                    </option>

                    <option value="mechanical">
                        Mechanical Engineering
                    </option>

                    <option value="civil">
                        Civil Engineering
                    </option>

                    <option value="electronics">
                        Electronics Engineering
                    </option>

                </select>

            </div>


            <div class="form-group">

                <label for="password">
                    Password
                </label>

                <input
                    type="password"
                    id="password"
                    placeholder="Create a password"
                    required
                >

            </div>


            <div class="form-group">

                <label for="confirm-password">
                    Confirm Password
                </label>

                <input
                    type="password"
                    id="confirm-password"
                    placeholder="Confirm your password"
                    required
                >

            </div>


            <button type="submit" class="signup-btn" >
                Create Account
            </button>

        </form>


        <div class="login-link">

            Already have an account?

            <a href="#">
                Login
            </a>

        </div>

    </div>

</body>
</html>

