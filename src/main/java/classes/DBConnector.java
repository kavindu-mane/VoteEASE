package classes;

import java.sql.*;

public class DBConnector {
    private static final String URL = "jdbc:mysql://localhost:3306/ovs";
    private static final String DB_USER = "test_user";
    private static final String DB_PW = "test_user";
    private static final String DRIVER = "com.mysql.jdbc.Driver";
    
    public static Connection getConnection() throws Exception{
        Class.forName(DRIVER);
        Connection con = DriverManager.getConnection(URL,DB_USER,DB_PW);
        return con;
    }
}
