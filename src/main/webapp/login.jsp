<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Login - VoteEASE</title>

    <%-- common imports --%>
    <jsp:include page="components/common.html"/>
  </head>

  <body>
    <%-- header --%>
    <jsp:include page="components/header.html"/>

    <%-- Container --%>
    <div class="my-24 w-screen flex justify-center">
      <%-- Section: Design Block --%>
      <section class="mx-5 text-center lg:text-left max-w-7xl w-full">
        <div
          class="grid items-center lg:grid-cols-2 gap-10 w-full place-items-center"
        >
          <%-- left side --%>
          <form
            class="flex flex-col justify-start w-full sm:w-3/4 text-left md:w-1/2 lg:w-full bg-white p-4 rounded-md shadow-md drop-shadow-md"
          >
            <h1 class="text-3xl text-sky-700 font-semibold font-Poppins mb-7">Login</h1>
            <%-- email --%>
            <div class="mb-6">
              <label
                for="email"
                class="block mb-2 text-sm font-medium text-gray-900"
                >Email</label
              >
              <input
                type="email"
                id="email"
                name="email"
                class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5"
                placeholder="name@abc.com"
                required
              />
            </div>
            <%-- password --%>
            <div class="mb-6">
              <label
                for="password"
                class="block mb-2 text-sm font-medium text-gray-900"
                >Password</label
              >
              <input
                type="password"
                name="password"
                id="password"
                placeholder="********"
                class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5"
                required
              />
            </div>
            <button
              type="submit"
              class="text-white place-self-center bg-blue-700 hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 font-medium rounded-lg text-sm w-full sm:w-1/2 px-5 py-2.5 text-center"
            >
              Submit
            </button>

              <div class="text-slate-800 text-center mt-3">Don't have account ? <a href="/register"
                                                                                 class="text-sky-600 mx-1">Register</a>
              </div>
          </form>

          <%-- right side --%>
          <div class="hidden lg:flex lg:justify-center">
            <img src="img/login.svg" class="w-2/3 h-2/3" alt="login image" />
          </div>
        </div>
      </section>
      <%-- Section: Design Block --%>
    </div>

    <%-- footer --%>
    <jsp:include page="components/footer.html"/>
  </body>
</html>
