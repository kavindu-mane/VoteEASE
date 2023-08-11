<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8"/>
        <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
        <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
        <title>About - VoteEASE</title>

        <%-- common imports --%>
        <jsp:include page="components/common.html"/>
    </head>

    <body>
        <%-- header--%>
        <jsp:include page="components/header.html"/>

        <%-- Container --%>
        <div class="my-24 w-screen flex justify-center">
            <%-- Section: Design Block --%>
            <section class="mx-5 text-center lg:text-left max-w-7xl">
                <div class="grid items-center lg:grid-cols-2 gap-10">
                    <%-- left side --%>
                    <div
                            class="z-10 block rounded-lg px-6 py-12 bg-white shadow-lg drop-shadow-lg backdrop-blur-[30px] md:px-12 lg:-mr-14"
                    >
                        <%-- top --%>
                        <h2 class="mb-8 text-3xl font-bold">About Us</h2>
                        <p class="mb-8 pb-2 text-gray-600 lg:pb-0">
                            Empower your voice with voteEASE: Secure, convenient, and
                            user-friendly online voting. Cast your ballot from anywhere,
                            ensuring democracy for all. Your vote, your future, our
                            mission.
                        </p>

                        <%-- middle --%>
                        <div
                                class="mx-auto mb-8 flex flex-col md:flex-row md:justify-around lg:justify-between text-emerald-500 text-lg font-semibold font-Poppins"
                        >
                            <p
                                    class="mx-auto mb-4 flex items-center md:mx-0 md:mb-2 lg:mb-0"
                            >
                                <span class="material-icons me-2"> check_circle </span>
                                Best team
                            </p>

                            <p
                                    class="mx-auto mb-4 flex items-center md:mx-0 md:mb-2 lg:mb-0"
                            >
                                <span class="material-icons me-2"> check_circle </span>
                                Best quality
                            </p>

                            <p class="mx-auto mb-2 flex items-center md:mx-0 lg:mb-0">
                                <span class="material-icons me-2"> check_circle </span>
                                Best experience
                            </p>
                        </div>

                        <%-- bottom --%>
                        <p class="mb-0 text-slate-600">
                            Welcome to the VoteEase! We are a dedicated team of developers
                            and enthusiasts who believe in making the democratic process
                            accessible to everyone. Our mission is to provide a secure,
                            transparent, and user-friendly platform for conducting online
                            voting for various purposes such as elections, surveys, and
                            decision-making processes. At Online Voting System, we
                            understand the importance of trust and credibility in the
                            voting process. Therefore, we have implemented advanced
                            security measures to safeguard the integrity of the votes and
                            protect against any potential tampering or manipulation. Our
                            platform is designed to be inclusive, ensuring that every
                            eligible voter can participate in the voting process without
                            any barriers. We strive to create an environment where every
                            voice is heard and valued.
                        </p>
                    </div>

                    <%-- right side --%>
                    <div class="hidden lg:flex lg:justify-center">
                        <img
                                src="img/undraw_personal_website_re_c8dv.svg"
                                class="w-2/3 h-2/3"
                                alt="about image"
                        />
                    </div>
                </div>
            </section>
            <%-- Section: Design Block --%>
        </div>
        <%-- Container --%>

        <%-- footer --%>
        <jsp:include page="components/footer.html"/>
    </body>
</html>
