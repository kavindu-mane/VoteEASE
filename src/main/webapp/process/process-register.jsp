<%@page import="com.voteease.classes.Voter" %>
<%@page import="com.voteease.classes.DBConnector" %>
<%@page import="com.voteease.classes.MD5" %>
<%@ page import="com.voteease.classes.Campaigner" %>
<%@page contentType="text/html" pageEncoding="UTF-8" %>

<%
    String user_type = request.getParameter("account");
    String name = request.getParameter("name");
    String email = request.getParameter("email");
    String password = request.getParameter("password");
    String cpassword = request.getParameter("cpassword");
    String account_type = request.getParameter("pricing");

    if (user_type.isEmpty() || name.isEmpty() || email.isEmpty() || password.isEmpty() || cpassword.isEmpty() ||
            account_type.isEmpty() && user_type.equals("campaigner")) {
        response.sendRedirect("/register?alert=1"); //check empty fields
    } else {
        try {
            if (!password.equals(cpassword)) {
                response.sendRedirect("/register?alert=3"); //conform password not match
            }else if (user_type.equals("voter")) {
                Voter voter = new Voter(user_type, email, MD5.getMd5(password), name);
                if (voter.checkEmailExistance(DBConnector.getConnection())) {
                    response.sendRedirect("/register?alert=2"); //email is already exist
                } else if (voter.registration(DBConnector.getConnection())) {
                    response.sendRedirect("/register?alert=4"); //registered successfully
                } else {
                    response.sendRedirect("/register?alert=5"); //error occurred try again
                }
            } else if (user_type.equals("campaigner")) {
                Campaigner campaigner = new Campaigner(user_type, email, MD5.getMd5(password), name, account_type);
                if (campaigner.checkEmailExistance(DBConnector.getConnection())) {
                    response.sendRedirect("/register?alert=2"); //email is already exist
                } else if (campaigner.registration(DBConnector.getConnection())) {
                    response.sendRedirect("/register?alert=4"); //registered successfully
                } else {
                    response.sendRedirect("/register?alert=5"); //error occurred try again
                }
            } else {
                response.sendRedirect("register.jsp?alert=5"); //error occurred try again
            }
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

%>
