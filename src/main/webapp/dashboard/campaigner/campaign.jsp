<%@ page import="com.voteease.classes.Campaign" %>
<%@ page import="com.voteease.classes.DBConnector" %>
<%@ page import="com.voteease.classes.Campaigner" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%
    Campaign campaign = new Campaign(request.getParameter("c"));
    Campaigner campaigner = (Campaigner) request.getAttribute("campaigner");
    try {
        if (campaign.getInfo(DBConnector.getConnection())) {
            String accountType = campaigner.getAcc_type();
            boolean privilegesAvailable = accountType.equals("basic");
            String loginReq = campaign.getLoginRequired().equals("1") ? "On" : "Off";
            String showStat = campaign.getShowStat().equals("1") ? "On" : "Off";
            // true campaign id
%>
<script>
    let numberArray = [];
    let voterArray = [];
</script>

<div class="w-full flex-col xl:flex-row p-10 xl:gap-x-10 flex">
    <%-- graph details --%>
    <div class="w-full xl:w-2/3 flex flex-col gap-y-8">
        <div class="w-full">
            <canvas id="chart"></canvas>
        </div>

        <div class="w-full flex flex-col justify-center">
            <h2 class="text-lg font-semibold">Candidate Details</h2>

            <%
                ResultSet candidates = campaign.getCandidates();
                if (!candidates.next()) {
            %>
            <div class="italic mt-5 text-center text-gray-500">
                No candidate data found.
            </div>
            <%
            } else {
                String bg = "bg-white";
            %>
            <%-- details table --%>
            <div
                    class="overflow-x-hidden sm:rounded-lg mt-3 shadow-md drop-shadow-xl border-[0.1rem] border-slate-400/50">
                <table class="w-full text-sm text-left text-gray-500 table-fixed">
                    <thead class="text-xs text-gray-50 uppercase bg-slate-400">
                        <tr>
                            <th
                                    scope="col"
                                    class="px-6 py-3">
                                Number/Key
                            </th>
                            <th
                                    scope="col"
                                    class="px-6 py-3">
                                Name
                            </th>
                            <th
                                    scope="col"
                                    class="px-6 py-3">
                                Votes
                            </th>
                        </tr>
                    </thead>

                    <tbody>
                        <%
                            do {
                                bg = bg.equals("bg-white") ? "bg-gray-200" : "bg-white";
                        %>
                        <script>
                            numberArray.push("<%=candidates.getString("candidate_number")%>");
                            voterArray.push(<%=candidates.getString("vote_count")%>);
                        </script>
                        <tr class="<%=bg%> text-slate-700">
                            <td class="px-6 py-4"><%=candidates.getString("candidate_number")%>
                            </td>
                            <td class="px-6 py-4"><%=candidates.getString("candidate_name")%>
                            </td>
                            <td class="px-6 py-4"><%=candidates.getString("vote_count")%>
                            </td>
                        </tr>
                        <%
                            } while (candidates.next());
                        %>
                    </tbody>
                </table>
            </div>
            <%
                }
            %>
        </div>
    </div>
    <%-- campaign details --%>
    <div class="w-full mt-5 xl:mt-0 xl:w-1/3">
        <%-- basic details --%>
        <div class="my-5 bg-white rounded-md shadow-md drop-shadow-md p-5">
            <h3 class="font-bold text-lg">Campaign Details</h3>
            <div class="mt-3 ps-5 font-semibold">
                <p class="">Name : <span class="font-normal"><%=campaign.getCampaignName()%></span></p>
                <%
                    String URL = "http:://localhost:8080/campaign?c=" + campaign.getCampaignID();
                %>
                <p class="">
                    Link : <span class="font-normal" id="link-span"><%=URL%></span>
                </p>
                <p class="">Status : <span class="font-normal"><%=campaign.getStatus()%></span></p>
                <p class="">Start :
                    <span class="font-normal"><%=campaign.getStartDateTime()%></span></p>
                <p class="">End : <span class="font-normal"><%=campaign.getEndDateTime()%></span></p>

                <div class="mt-5 flex gap-x-5">
                    <button
                            onclick="copyText()"
                            class="rounded py-2 mt-3 w-full bg-green-600 text-white font-semibold hover:bg-green-500">
                        Copy link
                    </button>
                </div>
            </div>
        </div>
        <%-- campaign actions --%>
        <div class="my-5 bg-white rounded-md shadow-md drop-shadow-md p-5">
            <h3 class="font-bold text-lg">Campaign Actions</h3>
            <div class="mt-5 flex gap-x-5 ps-5">
                <%
                    String newStatus = campaign.getStatus().equals("Started") ? "Ended" : "Started";
                %>
                <button
                        onclick="customAlert('/process/process_status_campaign.jsp' , '<%=newStatus%>' ,
                        'Campaign has been <%=newStatus%>.')"
                        class="rounded py-2 bg-green-600 text-white font-semibold w-full hover:bg-green-500">
                    <%=campaign.getStatus().equals("Started")? "End" : "Start"%>
                </button>
                <button
                        onclick="customAlert('/process/process_delete_campaign.jsp' , 'Deleted' ,
                        'Candidate has been deleted.')"
                        class="rounded py-2 bg-red-600 text-white font-semibold w-full hover:bg-red-500">
                    Delete
                </button>
            </div>

            <div class="mt-5 flex gap-x-5 ps-5">
                <a
                        href="${pageContext.request.contextPath}/campaigner/campaign/candidates?c=<%=request.getParameter("c")%>"
                        class="rounded py-2 bg-green-600 text-white font-semibold w-full hover:bg-green-500 text-center">
                    Candidates
                </a>
                <a
                        href="${pageContext.request.contextPath}/campaigner/campaign/newsfeed?c=<%=request.getParameter("c")%>"
                        id="news-feed-btn"
                        class="rounded py-2 disabled:bg-gray-400 bg-green-600 text-white font-semibold hover:bg-green-500 disabled:cursor-not-allowed w-full text-center">
                    News Feed<i class="fa-solid fa-crown text-yellow-300 ms-1 text-sm"></i>
                </a>
            </div>
        </div>
        <%-- campaign rules --%>
        <div class="my-5 bg-white rounded-md shadow-md drop-shadow-md p-5">
            <h3 class="font-bold text-lg">Campaign Rules</h3>
            <div class="mt-3 ps-5">
                <p class="">Maximum vote for voter : <span class="font-bold"><%=campaign.getMaxVotes()%></span></p>
                <p class="">Login required for vote : <span class="font-bold"><%=loginReq%></span></p>
                <p class="">Show statistic after voting : <span class="font-bold"><%=showStat%></span></p>
            </div>
        </div>
    </div>
