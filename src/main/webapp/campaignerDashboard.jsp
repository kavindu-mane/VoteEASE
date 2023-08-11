<%@page import="com.voteease.classes.Campaigner" %>
<%@page import="com.voteease.classes.DBConnector" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8"/>
        <meta
                name="viewport"
                content="width=device-width, initial-scale=1.0"/>
        <title>Dashboard | VoteEASE</title>
        <%-- chart js--%>
        <script src="js/chart_js.js"></script>
        <%-- common imports --%>
        <jsp:include page="/components/common.html"/>

        <%-- create object--%>
        <%
            Campaigner campaigner = new Campaigner("35432559");
            try {
                campaigner.loadInfo(DBConnector.getConnection());
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
    </head>

    <body>
        <div class="flex flex-col lg:flex-row w-screen min-h-screen relative">
            <%-- sidebar --%>
            <div class="w-full lg:w-2/5 lg:max-w-sm bg-slate-800 pb-5">
                <div class="bg-slate-900 pt-3 ps-5 pb-5 rounded-b-md">
                    <%-- logo --%>
                    <a
                            href="${pageContext.request.contextPath}/"
                            class="text-3xl font-semibold h-fit font-Poppins text-white"
                    >Vote<span class="text-sky-400 italic">EASE</span></a
                    >
                    <%-- dashboard type --%>
                    <h2 class="text-white bold font-Poppins text-xl mt-4 lg:mt-24">Campaigner Dashboard</h2>
                </div>

                <%-- current campaigns --%>
                <div class="flex ps-5 flex-col mt-5 text-gray-400 text-sm font-bold">
                    <p class="flex items-end">
            <span class="material-symbols-outlined me-2 text-sky-400 text-[1.2rem]">
              how_to_vote </span
            >Available Campaigns
                    </p>
                    <div class="ps-3 text-md font-normal mt-3 text-gray-300">
                        <%-- available campaigns --%>
                        <%
                            try {
                                ResultSet rs = campaigner.getAvailable_campaign_list();
                                while (rs.next()) {
                                    String status = rs.getString("status");
                                    if (status.equals("Active") || status.equals("Scheduled")) {
                                        String URL = "/campaigner/campaign?c=" + rs.getString("campaign_id");
                                        String iconColor = status.equals("Active") ? "text-emerald-400" :
                                                "text-yellow-300";
                                        String icon = status.equals("Active") ? "task_alt" : "timer";
                        %>
                        <a href="<%=URL %>"
                           class="hover:bg-slate-700 me-4 cursor-pointer rounded-md p-3 flex
                        items-center">
              <span class="material-symbols-outlined me-2 text-[1.2rem] <%=iconColor%>">
                <%=icon%> </span
              ><span class="truncate"><%=rs.getString("campaign_name")%></span>
                        </a>
                        <%
                                }
                            }
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
                    </div>
                </div>

                <%-- ended campaign --%>
                <a
                        href="${pageContext.request.contextPath}/campaigner/ended"
                        class="flex items-end hover:bg-slate-700 cursor-pointer text-gray-400 font-bold text-sm my-2 ms-3 me-4 p-3 hover:text-gray-300 rounded-md">
          <span class="material-symbols-outlined text-sky-400 me-2 text-[1.2rem]"> timeline </span
          >Ended Campaigns
                </a>
                <%-- new campaign --%>
                <a
                        href="${pageContext.request.contextPath}/campaigner/new"
                        class="flex items-end hover:bg-slate-700 cursor-pointer text-gray-400 font-bold text-sm my-2 ms-3 me-4 p-3 hover:text-gray-300 rounded-md">
          <span class="material-symbols-outlined text-sky-400 me-2 text-[1.2rem]"> add_circle </span
          >New Campaigns
                </a>

                <hr class="border-transparent border-b-gray-600 border-b-[0.1rem] my-4"/>

                <%-- settings --%>
                <a
                        href="${pageContext.request.contextPath}/campaigner/settings"
                        class="flex items-end hover:bg-slate-700 cursor-pointer text-gray-400 font-bold text-sm my-2 ms-3 me-4 p-3 hover:text-gray-300 rounded-md">
          <span class="material-symbols-outlined text-sky-400 me-2 text-[1.2rem]"> settings </span
          >Account Settings
                </a>

                <%-- account details --%>
                <div class="ps-5 text-md mt-10 gap-y-2 flex flex-col">
                    <div class="flex gap-x-2">
                        <h3 class="text-gray-300">Account Type :</h3>
                        <h3 class="text-green-400"><%=campaigner.getAcc_type()%>
                        </h3>
                    </div>
                    <div class="flex gap-x-2">
                        <h3 class="text-gray-300">Available Campaigns :</h3>
                        <h3 class="text-green-400"><%=campaigner.getAvailable_campaigns()%>
                        </h3>
                    </div>
                    <div class="flex gap-x-2">
                        <h3 class="text-gray-300">Next payment date :</h3>
                        <h3 class="text-green-400"><%=campaigner.getRenew_date()%>
                        </h3>
                    </div>
                </div>
            </div>

            <%-- content --%>
            <div class="w-full pb-[3.25rem]">
                <%-- header --%>
                <div
                        class="text-lg flex items-center justify-end bg-white shadow-xl py-3 px-5 text-sky-600 font-semibold">
                    <p class="text-right"><%=campaigner.getName()%>
                    </p>
                    <div class="text-slate-700 ms-5 flex items-center cursor-pointer hover:text-sky-600">
                        <span class="material-symbols-outlined me-2"> logout </span>
                    </div>
                </div>

                <%
                    String currentURL = request.getRequestURI();
                    request.setAttribute("campaigner" ,campaigner);
                    switch (currentURL.toLowerCase()) {
                        case "/campaigner/campaign": %>
                <jsp:include page="/dashboard/campaigner/campaign.jsp"/>
                <% break;
                    case "/campaigner/campaign/candidates": %>
                <jsp:include page="/dashboard/campaigner/candidates.jsp"/>
                <% break;
                    case "/campaigner/ended": %>
                <jsp:include page="/dashboard/campaigner/ended_campaign.jsp"/>
                <% break;
                    case "/campaigner/new": %>
                <jsp:include page="/dashboard/campaigner/new_campaign.jsp"/>
                <% break;
                    case "/campaigner/settings": %>
                <jsp:include page="/dashboard/campaigner/settings.jsp"/>
                <% break;
                    default:%>
                <div class="h-full w-full flex flex-col justify-center items-center">
                    <img src="${pageContext.request.contextPath}/img/no-data.svg" alt="no -data"
                         class="max-w-md p-10 opacity-50"/>
                    <p class="text-3xl">Welcome to VoteEASE.</p>
                </div>
                <%
                    }
                %>

            </div>

            <%-- footer --%>
            <footer class="py-4 text-center absolute bottom-0 start-0 w-screen">
                <p class="sm:text-sm text-gray-500 text-xs">
                    &copy; 2023 VoteEASE. All rights reserved. |
                    <a
                            href="privacy"
                            class="text-gray-500 hover:text-gray-700"
                    >Privacy Policy</a
                    >
                    |
                    <a
                            href="terms"
                            class="text-gray-500 hover:text-gray-700"
                    >Terms of Service</a
                    >
                </p>
            </footer>
        </div>

        <script>
            const deleteAlert = () => {
                Swal.fire({
                    title: "Are you sure?",
                    text: "You won't be able to revert this!",
                    icon: "warning",
                    showCancelButton: true,
                    confirmButtonColor: "#d33",
                    cancelButtonColor: "#3085d6",
                    confirmButtonText: "Yes, delete it!",
                }).then((result) => {
                    if (result.isConfirmed) {
                        Swal.fire("Deleted!", "Your campaign has been deleted.", "success");
                    }
                });
            };
        </script>
    </body>
</html>
