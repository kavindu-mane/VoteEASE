<%@ page import="com.voteease.classes.Campaign" %>
<%@ page import="com.voteease.classes.DBConnector" %>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%
    String candidateId = request.getParameter("candidate");

    Campaign campaign = new Campaign();
    try {
        if (campaign.deleteCandidate(DBConnector.getConnection(), candidateId)) {
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
