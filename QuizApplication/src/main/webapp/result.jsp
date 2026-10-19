<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Driver"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
 
<head>
 
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
 
    <title>Quiz Result</title>
 
    <style>
 
        /* Reset */
        * {
            0;
            padding: 0;
            box-sizing: border-box;
        }
 
        /* Page */
        body {
            Arial, Helvetica, sans-serif;
            min-height: 100vh;
 
            display: flex;
            justify-content: center;
            align-items: center;
 
            padding: 20px;
 
            background: linear-gradient(
                135deg,
                #667eea,
                #764ba2
            );
        }
 
        /* Result Card */
        .result-container {
            width: 450px;
            max-width: 100%;
 
            background-color: white;
 
            padding: 40px;
 
            border-radius: 18px;
 
            text-align: center;
 
            box-shadow:
                0 15px 35px rgba(0, 0, 0, 0.25);
        }
 
        /* Heading */
        h1 {
            color: #333;
            font-size: 30px;
            10px;
        }
 
        /* Subtitle */
        .subtitle {
            color: #777;
            font-size: 16px;
            30px;
        }
 
        /* Score Circle */
        .score-circle {
            width: 150px;
            height: 150px;
 
            0 auto 25px;
 
            border-radius: 50%;
 
            background: linear-gradient(
                135deg,
                #667eea,
                #764ba2
            );
 
            display: flex;
            flex-direction: column;
 
            justify-content: center;
            align-items: center;
 
            color: white;
 
            box-shadow:
                0 8px 20px rgba(102, 126, 234, 0.4);
        }
 
        .score {
            font-size: 38px;
            font-weight: bold;
        }
 
        .score-text {
            font-size: 14px;
            3px;
        }
 
        /* Result information */
        .result-info {
            background-color: #f8f9ff;
 
            border: 1px solid #e1e4f5;
 
            border-radius: 10px;
 
            padding: 20px;
 
            25px;
        }
 
        .result-info p {
            color: #555;
            font-size: 16px;
            10px 0;
        }
 
        .result-info strong {
            color: #333;
        }
 
        /* Message */
        .message {
            font-size: 18px;
            font-weight: bold;
 
            color: #667eea;
 
            25px;
        }
 
        /* Buttons */
        .btn {
            display: block;
 
            width: 100%;
 
            padding: 13px;
 
            12px;
 
            border-radius: 8px;
 
            text-decoration: none;
 
            font-size: 16px;
            font-weight: bold;
 
            transition: 0.3s;
        }
 
        /* Try Again Button */
        .try-again {
            background-color: #667eea;
            color: white;
        }
 
        .try-again:hover {
            background-color: #5568d9;
 
            transform: translateY(-2px);
 
            box-shadow:
                0 5px 15px rgba(102, 126, 234, 0.4);
        }
 
        /* History Button */
        .history {
            background-color: #f1f1f1;
            color: #555;
        }
 
        .history:hover {
            background-color: #e2e2e2;
        }
 
        /* Mobile */
        @media (max-width: 500px) {
 
            .result-container {
                padding: 30px 20px;
            }
 
            h1 {
                font-size: 25px;
            }
 
            .score-circle {
                width: 130px;
                height: 130px;
            }
 
            .score {
                font-size: 32px;
            }
        }
 
    </style>
 
</head>
 
<body>

<% String name=request.getParameter("username");
Class.forName("com.mysql.cj.jdbc.Driver");
Connection connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/quiz_db","root","Arpita@2209");
String query="select * from questions";
PreparedStatement statement=connection.prepareStatement(query);
ResultSet set=statement.executeQuery();
int totalQuestions=0;
int score=0;

while(set.next()){
	int questionid=set.getInt(1);
	String userres=request.getParameter("q"+questionid);
	if(set.getString(7).equals(userres)){
		score++;
		
	}
	totalQuestions++;
	
}
double percentage=((double)score/totalQuestions)*100;
%>
 
<div class="result-container">
 
    <h1>Quiz Completed! 🎉</h1>
 
    <p class="subtitle">
        Here is your quiz result
    </p>
 
 
    <!-- Score Circle -->
 
    <div class="score-circle">
 
        <div class="score">
           <%=score %>
        </div>
 
        <div class="score-text">
            Score
        </div>
 
    </div>
 
 
    <!-- Result Information -->
 
    <div class="result-info">
 
        <p>
            <strong>Student:</strong>
            <%=name %>
        </p>
 
        <p>
            <strong>Correct Answers:</strong>
            <%= score %>
        </p>
 
        <p>
            <strong>Total Questions:</strong>
           <%=totalQuestions %>
        </p>
 
        <p>
            <strong>Percentage:</strong>
             <%= percentage%>%
        </p>
 
    </div>
 
 
    <!-- Result Message -->
 <%if(percentage>=70) {%>
    <div class="message">
        Excellent! 🎉 
    </div>
    
  <%}else if(percentage>=60){ %>  
    <div class="message">
         Great Job! 👍
    </div>
    <%}else{ %>
    <div class="message">
         Good Effort! 🙂
    </div>
    
    <%} %>
 <%
 String query1="insert into quiz_results(username,score,total_questions) values (?,?,?)";
 PreparedStatement statement1=connection.prepareStatement(query1);
 statement1.setString(1, name);
 statement1.setInt(2, score);
 statement1.setInt(3, totalQuestions);
 int result=statement1.executeUpdate();
 connection.close();
 statement1.close();
 
 
 %>
 
    <!-- Buttons -->
 
    <a href='./ Quiz.jsp' class="btn try-again">
        Take Quiz Again
    </a>
 
    <a href='./History.jsp' class="btn history">
        View Previous Scores
    </a>
 
</div>
 
 
</body>
 
</html>