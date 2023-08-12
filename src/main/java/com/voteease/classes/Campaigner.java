package com.voteease.classes;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDate;

public class Campaigner extends User{
    private String name;
    private String acc_type;
    private String renew_date;
    private String campaigner_Id;
    private String available_campaigns;
    private String userId;
    private ResultSet available_campaign_list;

    public Campaigner(String user_type, String email, String password, String name , String acc_type) {
        super(user_type, email , password);
        this.name = name;
        this.acc_type = acc_type;
        this.renew_date = String.valueOf(LocalDate.now().plusDays(7));
    }

    public Campaigner(String campaigner_Id){
        this.campaigner_Id = campaigner_Id;
    }

    public Campaigner(String name , String email , String password){
        super(email, password);
        this.name =  name;
    }

    public void loadInfo(Connection con) throws Exception {
        String query = "SELECT * from voting_campaigner WHERE campaigner_Id = ?";
        String campaignQuery = "SELECT campaign_id , campaign_name , status from voting_campaign WHERE campaigner_Id = ?";

        PreparedStatement pstmt = con.prepareStatement(query);
        PreparedStatement pstmtCampaign = con.prepareStatement(campaignQuery);

        pstmt.setString(1, campaigner_Id);
        pstmtCampaign.setString(1, campaigner_Id);

        ResultSet rs = pstmt.executeQuery();
        available_campaign_list = pstmtCampaign.executeQuery();

        rs.next();
        this.name =rs.getString("organization_name");
        this.renew_date =rs.getString("renew_date");
        this.acc_type =rs.getString("acc_type");
        this.available_campaigns =rs.getString("available_campaigns");
        this.userId = rs.getString("account_id");

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

    public ResultSet getEndedCampaigns(Connection con) throws SQLException {
        String query = "SELECT campaign_id , campaign_name , DATE_FORMAT(start_datetime, '%Y-%m-%d %h:%i %p') AS start_datetime,  DATE_FORMAT(end_datetime, '%Y-%m-%d %h:%i %p') AS end_datetime FROM voting_campaign WHERE campaigner_Id = ? AND status = ?";
        PreparedStatement pstmt = con.prepareStatement(query);
        pstmt.setString(1, campaigner_Id);
        pstmt.setString(2, "Ended");
        return pstmt.executeQuery();
    }

    public boolean updateCampaigner(Connection con , String accId) throws SQLException {
        if (super.checkAccountAvailable(con , accId)){
            String query = "UPDATE voting_campaigner SET organization_name = ? WHERE account_id = ?";
            PreparedStatement pstmt = con.prepareStatement(query);
            pstmt.setString(1, name);
            pstmt.setString(2, accId);
            int a = pstmt.executeUpdate();
            return a>0;
        }
        return false;
    }

    public String getName() {
        return name;
    }

    public String getAcc_type() {
        return acc_type;
    }

    public String getRenew_date() {
        return renew_date;
    }

    public String getAvailable_campaigns() {
        return available_campaigns;
    }

    public ResultSet getAvailable_campaign_list() {
        return available_campaign_list;
    }

    public String getCampaigner_Id() {
        return campaigner_Id;
    }
    public String getUserId() {
        return userId;
    }
}
