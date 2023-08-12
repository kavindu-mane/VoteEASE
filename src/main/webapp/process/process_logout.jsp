<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    Cookie cookie1 = new Cookie("userID" , "");
    Cookie cookie2 = new Cookie("userType" , "");
    Cookie cookie3 = new Cookie("campaignerID" , "");
    cookie1.setMaxAge(0);
    cookie2.setMaxAge(0);
    cookie3.setMaxAge(0);
    cookie1.setPath("/");
    cookie2.setPath("/");
    cookie3.setPath("/");
    response.addCookie(cookie1);
    response.addCookie(cookie2);
    response.addCookie(cookie3);
    response.sendRedirect("/login");
%>
