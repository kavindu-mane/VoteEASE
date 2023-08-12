<%@ page import="com.voteease.classes.Campaign" %>
<%@ page import="com.voteease.classes.DBConnector" %>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%
    String campaignId = request.getParameter("campaign");
    Campaign campaign = new Campaign(campaignId);
    try {
        if (campaign.deleteCampaign(DBConnector.getConnection())) {
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
