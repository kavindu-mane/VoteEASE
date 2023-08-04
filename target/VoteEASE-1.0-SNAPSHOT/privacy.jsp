<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <title>Privacy | VoteEASE</title>

    <%-- common imports --%>
    <jsp:include page="components/common.html"/>
  </head>

  <body class="bg-gray-100">
    <jsp:include page="components/header.html"/>

    <div class="flex justify-center py-10">
      <div
        class="block mx-3 sm:mx-8 md:mx-12 lg:mx-16 xl:mx-20 p-6 py-8 px-4 sm:px-6 lg:px-8 bg-white border border-gray-200 rounded-lg shadow-2xl drop-shadow-xl"
      >
        <div class="container mx-auto px-10 py-5">
          <h1 class="text-3xl font-bold mb-5 font-belanosima">
            Privacy Policy
          </h1>
          <p class="mb-2 font-medium">
            The privacy of our users is highly regarded and given utmost
            priority. This Privacy Policy elucidates the process of gathering,
            utilizing,
          </p>
          <p class="mb-5 font-medium">
            and revealing personal information when availing our system.
          </p>

          <h2
            class="flex justify-normal text-2xl mb-3 mt-10 font-belanosima font-medium items-center"
          >
            <span
              class="material-symbols-outlined text-white rounded-lg bg-blue-600 p-2 mr-5"
            >
              info
            </span>
            Information We Collect
          </h2>
          <p class="mb-4 font-medium">
            We may collect the following types of information from users:
          </p>
          <ul class="list-disc ml-8 mb-6">
            <li class="mb-2 font-medium">
              Personal Information: Name, email address, postal address, phone
              number, etc.
            </li>
            <li class="mb-2 font-medium">
              Demographic Information: Age, gender, location, etc.
            </li>
            <li class="mb-2 font-medium">
              Voting Information: Votes cast, voting preferences, etc.
            </li>
          </ul>
          <p class="mb-4 font-medium">
            We collect this information to conduct fair and secure online
            voting.
          </p>

          <h2
            class="flex text-2xl mb-3 mt-6 font-belanosima font-medium items-center"
          >
            <span
              class="material-symbols-outlined text-white rounded-lg bg-blue-600 p-2 mr-5"
            >
              question_mark
            </span>
            Use of Information
          </h2>
          <p class="mb-4 font-medium">
            We use the collected information for the following purposes:
          </p>
          <ul class="list-disc ml-8 mb-6">
            <li class="mb-2 font-medium">
              Administering the voting process and ensuring its integrity
            </li>
            <li class="mb-2 font-medium">
              Sending voting confirmations and notifications
            </li>
            <li class="mb-2 font-medium">
              Improving our voting system and services
            </li>
          </ul>

          <h2
            class="flex text-2xl mb-3 mt-6 font-belanosima font-medium items-center"
          >
            <span
              class="material-symbols-outlined text-white rounded-lg bg-blue-600 p-2 mr-5"
            >
              verified_user
            </span>
            Data Security
          </h2>
          <p class="mb-2 font-medium">
            We take data security seriously and have implemented measures to
            protect your personal data.
          </p>
          <p class="mb-5 font-medium">
            However, no method of transmission over the internet or electronic
            storage is 100% secure. We cannot guarantee the absolute security of
            your information.
          </p>

          <h2
            class="flex text-2xl mb-3 mt-6 font-belanosima font-medium items-center"
          >
            <span
              class="material-symbols-outlined text-white rounded-lg bg-blue-600 p-2 mr-5"
            >
              save
            </span>
            Data Retention
          </h2>
          <p class="mb-5 font-medium">
            We retain your personal information only as long as necessary for
            the purposes outlined in this privacy policy.
          </p>

          <h2
            class="flex text-2xl mb-3 mt-6 font-belanosima font-medium items-center"
          >
            <span
              class="material-symbols-outlined text-white rounded-lg bg-blue-600 p-2 mr-5"
            >
              cookie
            </span>
            Cookies and Similar Technologies
          </h2>
          <p class="mb-2 font-medium">
            We use cookies and similar technologies to enhance your voting
            experience and provide personalized content.
          </p>
          <p class="mb-5 font-medium">
            You can modify your browser settings to refuse all cookies or
            indicate when a cookie is being sent.
          </p>

          <h2
            class="flex text-2xl mb-3 mt-6 font-belanosima font-medium items-center"
          >
            <span
              class="material-symbols-outlined text-white rounded-lg bg-blue-600 p-2 mr-5"
            >
              gavel
            </span>
            Third-party Services
          </h2>
          <p class="mb-2 font-medium">
            We may use third-party services that collect, monitor, and analyze
            data to improve our services.
          </p>
          <p class="mb-5 font-medium">
            Third-party service providers have their privacy policies governing
            the use of your information.
          </p>

          <h2
            class="flex text-2xl mb-3 mt-6 font-belanosima font-medium items-center"
          >
            <span
              class="material-symbols-outlined text-white rounded-lg bg-blue-600 p-2 mr-5"
            >
              report
            </span>
            Changes to This Privacy Policy
          </h2>
          <p class="mb-4 font-medium">
            We reserve the right to modify this Privacy Policy at any time.
            Changes and clarifications will take effect immediately upon posting
            on our website.
          </p>

          <h2
            class="flex text-2xl mb-3 mt-6 font-belanosima font-medium items-center"
          >
            <span
              class="material-symbols-outlined text-white rounded-lg bg-blue-600 p-2 mr-5"
            >
              phone_in_talk
            </span>
            Contact Us
          </h2>
          <p class="mb-4 font-medium">
            If you have any questions or concerns about this Privacy Policy,
            please contact us:
          </p>
          <ul class="list-disc ml-8 mb-4">
            <li class="mb-2 font-medium">Email: contact@voteease.com</li>
            <li class="mb-4 font-medium">
              Address: 123 Main Street, Wellawatte, Colomb0-06.
            </li>
          </ul>
        </div>
      </div>
    </div>

    <jsp:include page="components/footer.html"/>
  </body>
</html>
