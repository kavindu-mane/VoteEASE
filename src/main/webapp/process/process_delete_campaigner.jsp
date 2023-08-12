<%@ page import="com.voteease.classes.Campaign" %>
<%@ page import="com.voteease.classes.DBConnector" %>
<%@ page import="com.voteease.classes.User" %>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%
    String userId = request.getParameter("user");
    User user = new User();
    try {
        if (user.deleteUser(DBConnector.getConnection(), userId)) {
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
