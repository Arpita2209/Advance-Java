<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
 
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
 
    <title>Online Quiz</title>
 
    <style>
        /* Reset */
        * {
            0;
            padding: 0;
            box-sizing: border-box;
        }
 
        /* Page background */
        body {
            Arial, Helvetica, sans-serif;
            min-height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
 
            background: linear-gradient(
                135deg,
                #667eea,
                #764ba2
            );
        }
 
        /* Main quiz card */
        .quiz-container {
            width: 400px;
            background-color: white;
            padding: 40px;
            border-radius: 15px;
            text-align: center;
 
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.25);
        }
 
        /* Heading */
        h1 {
            color: #333;
            font-size: 28px;
            30px;
        }
 
        /* Label */
        label {
            display: block;
            text-align: left;
            font-size: 16px;
            font-weight: bold;
            color: #555;
            8px;
        }
 
        /* Username input */
        input[type="text"] {
            width: 100%;
            padding: 12px 15px;
 
            border: 2px solid #ddd;
            border-radius: 8px;
 
            font-size: 16px;
            outline: none;
 
            transition: 0.3s;
        }
 
        /* Input focus effect */
        input[type="text"]:focus {
            border-color: #667eea;
            box-shadow: 0 0 5px rgba(102, 126, 234, 0.4);
        }
 
        /* Start Quiz button */
        button {
            width: 100%;
            padding: 13px;
 
            border: none;
            border-radius: 8px;
 
            background-color: #667eea;
            color: white;
 
            font-size: 17px;
            font-weight: bold;
 
            cursor: pointer;
            transition: 0.3s;
        }
 
        /* Button hover */
        button:hover {
            background-color: #5568d9;
            transform: translateY(-2px);
            box-shadow: 0 5px 15px rgba(102, 126, 234, 0.4);
        }
 
        /* Previous scores link */
        .history-link {
            display: inline-block;
            20px;
 
            color: #667eea;
            text-decoration: none;
 
            font-size: 15px;
            font-weight: bold;
 
            transition: 0.3s;
        }
 
        .history-link:hover {
            color: #764ba2;
            text-decoration: underline;
        }
 
        /* Mobile responsive design */
        @media (max-width: 500px) {
            .quiz-container {
                width: 90%;
                padding: 30px 25px;
            }
 
            h1 {
                font-size: 24px;
            }
        }
    </style>
</head>
 
<body>
 
    <div class="quiz-container">
 
        <h1>Online Quiz Application</h1>
 
        <form action="Quiz.jsp" method="get">
 
            <label for="username">
                Enter Your Name:
            </label>
 
            <input
                type="text"
                id="username"
                name="username"
                placeholder="Enter your name"
                required
            >
 
            <br><br>
 
            <button type="submit">
                Start Quiz
            </button>
 
        </form>
 
        <a href='./History.jsp' class="history-link">
            View Previous Scores
        </a>
 
    </div>
 
</body>
 
</html>