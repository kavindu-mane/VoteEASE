<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>FAQ - VoteEASE</title>

    <%-- common imports --%>
    <jsp:include page="components/common.html"/>
  </head>

  <body>
    <%-- header --%>
    <jsp:include page="components/header.html"/>

    <%-- Section: Design Block --%>
    <section class="w-screen flex justify-center my-20">
      <section class="mx-5 text-center lg:text-left max-w-7xl w-full">
        <div class="grid items-center lg:grid-cols-2 gap-10">
          <%-- left side --%>
          <div class="hidden lg:flex lg:justify-center">
            <img
              src="img/faq.svg"
              class="w-2/3 h-2/3"
              alt="about image"
            />
          </div>
          <%-- right side --%>
          <div class="flex flex-col">
            <h1
              class="mb-6 text-2xl md:text-3xl lg:text-4xl font-bold col-span-2"
            >
              FAQs
            </h1>
            <div class="space-y-4 w-full text-left">
              <div
                class="pb-4 min-w-full bg-white drop-shadow-md shadow-md rounded-md"
              >
                <h3
                  class="flex items-center toggle-icon min-w-full cursor-pointer p-3"
                >
                  What is VoteEase?
                  <span class="ml-auto ps-10 text-gray-500 text-3xl"
                    >&#43;</span
                  >
                </h3>
                <div class="hidden faq-body text-left ps-10">
                  VoteEase is an online voting system designed to facilitate
                  secure and convenient voting processes for various types of
                  elections and polls. It allows users to cast their votes from
                  anywhere with an internet connection.
                </div>
              </div>
              <div
                class="pb-4 min-w-full bg-white drop-shadow-md shadow-md rounded-md"
              >
                <h3
                  class="flex items-center toggle-icon min-w-full cursor-pointer p-3"
                >
                  How can I contact customer support?
                  <span class="ml-auto ps-10 text-gray-500 text-3xl"
                    >&#43;</span
                  >
                </h3>
                <div class="hidden faq-body text-left ps-10">
                  Please visit our Contact Us page or call our support hotline
                  for assistance.
                </div>
              </div>
              <div
                class="pb-4 min-w-full bg-white drop-shadow-md shadow-md rounded-md"
              >
                <h3
                  class="flex items-center toggle-icon min-w-full cursor-pointer p-3"
                >
                  Is VoteEase secure?
                  <span class="ml-auto ps-10 text-gray-500 text-3xl"
                    >&#43;</span
                  >
                </h3>
                <div class="hidden faq-body text-left ps-10">
                  Yes,VoteEase employs robust security measures to ensure the
                  integrity and confidentiality of the voting process. It
                  utilizes encryption and other security protocols to safeguard
                  user data and prevent unauthorized access.
                </div>
              </div>
              <div
                class="pb-4 min-w-full bg-white drop-shadow-md shadow-md rounded-md"
              >
                <h3
                  class="flex items-center toggle-icon min-w-full cursor-pointer p-3"
                >
                  Who can use VoteEase?
                  <span class="ml-auto ps-10 text-gray-500 text-3xl"
                    >&#43;</span
                  >
                </h3>
                <div class="hidden faq-body text-left ps-10">
                  VoteEase is designed for organizations, institutions, and
                  businesses that need a reliable and efficient voting system
                  for conducting elections or gathering opinions from their
                  members or stakeholders.
                </div>
              </div>
              <div
                class="pb-4 min-w-full bg-white drop-shadow-md shadow-md rounded-md"
              >
                <h3
                  class="flex items-center toggle-icon min-w-full cursor-pointer p-3"
                >
                  How do voters participate in the voting process?
                  <span class="ml-auto ps-10 text-gray-500 text-3xl"
                    >&#43;</span
                  >
                </h3>
                <div class="hidden faq-body text-left ps-10">
                  Voters can participate in the voting process by accessing the
                  VoteEase platform through their web browsers or dedicated
                  mobile applications. They need to log in with their
                  credentials and cast their votes securely.
                </div>
              </div>
              <div
                class="pb-4 min-w-full bg-white drop-shadow-md shadow-md rounded-md"
              >
                <h3
                  class="flex items-center toggle-icon min-w-full cursor-pointer p-3"
                >
                  How do I register to use VoteEase?
                  <span class="ml-auto ps-10 text-gray-500 text-3xl"
                    >&#43;</span
                  >
                </h3>
                <div class="hidden faq-body text-left ps-10">
                  VoteEase provides a simple registration process. Users can
                  sign up using their email address and create a secure password
                  to access their accounts.
                </div>
              </div>
              <div
                class="pb-4 min-w-full bg-white drop-shadow-md shadow-md rounded-md"
              >
                <h3
                  class="flex items-center toggle-icon min-w-full cursor-pointer p-3"
                >
                  Is VoteEase compliant with data protection regulations ?
                  <span class="ml-auto ps-10 text-gray-500 text-3xl"
                    >&#43;</span
                  >
                </h3>
                <div class="hidden faq-body text-left ps-10">
                  Yes, VoteEase complies with relevant data protection
                  regulations and prioritizes the privacy and security of user
                  data.
                </div>
              </div>
              <div
                class="pb-4 min-w-full bg-white drop-shadow-md shadow-md rounded-md"
              >
                <h3
                  class="flex items-center toggle-icon min-w-full cursor-pointer p-3"
                >
                  What customer support options are available?
                  <span class="ml-auto ps-10 text-gray-500 text-3xl"
                    >&#43;</span
                  >
                </h3>
                <div class="hidden faq-body text-left ps-10">
                  VoteEase offers customer support channels, such as email and
                  online chat, to assist users with any issues or queries they
                  may have.
                </div>
              </div>
              <div
                class="pb-4 min-w-full bg-white drop-shadow-md shadow-md rounded-md"
              >
                <h3
                  class="flex items-center toggle-icon min-w-full cursor-pointer p-3"
                >
                  How are voting results calculated and displayed?
                  <span class="ml-auto ps-10 text-gray-500 text-3xl"
                    >&#43;</span
                  >
                </h3>
                <div class="hidden faq-body text-left ps-10">
                  VoteEase tallies the votes in real-time and presents the
                  results through clear and informative charts or graphs. The
                  results can be accessed securely by authorized individuals.
                </div>
              </div>
            </div>
          </div>
        </div>
      </section>
    </section>
    <%-- Section: Design Block --%>

    <%-- footer --%>
    <jsp:include page="components/footer.html"/>

    <script>
      // Toggle FAQ answer visibility
      $(document).ready(function () {
        $(".toggle-icon").click(function () {
          $(this).toggleClass("text-gray-500");
          $(this).closest("h3").next(".faq-body").slideToggle();
        });
      });
    </script>
  </body>
</html>
