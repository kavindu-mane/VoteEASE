<%@ page import="com.voteease.classes.Campaign" %>
<%@ page import="com.voteease.classes.DBConnector" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page isErrorPage="true" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8"/>
        <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
        <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
        <title>Campaign - VoteEASE</title>

        <%-- common imports --%>
        <jsp:include page="components/common.html"/>
    </head>
    <%
        Campaign campaign = new Campaign(request.getParameter("c"));
    %>
    <body>
        <script>
            let titleArray = [];
            let descArray = [];
        </script>
        <%-- header--%>
        <jsp:include page="components/header.html"/>
        <%
            try {
                if (campaign.getInfo(DBConnector.getConnection())) {
                    campaign.loadNewsFeed(DBConnector.getConnection());
                    ResultSet rs = campaign.getNewsFeed();
                    if (!rs.next()) {
                        //pass
                    } else {
                        do {
        %>
        <script>
            titleArray.push(`<%=rs.getString("title")%>`)
            descArray.push(`<%=rs.getString("description")%>`)
        </script>
        <%
            } while (rs.next());
        %>
        <div class="flex flex-col w-full items-center justify-center py-10 px-5">
            <div
                    class="max-w-4xl bg-white p-10 shadow-md drop-shadow-md w-1/2 h-96 flex flex-col justify-center items-center">
                <h2 class="text-2xl font-semibold mb-3 font-Poppins" id="title-text"></h2>
                <p class="" id="caption-text"></p>
            </div>
            <%
                }
            %>

            <div class="mt-10 w-full flex flex-col items-center">
                <h1 class="text-2xl font-Poppins font-semibold mb-8">Candidates</h1>
                <%
                    ResultSet candidates = campaign.getCandidates();
                    if (!candidates.next()) {
                %>
                <p class="text-gray-500 italic mt-3">Candidates not found.</p>
                <%
                } else {
                    do {
                        String id = candidates.getString("candidate_id");
                %>
                <div
                        class=
                                "flex bg-white group p-3 cursor-pointer items-center hover:bg-green-100 shadow-md drop-shadow-md rounded-md ring-1 w-full max-w-4xl my-2">
                    <div class="flex-col w-full">
                        <h3 class=""> Number / Key : <span> <%=candidates.getString("candidate_number")%> </span></h3>
                        <h3 class=""> Name : <span> <%=candidates.getString("candidate_name")%> </span></h3>
                    </div>

                    <span
                            id="<%=id%>"
                            onclick="voteAlert(event)"
                            class="material-symbols-outlined bg-green-100 text-green-500 me-5 group-hover:bg-green-500 group-hover:text-white flex items-center justify-center rounded-full p-3"> check </span>
                </div>
                <%
                        } while (candidates.next());
                    }
                %>
            </div>

        </div>
        <%
        } else {
        %>
        <div class=" flex flex-col w-full items-center justify-center py-10 px-5">
            <img src="${pageContext.request.contextPath}/img/organizer-404.svg" class="w-11/12 md:w-1/3 h-auto"
                 alt="error-image"/>
            <p class="text-3xl mt-10">Campaign Not Found.</p>
        </div>
        <%
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
        <%-- footer --%>
        <jsp:include page="components/footer.html"/>

    </body>
    <script>
        $(document).ready(function () {
            if (titleArray !== null) {
                let index = 0;
                $("#title-text").text(titleArray[0]);
                $("#caption-text").text(descArray[0]);
                setInterval(() => {
                    if (index === titleArray.length) {
                        index = 0;
                    }
                    $("#title-text").text(titleArray[index]);
                    $("#caption-text").text(descArray[index]);
                    index++;
                }, 3000)
            }
        });
    </script>

    <script>
        const voteAlert = (event) => {
            let formData = "candidate="+event.target.id;
            $.post("/process/process_vote_candidate.jsp", formData, (data, status) => {
                data = data.replace(/\s/g, "");
                if (data == "1"){
                    Swal.fire("Voted!", "Voting success.", "success");
                }else{
                    Swal.fire("Error!", "Something went wrong.", "error");
                }
            })
        };
    </script>
</html>