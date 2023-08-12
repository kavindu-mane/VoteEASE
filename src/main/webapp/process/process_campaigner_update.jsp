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
<%=1%> <%--empty--%>
<%
} else {
    if (newPassword.isEmpty() && confPassword.isEmpty()) {
        //
    } else if (newPassword.equals(confPassword)) {
        //
    } else {
%>
<%=2%> <%--passowrd not match--%>
<%
        }
    }
%>
