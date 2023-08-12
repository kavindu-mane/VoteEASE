<%@ page import="com.voteease.classes.Campaign" %>
<%@ page import="com.voteease.classes.DBConnector" %>
<%@ page import="java.time.ZoneId" %>
<%@ page import="java.time.ZonedDateTime" %>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%
    String campaignId = request.getParameter("campaign");
    String zone = request.getParameter("zone");
    Campaign campaign = new Campaign(campaignId);

    ZoneId zoneId = ZoneId.of(zone); // Specify the time zone
    ZonedDateTime currentZonedTime = ZonedDateTime.now(zoneId);

    try {
        campaign.getInfo(DBConnector.getConnection());
        if (campaign.startEndCampaign(DBConnector.getConnection() , String.valueOf(currentZonedTime).substring(0,16))) {
%>
<%=1%>
<%
} else {
%>
<%=2%>
<%
    }
} catch (Exception e) {
%>
<%=2%>
<%
    }

%>
