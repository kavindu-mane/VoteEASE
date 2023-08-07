package classes;

import java.sql.*;

public class User {
    private String account_id;
    private String account_type;
    private String name;
    private String email;
    private String password;
    private String account_status;

    public User(String account_type, String name, String email, String password, String account_status) {
        this.account_type = account_type;
        this.name = name;
        this.email = email;
        this.password = password;
        this.account_status = account_status;
    }

    public boolean checkEmailExistance(Connection con) throws Exception {
        String query = "SELECT * FROM  account WHERE email=?";
        PreparedStatement pstmt = con.prepareStatement(query);
        pstmt.setString(1, email);
        ResultSet rs = pstmt.executeQuery();
        if (rs.next()) {
            return true; //email already exist
        } else {
            return false;
        }
    }

    public void setAccountID(Connection con) throws Exception {
        String query = "SELECT * FROM  account WHERE email=?";
        PreparedStatement pstmt = con.prepareStatement(query);
        pstmt.setString(1, email);
        ResultSet rs = pstmt.executeQuery();
        if (rs.next()) {
            this.account_id = rs.getString("account_id");
        }
    }

    public boolean registration(Connection con) throws Exception {
        String query = "INSERT INTO account (account_type, username, email, password, account_status) VALUES (?, ?, ?, ?, ?)";
        PreparedStatement pstmt = con.prepareStatement(query);
        pstmt.setString(1, account_type);
        pstmt.setString(2, name);
        pstmt.setString(3, email);
        pstmt.setString(4, password);
        pstmt.setString(5, account_status);
        int a = pstmt.executeUpdate();
        if (a > 0) {
            return true;
        } else {
            return false;
        }
    }

    public boolean addVoter(Connection con) throws Exception {
        String query = "INSERT INTO voter (name, account_id) VALUES (?, ?)";
        PreparedStatement pstmt = con.prepareStatement(query);
        pstmt.setString(1, name);
        pstmt.setString(2, account_id);
        int a = pstmt.executeUpdate();
        if (a > 0) {
            return true;
        } else{
            return false;
        }
        
    }
    
    public boolean addCampaigner(Connection con) throws Exception {
        String query = "INSERT INTO voting_campaigner (organization_name, account_id) VALUES (?, ?)";
        PreparedStatement pstmt = con.prepareStatement(query);
        pstmt.setString(1, name);
        pstmt.setString(2, account_id);
        int a = pstmt.executeUpdate();
        if (a > 0) {
            return true;
        } else{
            return false;
        }
        
    }
}
