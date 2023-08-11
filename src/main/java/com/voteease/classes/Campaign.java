package com.voteease.classes;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class Campaign {
    private final String campaignID;
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
