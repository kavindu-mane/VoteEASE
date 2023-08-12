package com.voteease.classes;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class User {
    private String account_id;
    private String user_type;
    private String email;
    private String password;
    private String account_status = "Active";

    public User(String user_type, String email, String password) {
        this.user_type = user_type;
        this.email = email;
        this.password = password;
    }

    public User(String email , String password){
        this.email = email;
        this.password = password;
    }

    public User(){}

    public boolean checkEmailExistance(Connection con) throws Exception {
        String query = "SELECT * FROM  account WHERE email=?";
        PreparedStatement pstmt = con.prepareStatement(query);
        pstmt.setString(1, email);
        ResultSet rs = pstmt.executeQuery();
        return rs.next(); //email already exist
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
        String query = "INSERT INTO account (user_type, email, password, account_status) VALUES (?, ?, ?, ?)";
        PreparedStatement pstmt = con.prepareStatement(query);
        pstmt.setString(1, user_type);
        pstmt.setString(2, email);
        pstmt.setString(3, password);
        pstmt.setString(4, account_status);
        int a = pstmt.executeUpdate();
        return a > 0;
    }

    public boolean checkAccountAvailable(Connection con , String accountId) throws SQLException {
        String query = "SELECT password FROM account WHERE account_id = ?";
        PreparedStatement pstmt = con.prepareStatement(query);
        pstmt.setString(1, accountId);
        ResultSet rs = pstmt.executeQuery();
        rs.next();
        return rs.getString("password").equals(password);
    }

    public boolean updateEmail(Connection con , String accID) throws SQLException {
        String query = "UPDATE account SET email = ? WHERE account_id = ?";
        PreparedStatement pstmt = con.prepareStatement(query);
        pstmt.setString(1, email);
        pstmt.setString(2, accID);
        int a = pstmt.executeUpdate();
        return a > 0;
    }

    public boolean updatePassword(Connection con  , String newPW , String accID) throws SQLException {
        String query = "UPDATE account SET password = ? WHERE account_id = ?";
        PreparedStatement pstmt = con.prepareStatement(query);
        pstmt.setString(1, newPW);
        pstmt.setString(2, accID);
        int a = pstmt.executeUpdate();
        return a > 0;
    }

    public boolean login(Connection con) throws SQLException {
        String query = "SELECT password FROM account WHERE email = ?";
        PreparedStatement pstmt = con.prepareStatement(query);
        pstmt.setString(1, email);
        ResultSet rs = pstmt.executeQuery();
        rs.next();
        return rs.getString("password").equals(password);
    }

    public void loadInto(Connection con , String userID) throws SQLException {
        String query = "SELECT * FROM  account WHERE account_id = ?";
        PreparedStatement pstmt = con.prepareStatement(query);
        pstmt.setString(1, userID);
        ResultSet rs = pstmt.executeQuery();
        if (rs.next()) {
            this.account_id = rs.getString("account_id");
            this.email = rs.getString("email");
            this.account_status = rs.getString("account_status");
            this.user_type = rs.getString("user_type");
            this.password = rs.getString("password");
        }
    }

    public boolean deleteUser(Connection con , String userId) throws SQLException {
        String query = "UPDATE account SET account_status = ? WHERE account_id = ?";
        PreparedStatement pstmt = con.prepareStatement(query);
        pstmt.setString(1, "Deactivated");
        pstmt.setString(2, userId);
        int a = pstmt.executeUpdate();
        return a>0;
    }

    // getters
    public String getAccount_id() {
        return account_id;
    }

    public String getUser_type() {
        return user_type;
    }

    public String getEmail() {
        return email;
    }

    public String getPassword() {
        return password;
    }

    public String getAccount_status() {
        return account_status;
    }

}
