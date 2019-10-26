package porcupine_pagoda;

import java.sql.*;

// Replace [DATABASE_USER], [DATABASE_PASSWORD], and [DATABASE_URL] with your DB credentials and URL
public class DBConnect {
    protected static Connection initDB() throws SQLException, ClassNotFoundException {
        String driver = "com.mysql.cj.jdbc.Driver";
        String dbUser = "[DATABASE_USER]";
        String dbPass = "[DATABASE_PASSWORD]";
        String dbURL = "[DATABASE_URL]";
        Class.forName(driver);
        Connection connect = DriverManager.getConnection(dbURL, dbUser, dbPass );
        return connect;
    }
}
