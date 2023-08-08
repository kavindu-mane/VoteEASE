package com.voteease.classes;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.time.LocalDate;

public class Campaigner extends User{
    private final String name;
    private final String acc_type;
    private final String renew_date;
    public Campaigner(String user_type, String email, String password, String name , String acc_type) {
        super(user_type, email , password);
        this.name = name;
        this.acc_type = acc_type;
        this.renew_date = String.valueOf(LocalDate.now().plusDays(7));
    }

    @Override
    public boolean registration(Connection con) throws Exception {
        if (super.registration(con)) {
            super.setAccountID(con);
            String query = "INSERT INTO voting_campaigner (acc_type , renew_date , organization_name , account_id) VALUES (?, ? , ? , ?)";
            PreparedStatement pstmt = con.prepareStatement(query);
            pstmt.setString(1, acc_type);
            pstmt.setString(2, renew_date);
            pstmt.setString(3, name);
            pstmt.setString(4, super.getAccount_id());
            int a = pstmt.executeUpdate();
            return a > 0;
        }
        return false;
    }
}
