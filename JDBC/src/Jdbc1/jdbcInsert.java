package Jdbc1;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

public class jdbcInsert {
	public static void main(String [] args) throws ClassNotFoundException, SQLException {
	//JDBC 5 steps -mysqlconnector-added
	
	//1.load the driver
	Class.forName("com.mysql.cj.jdbc.Driver");
	//2.Open connection
	Connection connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/java","root","Arpita@2209");
	//3.create statement
	Statement statement = connection.createStatement();
	
	int result=statement.executeUpdate("insert into student values(2,'akash',99.90,22)");
	//4.process result
	System.out.println("Query ok "+result+ "rows affected");
	System.out.println("database connection");
	
	//5.close connection
	connection.close();
	statement.close();
	
	}	
}
