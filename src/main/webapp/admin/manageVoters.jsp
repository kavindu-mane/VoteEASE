<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Voters | VoteEase</title>
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
        Voters - VoteEASE
    </h1>
    <div class="bg-white p-4 rounded-xl shadow-lg">
        <table class="w-full border border-collapse">
            <thead>
            <tr class="bg-gray-300">
                <th class="p-2 border border-gray-400">Voter ID</th>
                <th class="p-2 border border-gray-400">Name</th>
                <th class="p-2 border border-gray-400">Email ID</th>
                <th class="p-2 border border-gray-400">Phone No</th>
                <th class="p-2 border border-gray-400">Participated Campaigns</th>
                <th class="p-2 border border-gray-400">Action</th>
            </tr>
            </thead>
            <tbody>
            <tr class="d-flex items-center">
                <td class="p-2 border border-gray-300">V011</td>
                <td class="p-2 border border-gray-300">Christopher Anderson</td>
                <td class="p-2 border border-gray-300">christopher@gmail.com</td>
                <td class="p-2 border border-gray-300">0775472136</td>
                <td class="p-2 border border-gray-300">100</td>
                <td
                        class="p-2 border border-gray-300 flex justify-center space-x-5"
                >
                    <a
                            href="editVoters.jsp"
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
                <td class="p-2 border border-gray-300">V012</td>
                <td class="p-2 border border-gray-300">Daniel White</td>
                <td class="p-2 border border-gray-300">danielwhite@gmail.com</td>
                <td class="p-2 border border-gray-300">0776175128</td>
                <td class="p-2 border border-gray-300">75</td>
                <td
                        class="p-2 border border-gray-300 flex justify-center space-x-5"
                >
                    <a
                            href="editVoters.jsp"
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
                <td class="p-2 border border-gray-300">V013</td>
                <td class="p-2 border border-gray-300">Lisa Young</td>
                <td class="p-2 border border-gray-300">lisayoung@gmail.com</td>
                <td class="p-2 border border-gray-300">07698751247</td>
                <td class="p-2 border border-gray-300">125</td>
                <td
                        class="p-2 border border-gray-300 flex justify-center space-x-5"
                >
                    <a
                            href="editVoters.jsp"
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
                <td class="p-2 border border-gray-300">V014</td>
                <td class="p-2 border border-gray-300">Robert Lewis</td>
                <td class="p-2 border border-gray-300">robertlewis148@gmail.com</td>
                <td class="p-2 border border-gray-300">0748134729</td>
                <td class="p-2 border border-gray-300">42</td>
                <td
                        class="p-2 border border-gray-300 flex justify-center space-x-5"
                >
                    <a
                            href="editVoters.jsp"
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
                <td class="p-2 border border-gray-300">V015</td>
                <td class="p-2 border border-gray-300">Mary Rodriguez</td>
                <td class="p-2 border border-gray-300">rodriguez41@gmail.com</td>
                <td class="p-2 border border-gray-300">0768421754</td>
                <td class="p-2 border border-gray-300">305</td>
                <td
                        class="p-2 border border-gray-300 flex justify-center space-x-5"
                >
                    <a
                            href="editVoters.jsp"
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
                <td class="p-2 border border-gray-300">V016</td>
                <td class="p-2 border border-gray-300">James Scott</td>
                <td class="p-2 border border-gray-300">jamesscott874@gmail.com</td>
                <td class="p-2 border border-gray-300">0777412843</td>
                <td class="p-2 border border-gray-300">140</td>
                <td
                        class="p-2 border border-gray-300 flex justify-center space-x-5"
                >
                    <a
                            href="editVoters.jsp"
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
                <td class="p-2 border border-gray-300">V017</td>
                <td class="p-2 border border-gray-300">Jennifer Taylor</td>
                <td class="p-2 border border-gray-300">jennitaylor147@gmail.com</td>
                <td class="p-2 border border-gray-300">0776541235</td>
                <td class="p-2 border border-gray-300">154</td>
                <td
                        class="p-2 border border-gray-300 flex justify-center space-x-5"
                >
                    <a
                            href="editVoters.jsp"
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
                <td class="p-2 border border-gray-300">V018</td>
                <td class="p-2 border border-gray-300">James Scott</td>
                <td class="p-2 border border-gray-300">jamesscott123@gmail.com</td>
                <td class="p-2 border border-gray-300">0776412864</td>
                <td class="p-2 border border-gray-300">50</td>
                <td
                        class="p-2 border border-gray-300 flex justify-center space-x-5"
                >
                    <a
                            href="editVoters.jsp"
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
                <td class="p-2 border border-gray-300">V019</td>
                <td class="p-2 border border-gray-300">David Davis</td>
                <td class="p-2 border border-gray-300">daviddavis754@gmail.com</td>
                <td class="p-2 border border-gray-300">0761475124</td>
                <td class="p-2 border border-gray-300">110</td>
                <td
                        class="p-2 border border-gray-300 flex justify-center space-x-5"
                >
                    <a
                            href="editVoters.jsp"
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
                <td class="p-2 border border-gray-300">V020</td>
                <td class="p-2 border border-gray-300">Emily Johnson</td>
                <td class="p-2 border border-gray-300">emilyjohnson741@gmail.com</td>
                <td class="p-2 border border-gray-300">071845242</td>
                <td class="p-2 border border-gray-300">100</td>
                <td
                        class="p-2 border border-gray-300 flex justify-center space-x-5"
                >
                    <a
                            href="editVoters.jsp"
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
