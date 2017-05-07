package com.hellokoding.springboot;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.context.web.SpringBootServletInitializer;

@SpringBootApplication
public class WebApplication extends SpringBootServletInitializer {
    @Override
    protected SpringApplicationBuilder configure(SpringApplicationBuilder application) {
        return application.sources(WebApplication.class);
    }

    public static void main(String[] args) throws Exception {
        SpringApplication.run(WebApplication.class, args);
    }
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
}