</div>
<%--chart js--%>
<script src="${pageContext.request.contextPath}/js/chart_js.js"></script>

<script>
    $(document).ready(function () {
        // chart settings
        const ctx = $("#chart");

        new Chart(ctx, {
            type: "bar",
            data: {
                labels: numberArray,
                datasets: [
                    {
                        label: "No of Votes",
                        data: voterArray,
                        borderWidth: 1,
                    },
                ],
            },
            options: {
                scales: {
                    y: {
                        beginAtZero: true,
                    },
                },
            },
        });
    })

    // copy to clipboard
    const copyText = () => {
        navigator.clipboard.writeText($("#link-span").text());
        Swal.fire(
            'Copied!',
            'Link copied to clipboard',
            'success'
        )
    }
</script>

<%
    if (privilegesAvailable) {
%>
<script>
    document.querySelector("#news-feed-btn").disabled = true;
    document.querySelector("#change-rules-btn").disabled = true;
</script>
<%
    }
%>

<%
} else {
%>
<div class="h-full w-full flex flex-col justify-center items-center">
    <img src="${pageContext.request.contextPath}/img/organizer-404.svg" class="w-11/12 md:w-1/3 h-auto"
         alt="error-image"/>
    <p class="text-3xl mt-10">Campaign Not Found.</p>
</div>
<%
    }
} catch
(Exception e) {
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

<script>
    const customAlert = (path , title , body) => {
        Swal.fire({
            title: "Are you sure?",
            text: "You won't be able to revert this!",
            icon: "warning",
            showCancelButton: true,
            focusCancel:true,
            confirmButtonColor: "#d33",
            cancelButtonColor: "#3085d6",
            confirmButtonText: "Yes, do it!",
        }).then((result) => {
            if (result.isConfirmed) {
                let formData = "campaign=<%=campaign.getCampaignID()%>&zone="+Intl.DateTimeFormat().resolvedOptions().timeZone;
                $.post(path, formData, (data, status) => {
                    data = data.replace(/\s/g, "");
                    console.log(data)
                    if (data == "1") {
                        Swal.fire(title, body, "success");
                    } else {
                        Swal.fire("Error!", "Something went wrong.", "error");
                    }
                })
            }
        });
    };
</script>