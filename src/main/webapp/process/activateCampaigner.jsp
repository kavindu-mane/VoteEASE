<%@page import="com.voteease.classes.Account" %>
<%@page import="com.voteease.classes.DBConnector" %>

<%
    if(request.getParameter("id") != null){
        String account_id = request.getParameter("id");
        
        Account account = new Account(account_id);
        if (account.activateAccount(DBConnector.getConnection())) {
            response.sendRedirect("manageCampaigner.jsp");
        } else {
            out.print("not updated");
        }
    } else{
        out.print("error");
    }
%>