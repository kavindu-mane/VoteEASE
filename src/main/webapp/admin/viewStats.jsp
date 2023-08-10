<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <title>Statistics | VoteEASE</title>
    <link
            href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.16/dist/tailwind.min.css"
            rel="stylesheet"
    />
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <jsp:include page="../components/common.html"/>
</head>

<body class="bg-gray-100">
<jsp:include page="../components/header.html"/>
<div class="container mx-auto p-4">
    <h1 class="text-3xl font-semibold text-blue-900 mb-4">Statistics</h1>
    <div class="px-10 py-10 bg-white border-2 rounded-md shadow-md">
        <div class="grid grid-cols-1 md:grid-cols-4 gap-10">
            <div class="bg-gray-300 p-4 rounded-lg drop-shadow-xl">
                <h2
                        class="text-xl text-red-800 font-semibold mt-4 mb-2 ms-3 flex justify-center"
                >
                    Available voting campaigns
                </h2>
                <h3
                        class="text-4xl font-bold my-5 flex justify-center items-center text-blue-900"
                >
                    15
                </h3>
            </div>

            <div class="bg-gray-300 p-4 rounded-lg drop-shadow-xl">
                <h2
                        class="text-xl text-red-800 font-semibold mt-4 mb-2 ms-3 flex justify-center"
                >
                    Voters
                </h2>
                <h3
                        class="text-4xl font-bold my-5 flex justify-center items-center text-blue-900"
                >
                    150
                </h3>
            </div>

            <div class="bg-gray-300 p-4 rounded-lg drop-shadow-xl">
                <h2
                        class="text-xl text-red-800 font-semibold mt-4 mb-2 ms-3 flex justify-center"
                >
                    Candidates
                </h2>
                <h3
                        class="text-4xl font-bold my-5 flex justify-center items-center text-blue-900"
                >
                    35
                </h3>
            </div>

            <div class="bg-gray-300 p-4 rounded-lg drop-shadow-xl">
                <h2
                        class="text-xl text-red-800 font-semibold mt-4 mb-2 ms-3 flex justify-center"
                >
                    Organizers
                </h2>
                <h3
                        class="text-4xl font-bold my-5 flex justify-center items-center text-blue-900"
                >
                    50
                </h3>
            </div>
        </div>
    </div>
    <!--chart-->
    <div class="mt-16">
        <h1 class="text-3xl font-semibold text-blue-900 mb-4">
            Chart of counts
        </h1>
    </div>
    <div class="my-3 mx-auto py-5">
        <canvas id="myChart"></canvas>
    </div>
</div>

<jsp:include page="../components/footer.html"/>
<script>
    const chartData = {
        labels: ["Campaigns", "Voters", "Candidates", "Organizers"],
        datasets: [
            {
                label: "Count",
                data: [15, 150, 35, 50],
                backgroundColor: [
                    "rgba(255, 99, 132, 0.6)",
                    "rgba(54, 162, 235, 0.6)",
                    "rgba(255, 206, 86, 0.6)",
                    "rgba(75, 192, 192, 0.6)",
                ],
                borderColor: [
                    "rgba(255, 99, 132, 1)",
                    "rgba(54, 162, 235, 1)",
                    "rgba(255, 206, 86, 1)",
                    "rgba(75, 192, 192, 1)",
                ],
                borderWidth: 1,
            },
        ],
    };

    const chartOptions = {
        responsive: true,
        maintainAspectRatio: false,
        scales: {
            y: {
                beginAtZero: true,
            },
        },
    };

    // Create the chart using Chart.js
    const ctx = document.getElementById("myChart").getContext("2d");
    const myChart = new Chart(ctx, {
        type: "bar", // You can change the chart type (e.g., bar, pie, line, etc.)
        data: chartData,
        options: chartOptions,
    });
</script>
</body>
</html>
