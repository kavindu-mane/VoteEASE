package com.voteease.classes;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class Campaign {
    private String campaignID;
    private String campaignName;
    private String startDateTime;
    private String endDateTime;
    private String status;
    private String campaignerID;
    private String maxVotes;
    private String loginRequired;
    private String showStat;
    private ResultSet candidates;

    public Campaign(String campaignID) {
        this.campaignID = campaignID;
    }

    public Campaign(String name, String edate, String sdate, String campaignerID) {
        this.campaignName = name;
        this.endDateTime = edate;
        this.startDateTime = sdate;
        this.campaignerID = campaignerID;
    }

    public Campaign(String name, String edate, String sdate, String voteCount, String loginReq, String showStat, String campaignerID) {
        this.campaignName = name;
        this.endDateTime = edate;
        this.startDateTime = sdate;
        this.campaignerID = campaignerID;
        this.maxVotes = voteCount;
        this.loginRequired = loginReq;
        this.showStat = showStat;
    }

    public Boolean createCampaign(Connection con, String accType) {
        try {

            String query;
            PreparedStatement pstmt;
            if (accType.equals("basic")) {
                query = "INSERT INTO voting_campaign (campaign_name , start_datetime , end_datetime , campaigner_id) VALUES (?, ? , ? , ?)";
                pstmt = con.prepareStatement(query);
                pstmt.setString(1, campaignName);
                pstmt.setString(2, startDateTime);
                pstmt.setString(3, endDateTime);
                pstmt.setString(4, campaignerID);
            } else {
                query = "INSERT INTO voting_campaign (campaign_name , start_datetime , end_datetime , max_votes , login_required , show_stat , campaigner_id) VALUES (?, ? , ? , ? , ? , ? , ?)";
                pstmt = con.prepareStatement(query);
                pstmt.setString(1, campaignName);
                pstmt.setString(2, startDateTime);
                pstmt.setString(3, endDateTime);
                pstmt.setString(4, maxVotes);
                pstmt.setString(5, loginRequired);
                pstmt.setString(6, showStat);
                pstmt.setString(4, campaignerID);
            }

            int a = pstmt.executeUpdate();
            return a > 0;
        }catch (Exception e){
            throw new RuntimeException(e);
        }
    }

    public boolean getInfo(Connection con) throws SQLException {
        String query = "SELECT * FROM voting_campaign WHERE campaign_id = ?";
        PreparedStatement pstmt = con.prepareStatement(query);
        pstmt.setString(1, campaignID);
        ResultSet rs = pstmt.executeQuery();
        if (rs.next()) {
            this.campaignName = rs.getString("campaign_name");
            this.startDateTime = rs.getString("start_datetime");
            this.endDateTime = rs.getString("end_datetime");
            this.status = rs.getString("status");
            this.campaignerID = rs.getString("campaigner_id");
            this.maxVotes = rs.getString("max_votes");
            this.loginRequired = rs.getString("login_required");
            this.showStat = rs.getString("show_stat");

            // get available candidates list
            query = "SELECT candidate_number , candidate_name , vote_count FROM candidate WHERE campaign_id = ?";
            pstmt = con.prepareStatement(query);
            pstmt.setString(1, campaignID);
            candidates = pstmt.executeQuery();

            return true;
        } else {
            return false;
        }
    }

    public String getCampaignID() {
        return campaignID;
    }

    public String getCampaignName() {
        return campaignName;
    }

    public String getStartDateTime() {
        return startDateTime;
    }

    public String getEndDateTime() {
        return endDateTime;
    }

    public String getStatus() {
        return status;
    }

    public String getMaxVotes() {
        return maxVotes;
    }

    public String getLoginRequired() {
        return loginRequired;
    }

    public String getShowStat() {
        return showStat;
    }

    public String getCampaignerID() {
        return campaignerID;
    }

    public ResultSet getCandidates() {
        return candidates;
    }
}
