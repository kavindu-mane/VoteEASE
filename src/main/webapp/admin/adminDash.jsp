<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Admin Dashboard</title>
    <link href="../css/dasboad.css" rel="stylesheet"/>
    <jsp:include page="../components/common.html"/>
</head>
<body>
<jsp:include page="../components/header.html"/>
<div class="container mx-auto py-8">
    <h1 class="text-4xl font-bold text-blue-600 mb-4">
        Welcome, [Admin Name]!
    </h1>
    <div class="grid grid-cols-1 gap-4 sm:grid-cols-2">
        <div>
            <p class="text-gray-700 text-xl mb-2">Admin ID: [Admin ID]</p>
            <p class="text-gray-700 text-xl mb-2">Account ID: [Account ID]</p>
        </div>
        <div>
            <p class="text-gray-700 text-xl mb-4">
                Last Login: [Last Login Date]
            </p>
        </div>
    </div>

    <!-- Admin Actions -->
    <div class="mt-20">
        <h2 class="text-2xl font-bold mt-8 mb-4">Admin Actions</h2>
        <ul
                id="admin-actions"
                class="grid grid-cols-1 gap-4 sm:grid-cols-2 lg:grid-cols-3"
        >
            <li>
                <button
                        id="createCampaign"
                        class="px-4 py-2 bg-blue-600 text-white font-semibold rounded shadow"
                >
                    Create Voting Campaign
                </button>
            </li>
            <li>
                <button
                        id="campaign"
                        class="px-4 py-2 bg-blue-600 text-white font-semibold rounded shadow"
                >
                    Manage Campaigns
                </button>
            </li>
            <li>
                <button
                        id="voters"
                        class="px-4 py-2 bg-blue-600 text-white font-semibold rounded shadow"
                >
                    Manage Voters
                </button>
            </li>
            <li>
                <button
                        id="message"
                        class="px-4 py-2 bg-blue-600 text-white font-semibold rounded shadow"
                >
                    View Messages
                </button>
            </li>
            <li>
                <button
                        id="report"
                        class="px-4 py-2 bg-blue-600 text-white font-semibold rounded shadow"
                >
                    View Reports
                </button>
            </li>
            <li>
                <button
                        id="statistics"
                        class="px-4 py-2 bg-blue-600 text-white font-semibold rounded shadow"
                >
                    View Statistics
                </button>
            </li>
        </ul>
    </div>

    <!-- Voting Campaign Cards -->
    <h2 class="text-2xl font-bold mt-12 mb-4">Voting Campaigns</h2>
    <div class="grid grid-cols-1 gap-4 sm:grid-cols-2">
        <div class="p-6 bg-white rounded-lg shadow-md">
            <h3 class="text-xl font-semibold text-gray-800">Campaign 1</h3>
            <p class="text-gray-600">Start: August 1, 2023</p>
            <p class="text-gray-600">End: August 10, 2023</p>
            <p class="text-gray-600">Status: Ongoing</p>
            <p class="text-gray-600">Link: https://campaign1</p>
            <button
                    class="mt-4 px-4 py-2 bg-blue-600 text-white font-semibold rounded shadow"
            >
                View Votes
            </button>
        </div>

        <div class="p-6 bg-white rounded-lg shadow-md">
            <h3 class="text-xl font-semibold text-gray-800">Campaign 2</h3>
            <p class="text-gray-600">Start: August 5, 2023</p>
            <p class="text-gray-600">End: August 15, 2023</p>
            <p class="text-gray-600">Status: Ongoing</p>
            <p class="text-gray-600">Link: https://campaign2</p>
            <button
                    class="mt-4 px-4 py-2 bg-blue-600 text-white font-semibold rounded shadow"
            >
                View Votes
            </button>
        </div>
    </div>

    <!-- Future voting campaigns -->
    <h2 class="text-2xl font-bold mt-16 mb-4">Future Voting Campaigns</h2>
    <div class="grid grid-cols-1 gap-4 sm:grid-cols-2">
        <div class="p-6 bg-white rounded-lg shadow-md">
            <h3 class="text-xl font-semibold text-gray-800">Campaign 3</h3>
            <p class="text-gray-600">Start: September 1, 2023</p>
            <p class="text-gray-600">End: September 5, 2023</p>
            <p class="text-gray-600">Status: Scheduled</p>
            <p class="text-gray-600">Link: https://campaign3</p>
            <button
                    class="mt-4 px-4 py-2 bg-blue-600 text-white font-semibold rounded shadow"
            >
                View Details
            </button>
        </div>

        <div class="p-6 bg-white rounded-lg shadow-md">
            <h3 class="text-xl font-semibold text-gray-800">Campaign 4</h3>
            <p class="text-gray-600">Start: August 16, 2023</p>
            <p class="text-gray-600">End: August 25, 2023</p>
            <p class="text-gray-600">Status: Scheduled</p>
            <p class="text-gray-600">Link: https://campaign4</p>
            <button
                    class="mt-4 px-4 py-2 bg-blue-600 text-white font-semibold rounded shadow"
            >
                View Details
            </button>
        </div>
    </div>
</div>
<jsp:include page="../components/footer.html"/>
<script>
    function voteForCampaign(campaignId) {
        alert(`You voted for Campaign ${campaignId}`);
    }

    const button6 = document.getElementById("createCampaign");
    button6.addEventListener("click", function () {
        window.location.href = "createCampaign.jsp";
    });

    const button5 = document.getElementById("voters");
    button5.addEventListener("click", function () {
        window.location.href = "manageVoters.jsp";
    });

    const button4 = document.getElementById("campaign");
    button4.addEventListener("click", function () {
        window.location.href = "manageCampaign.jsp";
    });

    const button3 = document.getElementById("message");
    button3.addEventListener("click", function () {
        window.location.href = "viewMsg.jsp";
    });

    const button2 = document.getElementById("report");
    button2.addEventListener("click", function () {
        window.location.href = "viewReport.jsp";
    });

    const button1 = document.getElementById("statistics");
    button1.addEventListener("click", function () {
        window.location.href = "viewStats.html";
    });
</script>
</body>
</html>

