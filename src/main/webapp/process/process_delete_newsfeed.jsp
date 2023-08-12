<%@ page import="com.voteease.classes.Campaign" %>
<%@ page import="com.voteease.classes.DBConnector" %>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%
    String newsfeedId = request.getParameter("newsfeed");

    Campaign campaign = new Campaign();
    try {
        if (campaign.deleteNewsfeed(DBConnector.getConnection(), newsfeedId)) {
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
