<%@page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@ page import="com.voteease.classes.DBConnector" %>
<%@ page import="com.voteease.classes.MD5" %>

<%
    if (request.getParameter("login") != null) {
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        try {
            Connection con = DBConnector.getConnection();

            String query = "SELECT password , user_type , account_id FROM account WHERE email = ?";
            PreparedStatement pstmt = con.prepareStatement(query);
            pstmt.setString(1, email);
            ResultSet rs = pstmt.executeQuery();
            if (rs.next()) {
                String db_pass = rs.getString("password");
                if (db_pass.equals(MD5.getMd5(password))) {
                    Cookie cookie1 = new Cookie("userID" , rs.getString("account_id"));
                    Cookie cookie2 = new Cookie("userType" , rs.getString("user_type"));
                    cookie1.setPath("/");
                    cookie2.setPath("/");
                    response.addCookie(cookie1);
                    response.addCookie(cookie2);
                    //out.println("success");
                    if (rs.getString("user_type").equals("admin")){
                        response.sendRedirect("/admin");
                    } else if (rs.getString("user_type").equals("campaigner")) {

                        query = "SELECT campaigner_id FROM voting_campaigner WHERE account_id = ?";
                        pstmt = con.prepareStatement(query);
                        pstmt.setString(1, rs.getString("account_id"));
                        rs = pstmt.executeQuery();
                        rs.next();
                        Cookie cookie3 = new Cookie("campaignerID" , rs.getString("campaigner_id"));
                        cookie3.setPath("/");
                        response.addCookie(cookie3);
                        response.sendRedirect("/campaigner");
                    }else {
                        query = "SELECT voter_id FROM voter WHERE account_id = ?";
                        pstmt = con.prepareStatement(query);
                        pstmt.setString(1, rs.getString("account_id"));
                        rs = pstmt.executeQuery();
                        rs.next();
                        Cookie cookie3 = new Cookie("voterID" , rs.getString("voter_id"));
                        cookie3.setPath("/");
                        response.addCookie(cookie3);
                        response.sendRedirect("/voter");
                    }
                }
            } else {
                response.sendRedirect("/login?err=1");
            }
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }
%>
