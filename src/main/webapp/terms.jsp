<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>VoteEASE | Terms</title>

    <%-- common imports --%>
    <jsp:include page="components/common.html"/>
  </head>
  <body>
    <%-- header --%>
    <jsp:include page="components/header.html"/>

    <div class="flex justify-center">
      <%-- card --%>
      <div
        class="flex rounded-md my-20 mx-3 flex-col font-sans max-w-7xl justify-center items-center text-slate-100"
      >
        <%-- hero section --%>
        <div class="py-5 w-full h-24 flex items-center justify-center">
          <%-- icon --%>
          <div
            class="flex shadow-md items-center justify-center w-16 h-16 bg-sky-500 mr-5 rounded-full text-xl text-white"
          >
            <i class="fa-solid fa-terminal"></i>
          </div>
          <div class="font-bold text-slate-600">
            <h2 class="text-4xl">TERMS OF SERVICE</h2>
            <p class="text-lg">Last update on July 19 2023</p>
          </div>
        </div>

        <%-- content --%>
        <div
          class="grid grid-cols-1 mt-16 sm:grid-cols-2 md:grid-cols-3 gap-8 w-fit h-fit text-justify"
        >
          <div
            class="bg-white rounded-2xl p-8 mx-4 sm:mx-0 max-w-sm shadow-2xl text-slate-500 cursor-pointer hover:scale-105 hover:bg-sky-100 ease-in duration-300"
          >
            <div
            class="flex shadow-md items-center justify-center w-9 h-9 bg-slate-500 rounded-full text-base mb-2 text-white"
            >
              <i class="fa-solid fa-1"></i>
            </div>
            <h4 class="text-2xl font-bold mb-4">
              Eligibility and Registration
            </h4>
            <p class="text-base">
              You must be of legal voting age in your jurisdiction to use the
              System. You agree to provide accurate and complete information
              during the registration process. You are responsible for
              maintaining the confidentiality of your account credentials
              (username and password).
            </p>
          </div>

          <div
            class="bg-white rounded-2xl p-8 mx-4 sm:mx-0 max-w-sm shadow-2xl text-slate-500 cursor-pointer hover:scale-105 hover:bg-sky-100 ease-in duration-300"
          >
            <div
            class="flex shadow-md items-center justify-center w-9 h-9 bg-slate-500 rounded-full text-base mb-2 text-white"
            >
              <i class="fa-solid fa-2"></i>
            </div>
            <h4 class="text-2xl font-bold mb-4">
              Terms of use
            </h4>
            <p class="text-base">
              You shall use the System only for its intended purposes, which
              include casting votes and managing voting campaigns. You shall
              not engage in any activity that violates applicable laws,
              regulations, or the rights of others. You shall not attempt to
              interfere with the proper functioning of the System or
              compromise its security.
            </p>
          </div>

          <div
            class="bg-white rounded-2xl p-8 mx-4 sm:mx-0 max-w-sm shadow-2xl text-slate-500 cursor-pointer hover:scale-105 hover:bg-sky-100 ease-in duration-300"
          >
            <div
            class="flex shadow-md items-center justify-center w-9 h-9 bg-slate-500 rounded-full text-base mb-2 text-white"
            >
              <i class="fa-solid fa-3"></i>
            </div>
            <h4 class="text-2xl font-bold mb-4">
              Voting Process
            </h4>
            <p class="text-base">
              You agree to cast your vote(s) in a fair and lawful manner. You
              shall not attempt to manipulate or tamper with the voting
              process or the results. You acknowledge that all votes cast are
              final and cannot be changed or revoked.
            </p>
          </div>

          <div
            class="bg-white rounded-2xl p-8 mx-4 sm:mx-0 max-w-sm shadow-2xl text-slate-500 cursor-pointer hover:scale-105 hover:bg-sky-100 ease-in duration-300"
          >
            <div
            class="flex shadow-md items-center justify-center w-9 h-9 bg-slate-500 rounded-full text-base mb-2 text-white"
            >
              <i class="fa-solid fa-4"></i>
            </div>
            <h4 class="text-2xl font-bold mb-4">
              User-Generated Content
            </h4>
            <p class="text-base">
              By submitting any content to the System, you represent that you have the necessary rights to
              grant the System the license to use and display such content.
              You retain ownership of the content you submit, but you grant
              the System a non-exclusive license to use, modify, publish, and 
              display your content for System-related purposes.
            </p>
          </div>

          <div
            class="bg-white rounded-2xl p-8 mx-4 sm:mx-0 max-w-sm shadow-2xl text-slate-500 cursor-pointer hover:scale-105 hover:bg-sky-100 ease-in duration-300"
          >
            <div
            class="flex shadow-md items-center justify-center w-9 h-9 bg-slate-500 rounded-full text-base mb-2 text-white"
            >
              <i class="fa-solid fa-5"></i>
            </div>
            <h4 class="text-2xl font-bold mb-4">
              Privacy and Data Protection
            </h4>
            <p class="text-base">
              We respect your privacy and handle your personal information in
              accordance with our Privacy Policy. By using the System, you
              consent to the collection, use, and disclosure of your personal
              information as outlined in the Privacy Policy.
            </p>
          </div>

          <div
            class="bg-white rounded-2xl p-8 mx-4 sm:mx-0 max-w-sm shadow-2xl text-slate-500 cursor-pointer hover:scale-105 hover:bg-sky-100 ease-in duration-300"
          >
            <div
            class="flex shadow-md items-center justify-center w-9 h-9 bg-slate-500 rounded-full text-base mb-2 text-white"
            >
              <i class="fa-solid fa-6"></i>
            </div>
            <h4 class="text-2xl font-bold mb-4">
              System Availability
            </h4>
            <p class="text-base">
              While we strive to provide a reliable and accessible System, we
              do not guarantee uninterrupted or error-free operation. We
              reserve the right to suspend, modify, or terminate the System at
              any time without prior notice.
            </p>
          </div>

          <div
            class="bg-white rounded-2xl p-8 mx-4 sm:mx-0 max-w-sm shadow-2xl text-slate-500 cursor-pointer hover:scale-105 hover:bg-sky-100 ease-in duration-300"
          >
            <div
            class="flex shadow-md items-center justify-center w-9 h-9 bg-slate-500 rounded-full text-base mb-2 text-white"
            >
              <i class="fa-solid fa-7"></i>
            </div>
            <h4 class="text-2xl font-bold mb-4">
              Limitation of Liability
            </h4>
            <p class="text-base">
              To the extent permitted by applicable law, we shall not be
              liable for any direct, indirect, incidental, consequential, or
              punitive damages arising from your use of the System. You agree
              to use the System at your own risk.
            </p>
          </div>

          <div
            class="bg-white rounded-2xl p-8 mx-4 sm:mx-0 max-w-sm shadow-2xl text-slate-500 cursor-pointer hover:scale-105 hover:bg-sky-100 ease-in duration-300"
          >
            <div
            class="flex shadow-md items-center justify-center w-9 h-9 bg-slate-500 rounded-full text-base mb-2 text-white"
            >
              <i class="fa-solid fa-8"></i>
            </div>
            <h4 class="text-2xl font-bold mb-4">
              Terms of Modification
            </h4>
            <p class="text-base">
              We reserve the right to modify or update these Terms at any
              time. Any changes will be posted on the System or communicated
              to you through other reasonable means.
            </p>
          </div>

          <div
            class="bg-white rounded-2xl p-8 mx-4 sm:mx-0 max-w-sm shadow-2xl text-slate-500 cursor-pointer hover:scale-105 hover:bg-sky-100 ease-in duration-300"
          >
            <div
            class="flex shadow-md items-center justify-center w-9 h-9 bg-slate-500 rounded-full text-base mb-2 text-white"
            >
              <i class="fa-solid fa-9"></i>
            </div>
            <h4 class="text-2xl font-bold mb-4">
              Governing Law
            </h4>
            <p class="text-base">
              These Terms shall be governed by and construed in accordance
              with the laws of [Jurisdiction]. Any disputes arising out of or
              in connection with these Terms shall be subject to the exclusive
              jurisdiction of the courts in [Jurisdiction].
            </p>
          </div>
        </div>
      </div>
    </div>

    <%-- footer --%>
    <jsp:include page="components/footer.html"/>
  </body>
</html>
