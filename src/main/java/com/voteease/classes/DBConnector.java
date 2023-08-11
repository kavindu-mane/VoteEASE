/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.voteease.classes;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


        
    
   public class DBConnector {
    
    static final String DRIVER = "com.mysql.jdbc.Driver";
    static final String DB_URL = "jdbc:mysql://localhost:3306/voteease";
    static final String DB_USER = "root";
    static final String DB_PASSWORD = "";
    static Connection con;
    
    public static Connection getConnection() throws ClassNotFoundException, SQLException{
        Class.forName(DRIVER);
        con = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);
        return con;
    }
}