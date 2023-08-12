<%@ page import="com.voteease.classes.Campaign" %>
<%@ page import="com.voteease.classes.DBConnector" %>
<%@ page import="com.voteease.classes.Campaigner" %>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%
    String name = request.getParameter("name");
    String sdate = request.getParameter("sdate");
    String edate = request.getParameter("edate");
    String voteCount = request.getParameter("vote-count");
    String loginReq = request.getParameter("login-required");
    String showStat = request.getParameter("show-statistic");
    String account = request.getParameter("account");
    String campaignerId = request.getParameter("campaigner");

    if (name.isEmpty() || sdate.isEmpty() || edate.isEmpty() || account.isEmpty() || campaignerId.isEmpty()) {
%>
<%=1%> <%--empty--%>
<%
} else {
    try {
        Campaigner campaigner = new Campaigner(campaignerId);
        campaigner.loadInfo(DBConnector.getConnection());
        if (Integer.parseInt(campaigner.getAvailable_campaigns()) > 0) {
            if (account.equals("basic")) {
                Campaign campaign = new Campaign(name, edate, sdate, campaignerId);
                if (campaign.createCampaign(DBConnector.getConnection(), account)) {
%>
<%=3%> <%--success--%>
<%
} else {
%>
<%=2%> <%--error--%>
<%
    }
} else {
    showStat = showStat == null ? "0" : "1";
    loginReq = loginReq == null ? "0" : "1";
    Campaign campaign = new Campaign(name, edate, sdate, campaignerId, voteCount, loginReq, showStat);
    if (campaign.createCampaign(DBConnector.getConnection(), account)) {
%>
<%=3%> <%--success--%>
<%
} else {
%>
<%=2%> <%--error--%>
<%
        }
    }
} else {
%>
<%=2%> <%--error--%>
<%
    }
} catch
(Exception e) {
%>
<%=2%> <%--error--%>
<%
        }
    }
%>
