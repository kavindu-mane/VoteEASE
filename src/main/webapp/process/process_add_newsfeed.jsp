<%@ page import="com.voteease.classes.Campaign" %>
<%@ page import="com.voteease.classes.DBConnector" %>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%
    String title = request.getParameter("title");
    String description = request.getParameter("description");
    String campaignId = request.getParameter("campaign");

    if (title.isEmpty() || description.isEmpty() || campaignId.isEmpty()) {
%>
<%=1%>
<%
} else {
    Campaign campaign = new Campaign(campaignId);
    try {
        if (campaign.addNewsfeed(DBConnector.getConnection(), description , title)) {
%>
<%=3%>
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
    }
%>
