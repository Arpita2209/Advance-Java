package com.linkcode.JDBC;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Scanner;

public class StudentManagementJDBC {
	
	static Scanner sc = new Scanner(System.in);
	
	public static Connection dbConnect() throws ClassNotFoundException, SQLException {
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/javabatch43", "root", "Jxcx00521");
		return con;
	}
	
	public static void addStudent() throws ClassNotFoundException, SQLException {
		
		PreparedStatement preparedStatement = dbConnect().prepareStatement("INSERT INTO student VALUES (?, ?, ?, ?)");
		System.out.println("Enter Roll No.");
		preparedStatement.setInt(1, sc.nextInt());
		System.out.println("Enter Name");
		preparedStatement.setString(2, sc.next());
		System.out.println("Enter Marks");
		preparedStatement.setDouble(3, sc.nextDouble());
		System.out.println("Enter Age");
		preparedStatement.setInt(4, sc.nextInt());

		int result = preparedStatement.executeUpdate();
		System.out.println("Query OK, " + result + " row(s) affected");
		
		preparedStatement.close();
	}
	
	public static void updateStudent() throws ClassNotFoundException, SQLException {

	    PreparedStatement preparedStatement = dbConnect().prepareStatement(
	        "UPDATE student SET name = ?, marks = ?, age = ? WHERE id = ?"
	    );

	    System.out.println("Enter Roll No.");
	    preparedStatement.setInt(4, sc.nextInt());

	    System.out.println("Enter New Name");
	    preparedStatement.setString(1, sc.next());

	    System.out.println("Enter New Marks");
	    preparedStatement.setDouble(2, sc.nextDouble());

	    System.out.println("Enter New Age");
	    preparedStatement.setInt(3, sc.nextInt());

	    int result = preparedStatement.executeUpdate();

	    System.out.println("Query OK, " + result + " row(s) affected");

	    preparedStatement.close();
	}
	
	
	public static void removeStudent() {

	}
	
	public static void displayAllStudent() throws ClassNotFoundException, SQLException {
		
		PreparedStatement preparedStatement = dbConnect().prepareStatement("SELECT * FROM student");
		ResultSet resultSet = preparedStatement.executeQuery();
		
		System.out.println("===== Student Details =====");
		System.out.println("---------------------------");
		while(resultSet.next()) {
			System.out.println("|" + resultSet.getInt(1) +
							   "|" + resultSet.getString(2) +
							   "|" + resultSet.getDouble(3) +
							   "|" + resultSet.getInt(4));
			System.out.println("-----------------------");
		}
		preparedStatement.close();
		
	}
	
	public static void main(String[] args) throws ClassNotFoundException, SQLException {
		
		boolean flag = true;
		while(flag) {
			
			System.out.println("1. Add Student\n2. Update Student\n3. Remove Student\n4. Display All Students\n5. Exit");
			
			System.out.println("Enter Choice");
			int ch = sc.nextInt();
			switch(ch) {
			
			case 1 -> addStudent();
			case 2 -> updateStudent();
			case 3 -> removeStudent();
			case 4 -> displayAllStudent();
			case 5 -> flag = false;
			
			}
		}
		
	}

}
