<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Admin Dashboard</title>
    <jsp:include page="components/common.html"/>
</head>
<body>
<jsp:include page="components/header.html"/>
<div class="container mx-auto py-8">
    <h1 class="text-4xl font-bold text-blue-600 mb-4">
        Welcome, [Admin Name]!
    </h1>
    
    <!-- Admin Actions -->
    <div class="mt-20">
        <h2 class="text-2xl font-bold mt-8 mb-4">Admin Actions</h2>
        <ul
                id="admin-actions"
                class="grid grid-cols-1 gap-4 sm:grid-cols-2 lg:grid-cols-3"
        >
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
                        id="campaign"
                        class="px-4 py-2 bg-blue-600 text-white font-semibold rounded shadow"
                >
                    Manage Campaigners
                </button>
            </li>
            <li>
                <button
                        id="logout"
                        class="px-4 py-2 bg-blue-600 text-white font-semibold rounded shadow"
                >
                    Logout
                </button>
            </li>
        </ul>
    </div>
</div>
<jsp:include page="components/footer.html"/>
<script>
    const button5 = document.getElementById("voters");
    button5.addEventListener("click", function () {
        window.location.href = "dashboard/admin/manageVoters.jsp";
    });

    const button4 = document.getElementById("campaign");
    button4.addEventListener("click", function () {
        window.location.href = "dashboard/admin/manageCampaigner.jsp";
    });

    const button3 = document.getElementById("logout");
    button3.addEventListener("click", function () {
        window.location.href = "dashboard/admin/logout.jsp";
    });
</script>
</body>
</html>

