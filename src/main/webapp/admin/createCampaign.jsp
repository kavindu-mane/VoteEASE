<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Create Campaign | VoteEase</title>
    <link
            href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.15/dist/tailwind.min.css"
            rel="stylesheet"
    />
    <jsp:include page="../components/common.html"/>
</head>

<body>
<jsp:include page="../components/header.html"/>
<div class="container mx-auto my-0 p-2">
    <h2 class="text-blue-900 text-2xl flex justify-center font-semibold mb-6">
        Create Voting Campaign
    </h2>
    <form
            class="max-w-xl mx-auto p-6 bg-white border border-gray-300 rounded-lg shadow-lg"
    >
        <div class="mb-4">
            <label
                    class="block text-md font-bold text-gray-700"
                    for="campaignName"
            >Campaign Name</label
            >
            <input
                    type="text"
                    id="campaignName"
                    name="campaignName"
                    class="mt-1 p-2 block w-full border rounded-md shadow-sm focus:ring focus:ring-opacity-50 focus:border-blue-500"
                    placeholder="Enter Campaign Name"
            />
        </div>
        <div class="mb-4">
            <label
                    class="block text-md font-bold text-gray-700"
                    for="organizerName"
            >Organizer's Name</label
            >
            <input
                    type="text"
                    id="organizerName"
                    name="organizerName"
                    class="mt-1 p-2 block w-full border rounded-md shadow-sm focus:ring focus:ring-opacity-50 focus:border-blue-500"
                    placeholder="Enter Organizer's Name"
            />
        </div>
        <div class="mb-4">
            <label class="block text-md font-bold text-gray-700" for="startDate"
            >Start Date</label
            >
            <input
                    type="date"
                    id="startDate"
                    name="startDate"
                    class="mt-1 p-2 block w-full border rounded-md shadow-sm focus:ring focus:ring-opacity-50 focus:border-blue-500"
            />
        </div>
        <div class="mb-4">
            <label class="block text-md font-bold text-gray-700" for="endDate"
            >End Date</label
            >
            <input
                    type="date"
                    id="endDate"
                    name="endDate"
                    class="mt-1 p-2 block w-full border rounded-md shadow-sm focus:ring focus:ring-opacity-50 focus:border-blue-500"
            />
        </div>
        <div class="mt-4 mb-4">
            <label class="block text-md font-bold text-gray-700" for="description"
            >Description</label
            >
            <textarea
                    id="description"
                    name="description"
                    rows="4"
                    class="mt-1 p-2 block w-full border rounded-md shadow-sm focus:ring focus:ring-opacity-50 focus:border-blue-500"
                    placeholder="Enter Campaign Description"
            ></textarea>
        </div>
        <div class="flex justify-around mt-8 mb-10">
            <button
                    type="button"
                    class="bg-blue-700 hover:bg-blue-500 text-white font-semibold rounded-md p-2"
            >
                Cancel
            </button>
            <button
                    type="submit"
                    class="bg-blue-700 hover:bg-blue-500 text-white font-semibold rounded-md p-2"
            >
                Create Campaign
            </button>
        </div>
    </form>
</div>
<jsp:include page="../components/footer.html"/>
</body>
</html>
