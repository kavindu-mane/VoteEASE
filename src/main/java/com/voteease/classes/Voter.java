package com.voteease.classes;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

public class Voter extends User {

    private String name;

    public Voter(String user_type, String email, String password, String name) {
        super(user_type, email, password);
        this.name = name;
    }

    public Voter() {
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

    public static ArrayList<String[]> fetchData(Connection con) throws SQLException {
        ArrayList<String[]> dataRows = new ArrayList<>();

        Statement statement = con.createStatement();

        String accountQuery = "SELECT account_id, account_type, email FROM account";
        ResultSet accountResult = statement.executeQuery(accountQuery);

        while (accountResult.next()) {
            String[] rowData = new String[5];
            rowData[0] = accountResult.getString("account_id");
            rowData[1] = accountResult.getString("account_type");
            rowData[2] = accountResult.getString("email");
            rowData[3] = ""; // Voter ID
            rowData[4] = ""; // Voter Name
            dataRows.add(rowData);
        }

        accountResult.close();

        String voterQuery = "SELECT voter_id, voter_name FROM voter";
        ResultSet voterResult = statement.executeQuery(voterQuery);

        int index = 0;
        while (voterResult.next() && index < dataRows.size()) {
            dataRows.get(index)[3] = voterResult.getString("voter_id");
            dataRows.get(index)[4] = voterResult.getString("voter_name");
            index++;
        }

        return dataRows;
    }
}
