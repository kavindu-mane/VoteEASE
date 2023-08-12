<%@ page import="com.voteease.classes.Campaign" %>
<%@ page import="com.voteease.classes.DBConnector" %>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%
    String name = request.getParameter("name");
    String number = request.getParameter("number");
    String campaignId = request.getParameter("campaign");

    if (name.isEmpty() || number.isEmpty() || campaignId.isEmpty()) {
%>
<%=1%>
<%
} else {
    Campaign campaign = new Campaign(campaignId);
    try {
        if (campaign.addCandidate(DBConnector.getConnection(), number , name)) {
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
