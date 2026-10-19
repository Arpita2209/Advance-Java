<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>

<%
    String url = "jdbc:mysql://localhost:3306/student_db";
    String username = "root";
    String password = "Jxcx00521";

    Connection con = null;

    try {

        Class.forName("com.mysql.cj.jdbc.Driver");

        con = DriverManager.getConnection(
            url,
            username,
            password
        );

    } catch(Exception e) {

        out.println("<p style='color:red;'>Database Connection Error: "
                    + e.getMessage() + "</p>");
    }


    // ADD COURSE
    if(request.getParameter("addCourse") != null) {

        String courseName =
            request.getParameter("course_name");

        String duration =
            request.getParameter("duration");

        double fees =
            Double.parseDouble(request.getParameter("fees"));

        String instructor =
            request.getParameter("instructor");


        String sql =
            "INSERT INTO courses " +
            "(course_name, duration, fees, instructor) " +
            "VALUES (?, ?, ?, ?)";

        PreparedStatement ps =
            con.prepareStatement(sql);

        ps.setString(1, courseName);
        ps.setString(2, duration);
        ps.setDouble(3, fees);
        ps.setString(4, instructor);

        ps.executeUpdate();

        ps.close();

        response.sendRedirect("courses.jsp");
    }


    // DELETE COURSE
    if(request.getParameter("delete") != null) {

        int id =
            Integer.parseInt(request.getParameter("delete"));

        String sql =
            "DELETE FROM courses WHERE id = ?";

        PreparedStatement ps =
            con.prepareStatement(sql);

        ps.setInt(1, id);

        ps.executeUpdate();

        ps.close();

        response.sendRedirect("courses.jsp");
    }
%>

<!DOCTYPE html>
<html>

<head>

    <title>Courses - Student Management System</title>

    <style>

        * {
            box-sizing: border-box;
            font-family: Arial, sans-serif;
        }

        body {
            margin: 0;
            background-color: #f4f6f9;
        }

        header {
            background-color: #1e3a8a;
            color: white;
            text-align: center;
            padding: 25px;
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
        }

        .container {
            width: 90%;
            margin: 30px auto;
        }

        .form-box {
            background: white;
            padding: 25px;
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0,0,0,0.1);
        }

        .form-box h2 {
            color: #1e3a8a;
        }

        input {
            width: 100%;
            padding: 10px;
            margin: 8px 0 15px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        input[type="submit"] {
            background-color: #1e3a8a;
            color: white;
            border: none;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: #172554;
        }

        table {
            width: 100%;
            margin-top: 30px;
            border-collapse: collapse;
            background: white;
        }

        th {
            background-color: #1e3a8a;
            color: white;
        }

        th, td {
            padding: 12px;
            border: 1px solid #ddd;
            text-align: center;
        }

        .delete {
            background-color: #dc2626;
            color: white;
            padding: 7px 12px;
            text-decoration: none;
            border-radius: 4px;
        }

    </style>

</head>

<body>

<header>

    <h1>Student Management System</h1>

</header>

<nav>

    <a href="index.jsp">Home</a>
    <a href="students.jsp">Students</a>
    <a href="courses.jsp">Courses</a>

</nav>


<div class="container">

    <div class="form-box">

        <h2>Add Course</h2>

        <form method="post">

            <label>Course Name</label>

            <input type="text"
                   name="course_name"
                   required>


            <label>Duration</label>

            <input type="text"
                   name="duration"
                   placeholder="Example: 6 Months"
                   required>


            <label>Fees</label>

            <input type="number"
                   step="0.01"
                   name="fees"
                   required>


            <label>Instructor</label>

            <input type="text"
                   name="instructor"
                   required>


            <input type="submit"
                   name="addCourse"
                   value="Add Course">

        </form>

    </div>


    <h2 style="margin-top:40px;">
        Course Records
    </h2>


    <table>

        <tr>

            <th>ID</th>
            <th>Course Name</th>
            <th>Duration</th>
            <th>Fees</th>
            <th>Instructor</th>
            <th>Action</th>

        </tr>

<%
    if(con != null) {

        String selectSql =
            "SELECT * FROM courses ORDER BY id ASC";

        PreparedStatement ps =
            con.prepareStatement(selectSql);

        ResultSet rs =
            ps.executeQuery();


        while(rs.next()) {
%>

        <tr>

            <td>
                <%= rs.getInt("id") %>
            </td>

            <td>
                <%= rs.getString("course_name") %>
            </td>

            <td>
                <%= rs.getString("duration") %>
            </td>

            <td>
                <%= rs.getDouble("fees") %>
            </td>

            <td>
                <%= rs.getString("instructor") %>
            </td>

            <td>

                <a class="delete"
                   href="courses.jsp?delete=<%= rs.getInt("id") %>"
                   onclick="return confirm('Delete this course?');">

                   Delete

                </a>

            </td>

        </tr>

<%
        }

        rs.close();
        ps.close();
    }

    if(con != null) {
        con.close();
    }
%>

    </table>

</div>

</body>

</html>