package com.voteease.classes;

import java.sql.Connection;
import java.sql.PreparedStatement;

public class Voter extends User {
    private final String name;

    public Voter(String user_type, String email, String password, String name) {
        super(user_type, email, password);
        this.name = name;
    }

    @Override
    public boolean registration(Connection con) throws Exception {
        if (super.registration(con)) {
            super.setAccountID(con);
            String query = "INSERT INTO voter (name, account_id) VALUES (?, ?)";
            PreparedStatement pstmt = con.prepareStatement(query);
            pstmt.setString(1, name);
            pstmt.setString(2, super.getAccount_id());
            int a = pstmt.executeUpdate();
            return a > 0;
        }
        return false;
    }
}
