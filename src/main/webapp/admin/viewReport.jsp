<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Report | VoteEase</title>
    <link
            href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.15/dist/tailwind.min.css"
            rel="stylesheet"
    />
    <jsp:include page="../components/common.html"/>
</head>

<body>
<jsp:include page="../components/header.html"/>
<div class="container mx-auto p-8">
    <h1 class="text-2xl font-extrabold text-blue-900 mb-4">
        Report - VoteEASE
    </h1>
    <div class="bg-white p-4 rounded-xl shadow-lg">
        <table class="w-full border border-collapse">
            <thead>
            <tr class="bg-gray-300">
                <th class="p-2 border border-gray-400">Voting Campaigns</th>
                <th class="p-2 border border-gray-400">Organizer ID</th>
                <th class="p-2 border border-gray-400">Candidates Count</th>
                <th class="p-2 border border-gray-400">Voters Count</th>
                <th class="p-2 border border-gray-400">Election Date</th>
                <th class="p-2 border border-gray-400">Status</th>
            </tr>
            </thead>
            <tbody>
            <!-- Placeholder data for the table (Replace this with actual data from your backend) -->
            <tr class="d-flex items-center">
                <td class="p-2 border border-gray-300 justify-items-center">Campaign 1</td>
                <td class="p-2 border border-gray-300">AB-7890</td>
                <td class="p-2 border border-gray-300">5</td>
                <td class="p-2 border border-gray-300">100</td>
                <td class="p-2 border border-gray-300">2023-08-20</td>
                <td class="p-2 border border-gray-300">Scheduled</td>
            </tr>
            <tr>
                <td class="p-2 border border-gray-300">Campaign 2</td>
                <td class="p-2 border border-gray-300">AB-7892</td>
                <td class="p-2 border border-gray-300">4</td>
                <td class="p-2 border border-gray-300">75</td>
                <td class="p-2 border border-gray-300">2023-09-15</td>
                <td class="p-2 border border-gray-300">Scheduled</td>
            </tr>
            <tr>
                <td class="p-2 border border-gray-300">Campaign 3</td>
                <td class="p-2 border border-gray-300">AB-7894</td>
                <td class="p-2 border border-gray-300">8</td>
                <td class="p-2 border border-gray-300">110</td>
                <td class="p-2 border border-gray-300">2023-08-27</td>
                <td class="p-2 border border-gray-300">Scheduled</td>
            </tr>
            <tr>
                <td class="p-2 border border-gray-300">Campaign 4</td>
                <td class="p-2 border border-gray-300">AB-7896</td>
                <td class="p-2 border border-gray-300">14</td>
                <td class="p-2 border border-gray-300">96</td>
                <td class="p-2 border border-gray-300">2023-09-10</td>
                <td class="p-2 border border-gray-300">Scheduled</td>
            </tr>
            <tr>
                <td class="p-2 border border-gray-300">Campaign 5</td>
                <td class="p-2 border border-gray-300">AB-7898</td>
                <td class="p-2 border border-gray-300">6</td>
                <td class="p-2 border border-gray-300">300</td>
                <td class="p-2 border border-gray-300">2023-08-11</td>
                <td class="p-2 border border-gray-300">Ongoing</td>
            </tr>
            <tr>
                <td class="p-2 border border-gray-300">Campaign 6</td>
                <td class="p-2 border border-gray-300">AB-7900</td>
                <td class="p-2 border border-gray-300">12</td>
                <td class="p-2 border border-gray-300">134</td>
                <td class="p-2 border border-gray-300">2023-08-11</td>
                <td class="p-2 border border-gray-300">Ongoing</td>
            </tr>
            <tr>
                <td class="p-2 border border-gray-300">Campaign 7</td>
                <td class="p-2 border border-gray-300">AB-7902</td>
                <td class="p-2 border border-gray-300">9</td>
                <td class="p-2 border border-gray-300">168</td>
                <td class="p-2 border border-gray-300">2023-08-02</td>
                <td class="p-2 border border-gray-300">Finished</td>
            </tr>
            <tr>
                <td class="p-2 border border-gray-300">Campaign 8</td>
                <td class="p-2 border border-gray-300">AB-7904</td>
                <td class="p-2 border border-gray-300">20</td>
                <td class="p-2 border border-gray-300">123</td>
                <td class="p-2 border border-gray-300">2023-07-24</td>
                <td class="p-2 border border-gray-300">Finished</td>
            </tr>
            <tr>
                <td class="p-2 border border-gray-300">Campaign 9</td>
                <td class="p-2 border border-gray-300">AB-7906</td>
                <td class="p-2 border border-gray-300">5</td>
                <td class="p-2 border border-gray-300">100</td>
                <td class="p-2 border border-gray-300">2023-08-01</td>
                <td class="p-2 border border-gray-300">Finished</td>
            </tr>
            <tr>
                <td class="p-2 border border-gray-300">Campaign 10</td>
                <td class="p-2 border border-gray-300">AB-7908</td>
                <td class="p-2 border border-gray-300">18</td>
                <td class="p-2 border border-gray-300">169</td>
                <td class="p-2 border border-gray-300">2023-06-29</td>
                <td class="p-2 border border-gray-300">Finished</td>
            </tr>
            </tbody>
        </table>
    </div>
</div>
<jsp:include page="../components/footer.html"/>
</body>
</html>
