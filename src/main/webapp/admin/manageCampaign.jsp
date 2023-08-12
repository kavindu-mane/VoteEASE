<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Campaign | VoteEase</title>
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
        Campaigns - VoteEASE
    </h1>
    <div class="bg-white p-4 rounded-xl shadow-lg">
        <table class="w-full border border-collapse">
            <thead>
            <tr class="bg-gray-300">
                <th class="p-2 border border-gray-400">Campaign ID</th>
                <th class="p-2 border border-gray-400">Name</th>
                <th class="p-2 border border-gray-400">Organizer Name</th>
                <th class="p-2 border border-gray-400">Candidate's Count</th>
                <th class="p-2 border border-gray-400">Election Date</th>
                <th class="p-2 border border-gray-400">Status</th>
                <th class="p-2 border border-gray-400">Action</th>
            </tr>
            </thead>
            <tbody>
            <tr class="d-flex items-center">
                <td class="p-2 border border-gray-300">A011</td>
                <td class="p-2 border border-gray-300">Campaign 1</td>
                <td class="p-2 border border-gray-300">Christopher Anderson</td>
                <td class="p-2 border border-gray-300">100</td>
                <td class="p-2 border border-gray-300">2023-08-20</td>
                <td class="p-2 border border-gray-300">Scheduled</td>
                <td
                        class="p-2 border border-gray-300 flex justify-center space-x-5"
                >
                    <a
                            href="editCampaign.jsp"
                            class="bg-blue-700 hover:bg-blue-600 text-white font-bold py-2 px-4 rounded-md"
                    >Edit</a
                    >

                    <button
                            class="bg-red-600 hover:bg-red-500 text-white font-bold py-2 px-4 rounded-md"
                    >
                        Delete
                    </button>
                </td>
            </tr>
            <tr>
                <td class="p-2 border border-gray-300">A012</td>
                <td class="p-2 border border-gray-300">Campaign 2</td>
                <td class="p-2 border border-gray-300">Daniel White</td>
                <td class="p-2 border border-gray-300">75</td>
                <td class="p-2 border border-gray-300">2023-09-15</td>
                <td class="p-2 border border-gray-300">Scheduled</td>
                <td
                        class="p-2 border border-gray-300 flex justify-center space-x-5"
                >
                    <a
                            href="editCampaign.jsp"
                            class="bg-blue-700 hover:bg-blue-600 text-white font-bold py-2 px-4 rounded-md"
                    >Edit</a
                    >
                    <button
                            class="bg-red-600 hover:bg-red-500 text-white font-bold py-2 px-4 rounded-md"
                    >
                        Delete
                    </button>
                </td>
            </tr>
            <tr>
                <td class="p-2 border border-gray-300">A013</td>
                <td class="p-2 border border-gray-300">Campaign 3</td>
                <td class="p-2 border border-gray-300">Lisa Young</td>
                <td class="p-2 border border-gray-300">110</td>
                <td class="p-2 border border-gray-300">2023-08-27</td>
                <td class="p-2 border border-gray-300">Scheduled</td>
                <td
                        class="p-2 border border-gray-300 flex justify-center space-x-5"
                >
                    <a
                            href="editCampaign.jsp"
                            class="bg-blue-700 hover:bg-blue-600 text-white font-bold py-2 px-4 rounded-md"
                    >Edit</a
                    >
                    <button
                            class="bg-red-600 hover:bg-red-500 text-white font-bold py-2 px-4 rounded-md"
                    >
                        Delete
                    </button>
                </td>
            </tr>
            <tr>
                <td class="p-2 border border-gray-300">A014</td>
                <td class="p-2 border border-gray-300">Campaign 4</td>
                <td class="p-2 border border-gray-300">Robert Lewis</td>
                <td class="p-2 border border-gray-300">96</td>
                <td class="p-2 border border-gray-300">2023-09-10</td>
                <td class="p-2 border border-gray-300">Scheduled</td>
                <td
                        class="p-2 border border-gray-300 flex justify-center space-x-5"
                >
                    <a
                            href="editCampaign.jsp"
                            class="bg-blue-700 hover:bg-blue-600 text-white font-bold py-2 px-4 rounded-md"
                    >Edit</a
                    >
                    <button
                            class="bg-red-600 hover:bg-red-500 text-white font-bold py-2 px-4 rounded-md"
                    >
                        Delete
                    </button>
                </td>
            </tr>
            <tr>
                <td class="p-2 border border-gray-300">A015</td>
                <td class="p-2 border border-gray-300">Campaign 5</td>
                <td class="p-2 border border-gray-300">Mary Rodriguez</td>
                <td class="p-2 border border-gray-300">300</td>
                <td class="p-2 border border-gray-300">2023-08-11</td>
                <td class="p-2 border border-gray-300">Ongoing</td>
                <td
                        class="p-2 border border-gray-300 flex justify-center space-x-5"
                >
                    <a
                            href="editCampaign.jsp"
                            class="bg-blue-700 hover:bg-blue-600 text-white font-bold py-2 px-4 rounded-md"
                    >Edit</a
                    >
                    <button
                            class="bg-red-600 hover:bg-red-500 text-white font-bold py-2 px-4 rounded-md"
                    >
                        Delete
                    </button>
                </td>
            </tr>
            <tr>
                <td class="p-2 border border-gray-300">A016</td>
                <td class="p-2 border border-gray-300">Campaign 6</td>
                <td class="p-2 border border-gray-300">James Scott</td>
                <td class="p-2 border border-gray-300">134</td>
                <td class="p-2 border border-gray-300">2023-08-11</td>
                <td class="p-2 border border-gray-300">Ongoing</td>
                <td
                        class="p-2 border border-gray-300 flex justify-center space-x-5"
                >
                    <a
                            href="editCampaign.jsp"
                            class="bg-blue-700 hover:bg-blue-600 text-white font-bold py-2 px-4 rounded-md"
                    >Edit</a
                    >
                    <button
                            class="bg-red-600 hover:bg-red-500 text-white font-bold py-2 px-4 rounded-md"
                    >
                        Delete
                    </button>
                </td>
            </tr>
            <tr>
                <td class="p-2 border border-gray-300">A017</td>
                <td class="p-2 border border-gray-300">Campaign 7</td>
                <td class="p-2 border border-gray-300">Jennifer Taylor</td>
                <td class="p-2 border border-gray-300">168</td>
                <td class="p-2 border border-gray-300">2023-08-02</td>
                <td class="p-2 border border-gray-300">Finished</td>
                <td
                        class="p-2 border border-gray-300 flex justify-center space-x-5"
                >
                    <a
                            href="editCampaign.jsp"
                            class="bg-blue-700 hover:bg-blue-600 text-white font-bold py-2 px-4 rounded-md"
                    >Edit</a
                    >
                    <button
                            class="bg-red-600 hover:bg-red-500 text-white font-bold py-2 px-4 rounded-md"
                    >
                        Delete
                    </button>
                </td>
            </tr>
            <tr>
                <td class="p-2 border border-gray-300">A018</td>
                <td class="p-2 border border-gray-300">Campaign 8</td>
                <td class="p-2 border border-gray-300">James Scott</td>
                <td class="p-2 border border-gray-300">123</td>
                <td class="p-2 border border-gray-300">2023-07-24</td>
                <td class="p-2 border border-gray-300">Finished</td>
                <td
                        class="p-2 border border-gray-300 flex justify-center space-x-5"
                >
                    <a
                            href="editCampaign.jsp"
                            class="bg-blue-700 hover:bg-blue-600 text-white font-bold py-2 px-4 rounded-md"
                    >Edit</a
                    >
                    <button
                            class="bg-red-600 hover:bg-red-650 text-white font-bold py-2 px-4 rounded-md"
                    >
                        Delete
                    </button>
                </td>
            </tr>
            <tr>
                <td class="p-2 border border-gray-300">A019</td>
                <td class="p-2 border border-gray-300">Campaign 9</td>
                <td class="p-2 border border-gray-300">David Davis</td>
                <td class="p-2 border border-gray-300">100</td>
                <td class="p-2 border border-gray-300">2023-08-01</td>
                <td class="p-2 border border-gray-300">Finished</td>
                <td
                        class="p-2 border border-gray-300 flex justify-center space-x-5"
                >
                    <a
                            href="editCampaign.jsp"
                            class="bg-blue-700 hover:bg-blue-600 text-white font-bold py-2 px-4 rounded-md"
                    >Edit</a
                    >
                    <button
                            class="bg-red-600 hover:bg-red-500 text-white font-bold py-2 px-4 rounded-md"
                    >
                        Delete
                    </button>
                </td>
            </tr>
            <tr>
                <td class="p-2 border border-gray-300">A020</td>
                <td class="p-2 border border-gray-300">Campaign 10</td>
                <td class="p-2 border border-gray-300">Emily Johnson</td>
                <td class="p-2 border border-gray-300">169</td>
                <td class="p-2 border border-gray-300">2023-06-29</td>
                <td class="p-2 border border-gray-300">Finished</td>
                <td
                        class="p-2 border border-gray-300 flex justify-center space-x-5"
                >
                    <a
                            href="editCampaign.jsp"
                            class="bg-blue-700 hover:bg-blue-600 text-white font-bold py-2 px-4 rounded-md"
                    >Edit</a
                    >
                    <button
                            class="bg-red-600 hover:bg-red-500 text-white font-bold py-2 px-4 rounded-md"
                    >
                        Delete
                    </button>
                </td>
            </tr>
            </tbody>
        </table>
    </div>
</div>
<jsp:include page="../components/footer.html"/>
<script>
    const button1 = document.getElementById("edit");
    button1.addEventListener("click", function () {
        window.location.href = "editCampaign.jsp";
    });
</script>
</body>
</html>
