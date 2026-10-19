<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
 
<head>
 
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
 
    <title>Quiz History</title>
 
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
 
            padding: 40px 20px;
 
            background: linear-gradient(
                135deg,
                #667eea,
                #764ba2
            );
        }
 
        /* Main container */
        .history-container {
            max-width: 1000px;
 
            0 auto;
 
            background-color: white;
 
            padding: 35px;
 
            border-radius: 18px;
 
            box-shadow:
                0 15px 35px rgba(0, 0, 0, 0.25);
        }
 
        /* Heading */
        h1 {
            text-align: center;
 
            color: #333;
 
            font-size: 30px;
 
            30px;
        }
 
        /* Table wrapper */
        .table-wrapper {
            width: 100%;
 
            overflow-x: auto;
        }
 
        /* Table */
        table {
            width: 100%;
 
            border-collapse: collapse;
 
            overflow: hidden;
 
            border-radius: 10px;
 
            background-color: white;
        }
 
        /* Table heading */
        th {
            background-color: #667eea;
 
            color: white;
 
            padding: 15px;
 
            text-align: center;
 
            font-size: 15px;
        }
 
        /* Table cells */
        td {
            padding: 14px;
 
            text-align: center;
 
            color: #444;
 
            border-bottom: 1px solid #e5e5e5;
 
            font-size: 15px;
        }
 
        /* Alternate rows */
        tbody tr:nth-child(even) {
            background-color: #f8f9ff;
        }
 
        /* Row hover */
        tbody tr:hover {
            background-color: #eef0ff;
 
            transition: 0.2s;
        }
 
        /* Score column */
        .score {
            font-weight: bold;
 
            color: #667eea;
        }
 
        /* Back button */
        .back-btn {
            display: block;
 
            width: 200px;
 
            30px auto 0;
 
            padding: 13px;
 
            text-align: center;
 
            text-decoration: none;
 
            background-color: #667eea;
 
            color: white;
 
            border-radius: 8px;
 
            font-size: 16px;
 
            font-weight: bold;
 
            transition: 0.3s;
        }
 
        /* Back button hover */
        .back-btn:hover {
            background-color: #5568d9;
 
            transform: translateY(-2px);
 
            box-shadow:
                0 5px 15px rgba(102, 126, 234, 0.4);
        }
 
        /* Mobile responsive */
        @media (max-width: 600px) {
 
            body {
                padding: 20px 10px;
            }
 
            .history-container {
                padding: 20px 15px;
            }
 
            h1 {
                font-size: 24px;
            }
 
            th,
            td {
                padding: 10px 8px;
 
                font-size: 13px;
            }
 
            .back-btn {
                width: 100%;
            }
        }
 
    </style>
 
</head>
 
<body>
<% 
Class.forName("com.mysql.cj.jdbc.Driver");
Connection connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/quiz_db","root","Arpita@2209");
String query="select * from quiz_results";
PreparedStatement statement=connection.prepareStatement(query);
ResultSet set=statement.executeQuery();

 %>
 
<div class="history-container">
 
    <h1>
        📊 Previous Quiz Scores
    </h1>
 
 
    <div class="table-wrapper">
 
        <table>
 
            <thead>
 
                <tr>
 
                    <th>ID</th>
 
                    <th>Username</th>
 
                    <th>Score</th>
 
                    <th>Total Questions</th>
 
                    <th>Date</th>
 
                </tr>
 
            </thead>
 
 
            <tbody>
 			<%while(set.next()){%>
                <tr>
 
                    <td>
                        <%=set.getInt(1)%>
                    </td>
 
                    <td>
                        <%=set.getString(2) %>
                    </td>
 
                    <td class="score">
                        <%=set.getInt(3)%>
                    </td>
 
                    <td>
                       <%=set.getInt(4)%>
                    </td>
 
                    <td>
                        <%=set.getTimestamp(5)%>
                    </td>
 
                </tr>
  <%}%>
 
            </tbody>
 
        </table>
 
    </div>
    
    

 
    <a href='' class="back-btn">
        ← Back to Quiz
    </a>
 
</div>
 
 
</body>
 
</html>
