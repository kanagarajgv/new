package com.jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class DBConnection {
	public static void main(String[] args) throws ClassNotFoundException, SQLException {
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection connection=DriverManager.getConnection("jdbc:mysql://root@localhost:3306/logicfirst","root","Gvkanak@92");
		Statement statement = connection.createStatement();
		ResultSet result = statement.executeQuery("select * from employee");
		while (result.next()) {
			System.out.println(result.getString(1));
		}
	}

}
