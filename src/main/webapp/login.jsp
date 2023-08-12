<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Login - VoteEASE</title>
        <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
        <!-- google icons -->
        <link
            rel="stylesheet"
            href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0"
            />
        <!-- google fonts -->
        <link
            href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700,900&display=swap"
            rel="stylesheet"
            />
        <!-- tailwind css file -->
        <link href="/css/output.css" rel="stylesheet" />
        <!-- jquery -->
        <script
            src="https://code.jquery.com/jquery-3.3.1.js"
            integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60="
            crossorigin="anonymous"
        ></script>

        <link
            href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700,900&display=swap"
            rel="stylesheet" />
        <link
            rel="stylesheet"
            href="https://cdn.jsdelivr.net/npm/tw-elements/dist/css/tw-elements.min.css" />
        <script src="https://cdn.tailwindcss.com/3.3.0"></script>
        <script>
            tailwind.config = {
                darkMode: "class",
                theme: {
                    fontFamily: {
                        sans: ["Roboto", "sans-serif"],
                        body: ["Roboto", "sans-serif"],
                        mono: ["ui-monospace", "monospace"],
                    },
                },
                corePlugins: {
                    preflight: false,
                },
            };
        </script>
    </head>

    <body>
        <!-- header -->
        <div id="header"></div>

        <!-- Container -->
        <div class="my-24 w-screen flex justify-center">
            <!-- Section: Design Block -->
            <section class="mx-5 text-center lg:text-left max-w-7xl w-full">
                <div
                    class="grid items-center lg:grid-cols-2 gap-10 w-full place-items-center"
                    >
                    <!-- left side -->
                    <form action ="/process/loginbackend.jsp" method="POST"
                          class="flex flex-col justify-start w-full sm:w-3/4 text-left md:w-1/2 lg:w-full"
                          >
                        <!-- email -->
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
                        <!-- password -->
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
                            type="submit" name="login"
                            class="text-white place-self-center bg-blue-700 hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 font-medium rounded-lg text-sm w-full sm:w-1/2 px-5 py-2.5 text-center"
                            >
                            Login
                        </button>
                        <%
                            if (request.getParameter("err") != null) {
                                if (request.getParameter("err").equals("1")) { 
                        %>
                        <div
                            class="mb-3 inline-flex w-full items-center rounded-lg bg-danger-100 px-6 py-5 text-base text-danger-700 mt-2"
                            role="alert">
                            <span class="mr-2">
                                <svg
                                    xmlns="http://www.w3.org/2000/svg"
                                    viewBox="0 0 24 24"
                                    fill="currentColor"
                                    class="h-5 w-5">
                                <path
                                    fill-rule="evenodd"
                                    d="M12 2.25c-5.385 0-9.75 4.365-9.75 9.75s4.365 9.75 9.75 9.75 9.75-4.365 9.75-9.75S17.385 2.25 12 2.25zm-1.72 6.97a.75.75 0 10-1.06 1.06L10.94 12l-1.72 1.72a.75.75 0 101.06 1.06L12 13.06l1.72 1.72a.75.75 0 101.06-1.06L13.06 12l1.72-1.72a.75.75 0 10-1.06-1.06L12 10.94l-1.72-1.72z"
                                    clip-rule="evenodd" />
                                </svg>
                            </span>
                            Incorrect username or password
                        </div>
                        <% }}%>
                    </form>

                    <!-- right side -->
                    <div class="hidden lg:flex lg:justify-center">
                        <img src="img/login.svg" class="w-2/3 h-2/3" alt="login image" />
                    </div>
                </div>
            </section>
            <!-- Section: Design Block -->
        </div>

        <!-- footer -->
        <div id="footer"></div>

        <!-- header and footer js -->
        <script>
            $(() => {
                $("#header").load("./components/header.html");
                $("#footer").load("./components/footer.html");
            });
        </script>
    </body>
</html>

