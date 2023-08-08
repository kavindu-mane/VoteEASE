package com.voteease.classes;

import io.github.cdimascio.dotenv.Dotenv;
import java.sql.*;

public class DBConnector {
    public static Connection getConnection() throws Exception{
        Dotenv dotenv = Dotenv.load();
        Class.forName(dotenv.get("DRIVER"));
        return DriverManager.getConnection(dotenv.get("URL"),dotenv.get("DB_USER"),dotenv.get("DB_PW"));
    }
}
