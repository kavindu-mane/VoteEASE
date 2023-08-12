package com.voteease.classes;

import java.sql.*;

public class DBConnector {
    private static final String URL = "jdbc:mysql://localhost:3306/voteease";
    private static final String DB_USER = "root";
    private static final String DB_PW = "";
    private static final String DRIVER = "com.mysql.jdbc.Driver";
    public static Connection getConnection() throws Exception{
        Class.forName(DRIVER);
        return DriverManager.getConnection(URL,DB_USER,DB_PW);
    }
}
