<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    String message = "";
    if (request.getParameter("alert") != null) {
        int alert = Integer.parseInt(request.getParameter("alert"));
        if(alert == 1)
            message = "<h5 class='text-red-600'>Please fill all the field!</h5>";
        else if(alert == 2)
            message = "<h5 class='text-red-600'>Email is already exist!</h5>";
        else if(alert == 3)
            message = "<h5 class='text-red-600'>Conform password not match!</h5>";
        else if(alert == 4)
            message = "<h5 class='text-green-600'>Registered successfully!</h5>";
        else if(alert == 5)
            message = "<h5 class='text-red-600'>An error occurred. Please register again.!</h5>";
    }
%>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>VoteEASE | Registration</title>

    <%-- common imports --%>
    <jsp:include page="components/common.html"/>
  </head>

  <body>
    <%-- header --%>
    <jsp:include page="components/header.html"/>

    <%-- add your code this area only: start --%>
    <div
      class="w-full my-20 justify-center items-center p-0 outline-none font-sans text-base text-gray-600 max-w-4xl py-3 m-auto rounded-md border border-slate-500 shadow bg-slate-300"
    >
      <h1
        class="px-0 m-0 outline-none font-sans text-gray-600 py-3 text-3xl text-center font-bold"
      >
        Registration
      </h1>
      <form
              action="process/process-register.jsp" method="POST"
              class="p-0 my-0 mx-8 outline-none font-sans text-base text-gray-600 text-center justify-center items-center"
      >
        <%-- account type --%>
        <hr class="border border-gray-400 opacity-30 mx-10 my-4" />
        <div class="flex flex-wrap gap-4 justify-center">
          <label class="cursor-pointer">
            <input type="radio" class="peer sr-only" name="account" id="voter-radio" value="voter" checked/>
            <div
              class="voter-toggler w-40 max-w-xl rounded-md bg-slate-100 p-5 text-gray-600 ring-2 ring-transparent transition-all hover:shadow peer-checked:text-sky-600 peer-checked:ring-sky-500 peer-checked:ring-offset-2"
            >
              <div class="flex items-center gap-2 justify-center h-6">
                <span class="material-icons"> check_circle </span>
                <p class="text-sm font-semibold uppercase text-gray-500">
                  Voter
                </p>
              </div>
            </div>
          </label>
          <label class="cursor-pointer">
            <input type="radio" class="peer sr-only" name="account" value="campaigner" />
            <div
              class="campaigner-toggler w-40 max-w-xl rounded-md bg-slate-100 p-5 text-gray-600 ring-2 ring-transparent transition-all hover:shadow peer-checked:text-sky-600 peer-checked:ring-sky-500 peer-checked:ring-offset-2"
            >
              <div class="flex items-center gap-1 text-center">
                <span class="material-icons"> check_circle </span>
                <p class="text-sm font-semibold uppercase text-gray-500">
                  Campaigner
                </p>
              </div>
            </div>
          </label>
        </div>

        <%-- basic info--%>
        <hr class="border border-gray-400 opacity-30 mx-10 my-4" />
        <div class="flex w-full max-w-md mx-auto mb-4">
          <label
            for="name"
            class="shadow-md py-3 px-4 bg-sky-600 text-slate-100 text-center rounded-s-md"
          >
            <span class="material-icons"> person </span>
          </label>
          <input
            type="text"
            name="name"
            id="name"
            placeholder="Name"
            class="p-3 outline-none font-sans text-base text-gray-600 border border-sky-500 shadow-md bg-slate-100 w-full rounded-e-md"
            required
          />
        </div>

        <div class="flex w-full max-w-md mx-auto mb-4">
          <label
            for="email"
            class="shadow-md py-3 px-4 bg-sky-600 text-slate-100 text-center rounded-s-md"
          >
            <span class="material-icons"> email </span>
          </label>
          <input
            type="email"
            name="email"
            id="email"
            placeholder="Email"
            class="p-3 outline-none font-sans text-base text-gray-600 border border-sky-500 shadow-md bg-slate-100 w-full rounded-e-md"
            required
          />
        </div>

        <div class="flex w-full max-w-md mx-auto mb-4">
          <label
            for="password"
            class="shadow-md py-3 px-4 bg-sky-600 text-slate-100 text-center rounded-s-md"
          >
            <span class="material-icons"> lock </span>
          </label>
          <input
            type="password"
            name="password"
            id="password"
            placeholder="Password"
            class="p-3 outline-none font-sans text-base text-gray-600 border border-sky-500 shadow-md bg-slate-100 w-full rounded-e-md"
            required
          />
        </div>

        <div class="flex w-full max-w-md mx-auto mb-4">
          <label
            for="cpassword"
            class="shadow-md py-3 px-4 bg-sky-600 text-slate-100 text-center rounded-s-md"
          >
            <span class="material-icons"> lock </span>
          </label>
          <input
            type="password"
            name="cpassword"
            id="cpassword"
            placeholder="Conform Password"
            class="p-3 outline-none font-sans text-base text-gray-600 border border-sky-500 shadow-md bg-slate-100 w-full rounded-e-md"
            required
          />
        </div>

        <%-- packages --%>
        <div id="packages">
          <hr class="border border-gray-400 opacity-30 mx-10 my-4" />
          <p class="p-0 m-5 outline-none font-sans text-base text-gray-600">
            Discover the power of VoteEASE with an exclusive
            <strong>7-day trial</strong>.
          </p>
          <div class="flex flex-wrap gap-3 justify-center">
            <label class="cursor-pointer">
              <input type="radio" class="peer sr-only" name="pricing" value="basic" checked />
              <div
                class="w-64 max-w-xl rounded-md bg-slate-100 p-5 text-gray-600 ring-2 ring-transparent transition-all hover:shadow peer-checked:text-sky-600 peer-checked:ring-sky-500 peer-checked:ring-offset-2"
              >
                <div class="flex flex-col gap-1">
                  <div class="flex items-center justify-between">
                    <p class="text-sm font-semibold uppercase text-gray-500">
                      Basic
                    </p>
                    <span class="material-icons"> check_circle </span>
                  </div>
                  <div class="flex items-end justify-between">
                    <p><span class="text-lg font-bold">One</span> Campaign</p>
                    <p class="text-sm font-bold">free</p>
                  </div>
                </div>
              </div>
            </label>
            <label class="cursor-pointer">
              <input type="radio" class="peer sr-only" name="pricing" value="business" />
              <div
                class="w-64 max-w-xl rounded-md bg-slate-100 p-5 text-gray-600 ring-2 ring-transparent transition-all hover:shadow peer-checked:text-sky-600 peer-checked:ring-sky-500 peer-checked:ring-offset-2"
              >
                <div class="flex flex-col gap-1">
                  <div class="flex items-center justify-between">
                    <p class="text-sm font-semibold uppercase text-gray-500">
                      Business
                    </p>
                    <span class="material-icons"> check_circle </span>
                  </div>
                  <div class="flex items-end justify-between">
                    <p><span class="text-lg font-bold">12</span> Campaigns</p>
                    <p class="text-sm font-bold">Rs.5,500 / yr</p>
                  </div>
                </div>
              </div>
            </label>
            <label class="cursor-pointer">
              <input type="radio" class="peer sr-only" name="pricing" value="premium" />
              <div
                class="w-64 max-w-xl rounded-md bg-slate-100 p-5 text-gray-600 ring-2 ring-transparent transition-all hover:shadow peer-checked:text-sky-600 peer-checked:ring-sky-500 peer-checked:ring-offset-2"
              >
                <div class="flex flex-col gap-1">
                  <div class="flex items-center justify-between">
                    <p class="text-sm font-semibold uppercase text-gray-500">
                      premium
                    </p>
                    <span class="material-icons"> check_circle </span>
                  </div>
                  <div class="flex items-end justify-between">
                    <p><span class="text-lg font-bold">Unlimited</span></p>
                    <p class="text-sm font-bold">Rs.8,000 / yr</p>
                  </div>
                </div>
              </div>
            </label>
          </div>
        </div>

        <hr class="border border-gray-400 opacity-30 mx-10 my-4" />
        <div
          class="p-0 m-0 outline-none font-sans text-base text-gray-600 mt-3 text-center"
        >
          <p class="p-0 m-0 outline-none font-sans text-base text-gray-600">
            By clicking Register, you agree on our
            <a href="terms" class="hover:text-sky-500"
              >Terms & Privacy Policy for VoteEASE</a
            >.
          </p>
          <%-- submit button --%>
          <button
            type="submit"
             class="py-3 px-0 mt-16 min-w-[20rem] w-1/2 my-3 mx-auto rounded-md border-0 bg-sky-700 text-lg font-semibold text-sky-50 hover:bg-sky-600"
          >
            Register
          </button>
            <div class="text-slate-800">Already have account ? <a href="/login" class="text-sky-600 mx-1">login</a>
            </div>
        </div>
            <%--error message--%>
            <%=message%>
      </form>
    </div>
    <%-- add your code this area only: end--%>

    <%-- footer --%>
    <jsp:include page="components/footer.html"/>
    <%-- hide packages when user click voter registration --%>
    <script>
      $(document).ready(function () {
        $(".voter-toggler").click(function () {
          $("#packages").hide();
        });
        $(".campaigner-toggler").click(function () {
          $("#packages").show();
        });

        if ($("#voter-radio").prop("checked")) {
          $("#packages").hide();
        }
      });
    </script>
  </body>
</html>
