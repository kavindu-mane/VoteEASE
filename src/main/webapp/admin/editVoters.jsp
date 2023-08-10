<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Edit Voters | VoteEase</title>
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
        Voters - VoteEASE
    </h1>
    <form
            class="max-w-xl mx-auto p-6 bg-white border border-gray-300 rounded-lg shadow-lg"
    >
        <div class="mb-4">
            <label
                    class="block text-gray-700 text-sm font-bold mb-2" for="voterID"
            >Voter ID:</label
            >
            <input
                    type="text"
                    id="campaignID"
                    name="campaignID"
                    class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline"
                    placeholder="Enter Voter ID"
                    value="V011"
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
                    placeholder="Enter Name"
                    value="Christopher Anderson"
            />
        </div>
        <div class="mb-4">
            <label class="block text-gray-700 text-sm font-bold mb-2" for="email"
            >Email:</label
            >
            <input
                    type="email"
                    id="email"
                    name="email"
                    class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline"
                    placeholder="Enter Email Address"
                    value="christopher@gmail.com"
            />
        </div>
        <div class="mb-4">
            <label
                    class="block text-gray-700 text-sm font-bold mb-2"
                    for="phoneNumber"
            >Phone Number:</label
            >
            <input
                    type="tel"
                    id="phoneNumber"
                    name="phoneNumber"
                    class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline"
                    placeholder="Enter Phone Number"
                    value="0775472136"
            />
        </div>
        <div class="mb-4">
            <label
                    class="block text-gray-700 text-sm font-bold mb-2"
                    for="participatedCampaigns"
            >Participated Campaigns:</label
            >
            <input
                    type="number"
                    id="participatedCampaigns"
                    name="participatedCampaigns"
                    class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline"
                    placeholder="Enter Participated Campaigns"
                    value="100"
            />
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
