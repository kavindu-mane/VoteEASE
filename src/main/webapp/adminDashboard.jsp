<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Admin Dashboard - VoteEASE</title>
    <%-- custom css --%>
    <link href="css/dashboard.css" rel="stylesheet" />
    <%-- common imports --%>
    <jsp:include page="components/common.html" />
</head>

<body>
<%-- header --%>
<jsp:include page="components/header.html" />
<div class="container mx-auto py-8">
    <h1 class="text-4xl font-bold text-blue-600 mb-4">
        Welcome, [Admin Name]!
    </h1>
    <div class="grid grid-cols-1 gap-4 sm:grid-cols-2">
        <div>
            <p class="text-gray-700 text-xl mb-2">Admin ID: [Admin ID]</p>
            <p class="text-gray-700 text-xl mb-2">Email: [Admin Email]</p>
            <p class="text-gray-700 text-xl mb-4">Phone: [Admin Phone]</p>
        </div>
        <div>
            <p class="text-gray-700 text-xl mb-2">Account ID: [Account ID]</p>
            <p class="text-gray-700 text-xl mb-2">Role: [Admin Role]</p>
            <p class="text-gray-700 text-xl mb-4">
                Last Login: [Last Login Date]
            </p>
        </div>
    </div>

    <!-- Admin Actions -->
    <div>
        <h2 class="text-2xl font-bold mt-8 mb-4">Admin Actions</h2>
        <ul
                id="admin-actions"
                class="grid grid-cols-1 gap-4 sm:grid-cols-2 lg:grid-cols-3"
        >
            <li>
                <button
                        onclick="createCampaign()"
                        class="px-4 py-2 bg-blue-600 text-white font-semibold rounded shadow"
                >
                    Create New Campaign
                </button>
            </li>
            <li>
                <button
                        onclick="viewCampaigns()"
                        class="px-4 py-2 bg-blue-600 text-white font-semibold rounded shadow"
                >
                    View Campaigns
                </button>
            </li>
        </ul>
    </div>

    <!-- Voting Campaign Cards -->
    <h2 class="text-2xl font-bold mt-8 mb-4">Voting Campaigns</h2>
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
    <h2 class="text-2xl font-bold mt-8 mb-4">Future Voting Campaigns</h2>
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
<jsp:include page="components/footer.html" />

<script>
    function voteForCampaign(campaignId) {
        alert(`You voted for Campaign ${campaignId}`);
    }

    function createCampaign() {
        alert("Create New Campaign button clicked!");
    }

    function viewCampaigns() {
        alert("View Campaigns button clicked!");
    }

    function manageVoters() {
        alert("Manage Voters button clicked!");
    }

    function createVotingCampaign() {
        alert("Create Voting Campaign button clicked!");
    }

    function manageCampaigns() {
        alert("Manage Campaigns button clicked!");
    }

    function viewMessages() {
        alert("View Messages button clicked!");
    }

    function viewReports() {
        alert("View Reports button clicked!");
    }

    function viewStatistics() {
        alert("View Statistics button clicked!");
    }
</script>
</body>
</html>
