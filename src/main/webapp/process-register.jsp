<%@page import="classes.User"%>
<%@page import="java.sql.*"%>
<%@page import="classes.DBConnector"%>
<%@page import="classes.MD5"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    String account_type = request.getParameter("account");
    String name = request.getParameter("name");
    String email = request.getParameter("email");
    String password = request.getParameter("password");
    String cpassword = request.getParameter("cpassword");
    String account_status = request.getParameter("pricing");

    User user = new User(account_type, name, email, MD5.getMd5(password), account_status);
    if (account_type.equals("") || name.equals("") || email.equals("") || password.equals("") || cpassword.equals("") || account_status.equals("")) {
        response.sendRedirect("register.jsp?alert=1"); //check empty fields
    } else if (user.checkEmailExistance(DBConnector.getConnection())) {
        response.sendRedirect("register.jsp?alert=2"); //email is already exist
    } else if (!password.equals(cpassword)) {
        response.sendRedirect("register.jsp?alert=3"); //conform password not match
    } else if (user.registration(DBConnector.getConnection())) {
        user.setAccountID(DBConnector.getConnection());
        if (account_type.equals("voter")) {
            if (user.addVoter(DBConnector.getConnection())) {
                response.sendRedirect("register.jsp?alert=4"); //registered successfully
            } else {
                response.sendRedirect("register.jsp?alert=5"); //error occured try again
            }
        } else {
            if (user.addCampaigner(DBConnector.getConnection())) {
                response.sendRedirect("register.jsp?alert=4");  //registered successfully
            } else {
                response.sendRedirect("register.jsp?alert=5"); //error occured try again
            }
        }
    } else{
        response.sendRedirect("register.jsp?alert=5"); //error occured try again
    }

%>
