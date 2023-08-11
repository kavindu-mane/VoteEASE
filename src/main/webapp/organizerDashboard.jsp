<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Organizer Dashboard - VoteEASE</title>
    <%-- custom css --%>
    <link href="css/dashboard.css" rel="stylesheet" />
    <%-- common imports --%>
    <jsp:include page="components/common.html"/>
  </head>

  <body>
    <%-- header --%>
    <jsp:include page="components/header.html"/>

    <%-- add your code this area only: start --%>
    <div class="container mx-auto py-8">
      <h1 class="text-4xl font-bold text-blue-600 mb-4">
        Welcome, [Organizer Name]!
      </h1>
      <p class="text-gray-700 text-xl mb-2">Organizer ID: [Organizer ID]</p>
      <p class="text-gray-700 text-xl mb-4">Account ID: [Account ID]</p>

      <%-- Organizer Actions --%>
      <h2 class="text-2xl font-bold text-blue-600 mb-4">Organizer Actions</h2>
      <ul
        id="organizer-actions"
        class="grid grid-cols-1 gap-4 sm:grid-cols-2 lg:grid-cols-3"
      >
        <li>
          <button
            class="px-4 py-2 bg-blue-600 text-white font-semibold rounded shadow"
          >
            Create Voting Campaign
          </button>
        </li>
        <li>
          <button
            class="px-4 py-2 bg-blue-600 text-white font-semibold rounded shadow"
          >
            Manage Campaigns
          </button>
        </li>
        <li>
          <button
            class="px-4 py-2 bg-blue-600 text-white font-semibold rounded shadow"
          >
            View Reports
          </button>
        </li>
        <%-- Add more organizer actions here --%>
      </ul>

      <%-- Voting Campaign Cards --%>
      <h2 class="text-2xl font-bold text-blue-600 mt-8 mb-4">
        Voting Campaigns
      </h2>
      <div class="grid grid-cols-1 gap-4 sm:grid-cols-2">
        <div class="p-6 bg-white rounded-lg shadow-md">
          <h3 class="text-xl font-semibold text-gray-800">Campaign 1</h3>
          <p class="text-gray-600">Start: August 1, 2023</p>
          <p class="text-gray-600">End: August 10, 2023</p>
          <p class="text-gray-600">Status: Scheduled</p>
          <p class="text-gray-600">Link: https://campaign1</p>
          <button
            class="mt-4 px-4 py-2 bg-blue-600 text-white font-semibold rounded shadow"
          >
            View Votes
          </button>
        </div>

        <div class="p-6 bg-white rounded-lg shadow-md">
          <h3 class="text-xl font-semibold text-gray-800">Campaign 2</h3>
          <p class="text-gray-600">Start: August 15, 2023</p>
          <p class="text-gray-600">End: August 20, 2023</p>
          <p class="text-gray-600">Status: Ongoing</p>
          <p class="text-gray-600">Link: https://campaign2</p>
          <button
            class="mt-4 px-4 py-2 bg-blue-600 text-white font-semibold rounded shadow"
          >
            View Votes
          </button>
        </div>
        <%-- Add more voting campaign cards here --%>
      </div>
    </div>
    <%-- add your code this area only: end--%>

    <%-- footer --%>
    <jsp:include page="components/footer.html"/>
  </body>
</html>
