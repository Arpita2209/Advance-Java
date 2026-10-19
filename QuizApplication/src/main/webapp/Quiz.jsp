<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
 
<head>
 
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
 
    <title>Quiz</title>
 
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
            background: linear-gradient(135deg, #667eea, #764ba2);
            min-height: 100vh;
            padding: 40px 20px;
        }
 
        /* Main quiz container */
        .quiz-container {
            max-width: 800px;
            auto;
            background-color: #ffffff;
            padding: 35px;
            border-radius: 15px;
 
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.25);
        }
 
        /* Page heading */
        h2 {
            text-align: center;
            color: #333;
            30px;
            font-size: 28px;
        }
 
        /* Question card */
        .question-card {
            background-color: #f8f9ff;
            border: 1px solid #e1e4f5;
            border-radius: 12px;
 
            padding: 22px;
            20px;
 
            transition: 0.3s;
        }
 
        /* Question hover effect */
        .question-card:hover {
            box-shadow: 0 5px 15px rgba(102, 126, 234, 0.15);
            border-color: #667eea;
        }
 
        /* Question text */
        h3 {
            color: #333;
            font-size: 18px;
            18px;
            1.5;
        }
 
        /* Answer labels */
        .option {
            display: block;
            background-color: white;
            border: 1px solid #ddd;
 
            padding: 12px 15px;
            10px 0;
 
            border-radius: 8px;
            cursor: pointer;
 
            color: #444;
            font-size: 16px;
 
            transition: 0.3s;
        }
 
        /* Option hover */
        .option:hover {
            background-color: #eef0ff;
            border-color: #667eea;
        }
 
        /* Radio button */
        .option input[type="radio"] {
            10px;
            accent-color: #667eea;
            cursor: pointer;
        }
 
        /* Submit button */
        .submit-btn {
            display: block;
            width: 100%;
 
            padding: 14px;
            25px;
 
            border: none;
            border-radius: 8px;
 
            background-color: #667eea;
            color: white;
 
            font-size: 17px;
            font-weight: bold;
 
            cursor: pointer;
            transition: 0.3s;
        }
 
        /* Submit button hover */
        .submit-btn:hover {
            background-color: #5568d9;
            transform: translateY(-2px);
 
            box-shadow: 0 5px 15px rgba(102, 126, 234, 0.4);
        }
 
        /* Mobile responsive */
        @media (max-width: 600px) {
 
            body {
                padding: 20px 10px;
            }
 
            .quiz-container {
                padding: 20px;
            }
 
            h2 {
                font-size: 23px;
            }
 
            h3 {
                font-size: 16px;
            }
 
            .option {
                font-size: 14px;
            }
        }
 
    </style>
 
</head>
 
<body>
 
 <%String name=request.getParameter("username"); %>
 <%if(name==null){
	 response.sendRedirect("index.jsp");
	 }%>
 
 
<div class="quiz-container">
 
    <h2>
        Welcome, <%=name %>👋
    </h2>
 
    <form action="result.jsp" method="post">
    <% 
    Class.forName("com.mysql.cj.jdbc.Driver");
    Connection connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/quiz_db","root","Arpita@2209");
    String query="select * from questions";
    PreparedStatement statement=connection.prepareStatement(query);
    ResultSet set=statement.executeQuery();
    
    while(set.next()){
    
    
    %>
 
 
 
        <div class="question-card">
 
            <h3>
                <%=set.getString(2) %>
              
            </h3>
 
            <label class="option">
 
                <input type="radio"
                       name="q<%= set.getInt(1) %>"
                       value="A"
                       required>
 
                              <%=set.getString(3) %>
 
            </label>
 
            <label class="option">
 
                <input type="radio"
                       name="q<%= set.getInt(1) %>"
                       value="B">
 
                                <%=set.getString(4) %>
 
            </label>
 
            <label class="option">
 
                <input type="radio"
                       name="q<%= set.getInt(1) %>"
                       value="C">
 
                              <%=set.getString(5) %>
 
            </label>
 
            <label class="option">
 
                <input type="radio"
                       name="q<%= set.getInt(1) %>"
                       value="D">
 
                              <%=set.getString(6) %>
 
            </label>
 
        </div>
 <%}
    
    connection.close();
    statement.close();
    %>
 
 
        <!-- Send username to result.jsp -->
 
        <input type="hidden"
               name="username"
               value="<%= name%>">
 
        <button type="submit" class="submit-btn">
            Submit Quiz
        </button>
 
    </form>
 
</div>
 
</body>
 
</html>