package com.main.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnection {

	private static DBConnection dbConnnection;
	private final String url = "jdbc:mysql://localhost:3306/onlineexam";
	private final String username = "root";
	private final String password = "Shivanya12345";
	private Connection connection;

	private DBConnection() {
		super();
	}

	public static DBConnection getDbConnnection() {
		if (dbConnnection == null) {
			synchronized (DBConnection.class) {
				if (dbConnnection == null) {
					dbConnnection = new DBConnection();
				}
			}

		}

		return dbConnnection;
	}

	public Connection getConnection() throws SQLException, ClassNotFoundException {
		if (connection == null) {
			Class.forName("com.mysql.jdbc.Driver");
			connection = DriverManager.getConnection(url, username, password);
			if (!connection.isClosed()) {
				System.out.println(connection.isClosed());
				return connection;
			}
		}
		return connection;
	}

	public boolean closeConnection() throws SQLException {
		if(connection!=null) {
			connection.close();
		}
		return connection.isClosed();
	}

}
