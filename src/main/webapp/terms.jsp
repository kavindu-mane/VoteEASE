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
            class="flex shadow-md items-center justify-center w-14 h-14 bg-purple-400 mr-5 rounded-full text-lg text-white"
          >
            <i class="fa-solid fa-terminal"></i>
          </div>
          <div class="font-bold text-slate-600">
            <h2>TERMS OF SERVICE</h2>
            <p>Last update on July 19, 2023</p>
          </div>
        </div>

        <%-- content --%>
        <div
          class="px-10 pr-5 bg-white text-slate-500 mt-10 rounded-lg shadow-md drop-shadow-md py-10"
        >
          <ol>
            <li class="mb-4">
              <h3 class="mb-1.5 text-lg font-bold">
                1. Eligibility and Registration
              </h3>
              <p>
                You must be of legal voting age in your jurisdiction to use the
                System. You agree to provide accurate and complete information
                during the registration process. You are responsible for
                maintaining the confidentiality of your account credentials
                (username and password).
              </p>
            </li>
            <li class="mb-4">
              <h3 class="mb-1.5 text-lg font-bold">2. Terms of use</h3>
              <p>
                You shall use the System only for its intended purposes, which
                include casting votes and managing voting campaigns. You shall
                not engage in any activity that violates applicable laws,
                regulations, or the rights of others. You shall not attempt to
                interfere with the proper functioning of the System or
                compromise its security.
              </p>
            </li>
            <li class="mb-4">
              <h3 class="mb-1.5 text-lg font-bold">3. Voting Process</h3>
              <p>
                You agree to cast your vote(s) in a fair and lawful manner. You
                shall not attempt to manipulate or tamper with the voting
                process or the results. You acknowledge that all votes cast are
                final and cannot be changed or revoked.
              </p>
            </li>
            <li class="mb-4">
              <h3 class="mb-1.5 text-lg font-bold">
                4. User-Generated Content
              </h3>
              <p>
                By submitting any content (such as text, images, or videos) to
                the System, you represent that you have the necessary rights to
                grant the System the license to use and display such content.
                You retain ownership of the content you submit, but you grant
                the System a non-exclusive, worldwide, royalty-free license to
                use, reproduce, modify, adapt, publish, translate, cssribute,
                and display your content for System-related purposes.
              </p>
            </li>
            <li class="mb-4">
              <h3 class="mb-1.5 text-lg font-bold">
                5. Privacy and Data Protection
              </h3>
              <p>
                We respect your privacy and handle your personal information in
                accordance with our Privacy Policy. By using the System, you
                consent to the collection, use, and disclosure of your personal
                information as outlined in the Privacy Policy.
              </p>
            </li>
            <li class="mb-4">
              <h3 class="mb-1.5 text-lg font-bold">6. System Availability</h3>
              <p>
                While we strive to provide a reliable and accessible System, we
                do not guarantee uninterrupted or error-free operation. We
                reserve the right to suspend, modify, or terminate the System at
                any time without prior notice.
              </p>
            </li>
            <li class="mb-4">
              <h3 class="mb-1.5 text-lg font-bold">
                7. Limitation of Liability
              </h3>
              <p>
                To the extent permitted by applicable law, we shall not be
                liable for any direct, indirect, incidental, consequential, or
                punitive damages arising from your use of the System. You agree
                to use the System at your own risk.
              </p>
            </li>
            <li class="mb-4">
              <h3 class="mb-1.5 text-lg font-bold">8. Terms of Modification</h3>
              <p>
                We reserve the right to modify or update these Terms at any
                time. Any changes will be posted on the System or communicated
                to you through other reasonable means.
              </p>
            </li>
            <li class="mb-4">
              <h3 class="mb-1.5 text-lg font-bold">
                9. Governing Law and Dispute Resolution
              </h3>
              <p>
                These Terms shall be governed by and construed in accordance
                with the laws of [Jurisdiction]. Any disputes arising out of or
                in connection with these Terms shall be subject to the exclusive
                jurisdiction of the courts in [Jurisdiction].
              </p>
            </li>
          </ol>
        </div>
      </div>
    </div>

    <%-- footer --%>
    <jsp:include page="components/footer.html"/>
  </body>
</html>
