package com.hellokoding.springboot;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class ConnectDB {

	Connection connect = null;
	Statement stmt = null;
	ResultSet rs = null;

	protected void hasDriver() throws Exception {
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException ex) {
			throw new Exception("Invalid Driver!!Please check this drver....");
		}
	}

	public Connection openConnect() throws Exception {
		if (connect == null) {
			hasDriver();
			String url = "jdbc:mysql://localhost/ckeditor?useUnicode=true&characterEncoding=utf-8";
			// url_sql = "....";
			try {
				this.connect = DriverManager.getConnection(url, "root",
						"123456");
			} catch (SQLException e) {
				throw new Exception(e.getMessage()
						+ "Connect failed to database .... ");
			}
		}
		return connect;
	}
	public void closeConnet() throws SQLException {
		if (rs != null && !rs.isClosed())
			rs.close();
		if (stmt != null)
			stmt.close();
		if (connect != null)
			connect.close();
	}

	public static void main(String[] args) throws Exception {

	}

}