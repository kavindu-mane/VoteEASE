<%@ page import="com.voteease.classes.Campaigner" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="com.voteease.classes.DBConnector" %>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%
    Campaigner campaigner = (Campaigner) request.getAttribute("campaigner");
    ResultSet rs = null;
    try {
        rs = campaigner.getEndedCampaigns(DBConnector.getConnection());
    } catch (Exception e) {
%>
<script>
    Swal.fire({
        icon: 'error',
        title: 'Oops...',
        text: 'Something went wrong!',
    })
</script>
<%
    }
%>
<div class="p-5 py-10 h-full flex flex-col items-center">
    <%-- breadcrumb --%>
    <div class="flex items-center mb-2 place-self-start">
            <span class="material-symbols-outlined mx-2"> dashboard </span
            ><a
            href="${pageContext.request.contextPath}/campaigner"
            class="hover:underline"
    >Dashboard</a
    >
        <span class="material-symbols-outlined mx-2"> arrow_forward_ios </span>
        Ended Campaigns
    </div>
    <%
        try {
            if (rs == null) {
    %>
    <div class="h-full w-full flex flex-col justify-center items-center">
        <img src="${pageContext.request.contextPath}/img/empty-ended-campaigns.svg" class="w-11/12 md:w-1/3 h-auto"
             alt="error-image"/>
        <p class="text-3xl mt-10">No Ended Campaigns Found.</p>
    </div>
    <%
    } else {
        while (rs.next()) {
            String URL = "/campaigner/campaign?c=" + rs.getString("campaign_id");
    %>
    <a href="<%=URL%>" class="max-w-xl w-full">
        <div
                class="bg-white shadow-md drop-shadow-md p-4 rounded-md text-slate-800 cursor-pointer hover:bg-sky-200 duration-300 ease-in my-3 w-full">
            <h2 class="text-lg">Campaign : <span><%=rs.getString("campaign_name")%></span></h2>
            <p class="ms-5 mt-1 italic">Started : <span class=""><%=rs.getString("start_datetime")%></span></p>
            <p class="ms-5 mt-1 italic">Ended : <span class=""><%=rs.getString("end_datetime")%></span></p>
        </div>
    </a>
    <%
            }
        }
    } catch (SQLException e) {
    %>
    <script>
        Swal.fire({
            icon: 'error',
            title: 'Oops...',
            text: 'Something went wrong!',
        })
    </script>
    <%
        }
    %>
</div>