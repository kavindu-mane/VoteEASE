<%@ page import="com.voteease.classes.Campaigner" %>
<%@ page import="com.voteease.classes.DBConnector" %>
<%@ page import="com.voteease.classes.MD5" %>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%
    String name = request.getParameter("name");
    String email = request.getParameter("email");
    String password = request.getParameter("password");
    String newPassword = request.getParameter("new_password");
    String confPassword = request.getParameter("conf_password");
    String userId = request.getParameter("user");
    String campaignerId = request.getParameter("campaigner");


    if (name.isEmpty() || email.isEmpty() || password.isEmpty() || userId.isEmpty() || campaignerId.isEmpty()) {
%>
<%=1%>
<%
} else {
    try {
        Campaigner campaigner = new Campaigner(name, email, MD5.getMd5(password));
        if (newPassword.isEmpty() && confPassword.isEmpty()) {
            if (campaigner.updateCampaigner(DBConnector.getConnection(), userId)) {
%>
<%=4%>
<%
} else {
%>
<%=3%>
<%
    }
} else {
    if (newPassword.equals(confPassword)) {
        if (campaigner.updateCampaigner(DBConnector.getConnection(), userId)) {
            if (campaigner.updatePassword(DBConnector.getConnection(), MD5.getMd5(newPassword), userId)) {
%>
<%=4%>
<%
} else {
%>
<%=2%>
<%
    }
} else {
%>
<%=2%>
<%
    }
} else {
%>
<%=2%>
<%
        }
    }
} catch (Exception e) {
%>
<%=2%>
<%
        }
    }

%>