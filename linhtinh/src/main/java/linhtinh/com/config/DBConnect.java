package linhtinh.com.config;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnect {
	private static Connection con = null;
	private static String USERNAME = "root";
	private static String PASSWORD = "Dongphuong2301@@";
	private static String DRIVER = "com.mysql.cj.jdbc.Driver";
	private static String URL = "jdbc:mysql://localhost:3306/tdpdb";

	public static Connection getDatabaseConnection() throws SQLException, Exception {
		try {
			Class.forName(DRIVER);
			return con = DriverManager.getConnection(URL, USERNAME, PASSWORD);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}

	public static void main(String[] args) {
		try {
			new DBConnect();
			System.out.println(DBConnect.getDatabaseConnection());
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
