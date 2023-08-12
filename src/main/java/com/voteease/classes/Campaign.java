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
    private ResultSet newsFeed;

    public Campaign(String campaignID) {
        this.campaignID = campaignID;
    }

    public Campaign(String name, String edate, String sdate, String campaignerID) {
        this.campaignName = name;
        this.endDateTime = edate;
        this.startDateTime = sdate;
        this.campaignerID = campaignerID;
    }

    public Campaign(String name, String edate, String sdate, String campaignerID, String voteCount, String loginReq, String showStat) {
        this.campaignName = name;
        this.endDateTime = edate;
        this.startDateTime = sdate;
        this.campaignerID = campaignerID;
        this.maxVotes = voteCount;
        this.loginRequired = loginReq;
        this.showStat = showStat;
    }
    public Campaign(){}

    public Boolean createCampaign(Connection con, String accType) throws SQLException {
        String query;
        PreparedStatement pstmt;
        if (accType.equals("basic")) {
            query = "INSERT INTO voting_campaign (campaign_name , start_datetime , end_datetime , campaigner_id) VALUES (?, ? , ? , ?)";
            pstmt = con.prepareStatement(query);
        } else {
            query = "INSERT INTO voting_campaign (campaign_name , start_datetime , end_datetime , campaigner_id , max_votes , login_required , show_stat) VALUES (?, ? , ? , ? , ? , ? , ?)";
            pstmt = con.prepareStatement(query);
            pstmt.setString(5, maxVotes);
            pstmt.setString(6, loginRequired);
            pstmt.setString(7, showStat);
        }
        pstmt.setString(1, campaignName);
        pstmt.setString(2, startDateTime);
        pstmt.setString(3, endDateTime);
        pstmt.setString(4, campaignerID);

        int a = pstmt.executeUpdate();
        return a > 0;
    }

    public boolean getInfo(Connection con) throws SQLException {
        String query = "SELECT campaign_name , status , campaigner_id , max_votes , login_required , show_stat , DATE_FORMAT(start_datetime, '%Y-%m-%d %h:%i %p') AS start_datetime,  DATE_FORMAT(end_datetime, '%Y-%m-%d %h:%i %p') AS end_datetime  FROM voting_campaign WHERE campaign_id = ?";
//        DATE_FORMAT(timestamp_column, '%Y-%m-%d %h:%i:%s %p')
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
            query = "SELECT candidate_number , candidate_name , vote_count , candidate_id FROM candidate WHERE campaign_id = ?";
            pstmt = con.prepareStatement(query);
            pstmt.setString(1, campaignID);
            candidates = pstmt.executeQuery();

            return true;
        } else {
            return false;
        }
    }

    public boolean addCandidate(Connection con ,String number , String name) throws SQLException {
        String query = "INSERT INTO candidate (candidate_number , candidate_name  , campaign_id ) VALUES (?, ? , ?)";
        PreparedStatement pstmt = con.prepareStatement(query);
        pstmt.setString(1, number);
        pstmt.setString(2, name);
        pstmt.setString(3, campaignID);
        int a = pstmt.executeUpdate();
        return a > 0;
    }

    public boolean addNewsfeed(Connection con ,String description , String title) throws SQLException {
        String query = "INSERT INTO newsfeed (title , description  , campaign_id ) VALUES (?, ? , ?)";
        PreparedStatement pstmt = con.prepareStatement(query);
        pstmt.setString(1, title);
        pstmt.setString(2, description);
        pstmt.setString(3, campaignID);
        int a = pstmt.executeUpdate();
        return a > 0;
    }

    public boolean deleteCandidate(Connection con , String id) throws SQLException {
        String query = "DELETE FROM candidate WHERE candidate_id = ?";
        PreparedStatement pstmt = con.prepareStatement(query);
        pstmt.setString(1, id);
        int a = pstmt.executeUpdate();
        return a>0;
    }

    public boolean deleteNewsfeed(Connection con , String id) throws SQLException {
        String query = "DELETE FROM newsfeed WHERE newsfeed_id = ?";
        PreparedStatement pstmt = con.prepareStatement(query);
        pstmt.setString(1, id);
        int a = pstmt.executeUpdate();
        return a>0;
    }

    public boolean deleteCampaign(Connection con) throws SQLException {
        String query = "DELETE FROM voting_campaign WHERE campaign_id = ?";
        PreparedStatement pstmt = con.prepareStatement(query);
        pstmt.setString(1, campaignID);
        int a = pstmt.executeUpdate();
        return a>0;
    }

    public boolean startEndCampaign(Connection con , String time) throws SQLException {
        String newStatus = "";
        String query = "";
        if (status.equals("Scheduled")){
            newStatus = "Started";
            query = "UPDATE voting_campaign SET status = ? , start_datetime = ? WHERE campaign_id = ?";
        } else if (status.equals("Started")) {
            newStatus = "Ended";
            query = "UPDATE voting_campaign SET status = ? , end_datetime = ? WHERE campaign_id = ?";
        }
        PreparedStatement pstmt = con.prepareStatement(query);
        pstmt.setString(1, newStatus);
        pstmt.setString(2, time);
        pstmt.setString(3, campaignID);
        int a = pstmt.executeUpdate();
        return a>0;
    }

    public void loadNewsFeed(Connection con) throws SQLException {
        String query = "SELECT * FROM  newsfeed WHERE campaign_id = ?";
        PreparedStatement pstmt = con.prepareStatement(query);
        pstmt.setString(1, campaignID);
        newsFeed = pstmt.executeQuery();
    }

    public boolean updateVote(Connection con ,String candidateId) throws SQLException {
        String query = "UPDATE candidate SET vote_count = vote_count + 1 WHERE candidate_id = ?";
        PreparedStatement pstmt = con.prepareStatement(query);
        pstmt.setString(1, candidateId);
        int a = pstmt.executeUpdate();
        return a>0;
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

    public ResultSet getNewsFeed() {
        return newsFeed;
    }
}
