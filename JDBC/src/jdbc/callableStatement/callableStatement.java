package jdbc.callableStatement;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;

public class callableStatement {
	public static void main(String [] args) throws ClassNotFoundException, SQLException {
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/java", "root", "Arpita@2209");
		CallableStatement statement=connection.prepareCall("call test()");
		ResultSet resultSet=statement.executeQuery();
		
		while(resultSet.next()) {
			System.out.println("|" + resultSet.getInt(1) +
					   "|" + resultSet.getString(2) +
					   "|" + resultSet.getDouble(3) +
					   "|" + resultSet.getInt(4));
	
		}
		
	}
}
