<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Edit Campaign | VoteEase</title>
    <link
            href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.15/dist/tailwind.min.css"
            rel="stylesheet"
    />
    <jsp:include page="../components/common.html"/>
</head>

<body>
<jsp:include page="../components/header.html"/>
<div class="container mx-auto p-10">
    <h1
            class="text-3xl font-extrabold text-blue-900 mb-4 flex justify-center"
    >
        Campaigns - VoteEASE
    </h1>
    <form
            class="max-w-xl mx-auto p-6 bg-white border border-gray-300 rounded-lg shadow-lg"
    >
        <div class="mb-4">
            <label
                    class="block text-gray-700 text-sm font-bold mb-2"
                    for="campaignID"
            >Campaign ID:</label
            >
            <input
                    type="text"
                    id="campaignID"
                    name="campaignID"
                    class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline"
                    placeholder="Enter Campaign ID"
                    value="A011"
            />
        </div>
        <div class="mb-4">
            <label class="block text-gray-700 text-sm font-bold mb-2" for="name"
            >Name:</label
            >
            <input
                    type="text"
                    id="name"
                    name="name"
                    class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline"
                    placeholder="Enter Campaign Name"
                    value="Campaign 1"
            />
        </div>
        <div class="mb-4">
            <label
                    class="block text-gray-700 text-sm font-bold mb-2"
                    for="organizerName"
            >Organizer Name:</label
            >
            <input
                    type="text"
                    id="organizerName"
                    name="organizerName"
                    class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline"
                    placeholder="Enter Organizer Name"
                    value="Christopher Anderson"
            />
        </div>
        <div class="mb-4">
            <label
                    class="block text-gray-700 text-sm font-bold mb-2"
                    for="candidatesCount"
            >Candidate's Count:</label
            >
            <input
                    type="number"
                    id="candidatesCount"
                    name="candidatesCount"
                    class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline"
                    placeholder="Enter Candidate's Count"
                    value="100"
            />
        </div>
        <div class="mb-4">
            <label
                    class="block text-gray-700 text-sm font-bold mb-2"
                    for="electionDate"
            >Election Date:</label
            >
            <input
                    type="date"
                    id="electionDate"
                    name="electionDate"
                    class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline"
            />
        </div>
        <div class="mb-4">
            <label class="block text-gray-700 text-sm font-bold mb-2" for="status"
            >Status:</label
            >
            <select
                    id="status"
                    name="status"
                    class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline"
            >
                <option value="Scheduled">Scheduled</option>
                <option value="Ongoing">Ongoing</option>
                <option value="Finished">Finished</option>
            </select>
            <div
                    class="pointer-events-none absolute inset-y-0 right-0 flex items-center px-2 text-gray-700"
            >
                <svg
                        class="fill-current h-4 w-4"
                        xmlns="http://www.w3.org/2000/svg"
                        viewBox="0 0 20 20"
                >
                    <path d="M10 12l-6-6h12z"/>
                </svg>
            </div>
        </div>
        <div class="flex justify-center space-x-4">
            <button
                    class="bg-blue-700 hover:bg-blue-500 text-white font-extrabold py-2 px-6 rounded-md"
                    type="button"
            >
                Cancel
            </button>
            <button
                    class="bg-blue-700 hover:bg-blue-500 text-white font-extrabold py-2 px-6 rounded-md"
                    type="submit"
            >
                Save
            </button>
        </div>
    </form>
</div>
<jsp:include page="../components/footer.html"/>
</body>
</html>
