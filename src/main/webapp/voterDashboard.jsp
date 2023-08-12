<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Voter Dashboard</title>

    <%-- custom css --%>
    <link href="css/dashboard.css" rel="stylesheet" />
    <%-- common imports --%>
    <jsp:include page="components/common.html"/>

  </head>
  <body>
    <%-- header --%>
    <jsp:include page="components/header.html"/>
    
     <div class="container">
        <%
            ArrayList<String[]> dataRows = (ArrayList<String[]>) request.getAttribute("dataRows");

            for (String[] row : dataRows) {
        %>
            
           <%-- <div>
                <p><strong>Account ID:</strong> <%= row[0] %></p>
                <p><strong>Account Type:</strong> <%= row[1] %></p>
                <p><strong>Email:</strong> <%= row[2] %></p>
                <p><strong>Voter ID:</strong> <%= row[3] %></p>
                <p><strong>Voter Name:</strong> <%= row[4] %></p>
                <hr>
            </div>--%>
        <%
            }
        %>
    </div>

    <%-- add your code this area only: start --%>
    <div class="container mx-auto py-8">
      <h1 class="text-3xl font-bold mb-4">Welcome, <%= row[4] %>!</h1>
      <div class="grid grid-cols-1 gap-4 sm:grid-cols-2">
        <div>
          <p class="text-lg mb-2">
            <span class="font-semibold">Voter ID:</span> <%= row[3] %>
          </p>
          <p class="text-lg mb-2">
            <span class="font-semibold">Email:</span> <%= row[2] %>
          </p>
        </div>
        <div>
          <p class="text-lg mb-2">
            <span class="font-semibold">Account ID:</span> <%= row[0] %>
          </p>
          <p class="text-lg mb-2">
            <span class="font-semibold">Status: </span>Voter
          </p>
        </div>
      </div>

      <%-- Voter Notifications --%>
      <h2 class="text-xl font-semibold mt-8 mb-4">Notifications</h2>
      <div class="bg-white p-4 rounded-md shadow-md">
        <p class="text-sm text-gray-600">
          Campaign "Campaign 3" has ended. Results will be announced soon.
        </p>
        <p class="text-sm text-gray-600">
          Campaign "Campaign 4" has been canceled due to low participation.
        </p>
      </div>

      <%-- News Section --%>
      <h2 class="text-xl font-semibold mt-8 mb-4">News</h2>
      <div class="grid grid-cols-1 gap-4 sm:grid-cols-2">
        <div class="bg-white p-6 rounded-lg shadow-md">
          <h3 class="text-lg font-semibold mb-2">Latest News</h3>
          <p class="text-md text-gray-700 mb-4">
            Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc
            euismod, arcu nec pretium elementum, mauris magna auctor justo, id
            vehicula ligula felis vel nunc.
          </p>
          <p class="text-md text-gray-600">Published on: August 25, 2023</p>
        </div>
        <div class="bg-white p-6 rounded-lg shadow-md">
          <h3 class="text-lg font-semibold mb-2">Important Update</h3>
          <p class="text-md text-gray-700 mb-4">
            Sed eget dapibus eros, id convallis nisi. Proin hendrerit, nisl a
            tristique elementum, odio purus hendrerit ex, ut eleifend arcu felis
            nec nunc.
          </p>
          <p class="text-md text-gray-600">Published on: August 20, 2023</p>
        </div>
        <%-- Add more news cards here --%>
      </div>

      <%-- Voting Options --%>
      <h2 class="text-xl font-semibold mt-8 mb-4">
        Available Voting Campaigns
      </h2>
      <ul id="voting-campaigns" class="grid grid-cols-1 gap-4 sm:grid-cols-2">
        <li>
          <div class="p-6 bg-white rounded-lg shadow-md">
            <h3 class="text-lg font-semibold mb-2">Campaign 1</h3>
            <p class="text-md mb-2">
              <span class="font-semibold">Start:</span> August 1, 2023
            </p>
            <p class="text-md mb-2">
              <span class="font-semibold">End:</span> August 10, 2023
            </p>
            <p class="text-md mb-2">
              <span class="font-semibold">Status:</span> Ongoing
            </p>
            <p class="text-md mb-2">
              Description: Lorem ipsum dolor sit amet, consectetur adipiscing
              elit.
            </p>
            <button
              onclick="voteForCampaign(1)"
              class="mt-4 px-4 py-2 bg-blue-600 hover:bg-blue-700 text-white font-semibold rounded shadow"
            >
              Vote
            </button>
            <button
              class="mt-2 px-4 py-2 bg-blue-600 hover:bg-blue-700 text-white font-semibold rounded shadow"
            >
              View Details
            </button>
          </div>
        </li>
        <li>
          <div class="p-6 bg-white rounded-lg shadow-md">
            <h3 class="text-lg font-semibold mb-2">Campaign 2</h3>
            <p class="text-md mb-2">
              <span class="font-semibold">Start:</span> August 15, 2023
            </p>
            <p class="text-md mb-2">
              <span class="font-semibold">End:</span> August 20, 2023
            </p>
            <p class="text-md mb-2">
              <span class="font-semibold">Status:</span> Scheduled
            </p>
            <p class="text-md mb-2">
              Description: Lorem ipsum dolor sit amet, consectetur adipiscing
              elit.
            </p>
            <button
              onclick="voteForCampaign(2)"
              class="mt-4 px-4 py-2 bg-green-600 hover:bg-green-700 text-white font-semibold rounded shadow"
            >
              Vote
            </button>
            <button
              class="mt-2 px-4 py-2 bg-green-600 hover:bg-green-700 text-white font-semibold rounded shadow"
            >
              View Details
            </button>
          </div>
        </li>
        <%-- Add more campaigns here --%>
      </ul>
    </div>
    <%-- add your code this area only: end--%>

    <%-- footer --%>
    <jsp:include page="components/footer.html"/>

    <%-- header and footer js --%>
    <script>
      // Functions from the first code snippet (voteForCampaign, createCampaign, etc.)
      function voteForCampaign(campaignId) {
        alert(`You voted for Campaign ${campaignId}`);
      }
    </script>
  </body>
</html>
