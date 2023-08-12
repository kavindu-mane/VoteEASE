<%-- 
    Document   : register
    Created on : Aug 5, 2023, 11:57:50 PM
    Author     : RPT
--%>

<%@page import="classes.DBConnector"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import = "classes.MD5" %>
<%
if (request.getParameter("login") != null) {
    String email = request.getParameter("email");
    String password = request.getParameter("password");

    
    Connection con = DBConnector.getConnection();
    String query = "SELECT email,password FROM account WHERE email = ? AND password = ?";
    PreparedStatement pstmt = con.prepareStatement(query);
    pstmt.setString(1, email);
    pstmt.setString(2, password);
    ResultSet rs = pstmt.executeQuery();
    if (rs.next()) {
        String db_pass =  rs.getString("password");
        if (db_pass.equals(password)) {
            //out.println("sucess"); 
            response.sendRedirect("login.jsp?err=1");
        }
    }else{
          response.sendRedirect("login.jsp?err=1");
    }
}
%>
