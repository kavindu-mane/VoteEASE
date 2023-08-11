<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8"/>
        <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
        <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
        <title>VoteEASE</title>

        <%-- AOS --%>
        <link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet"/>

        <%-- common imports --%>
        <jsp:include page="components/common.html"/>
    </head>
    <body>
        <%-- header --%>
        <jsp:include page="components/header.html"/>

        <%-- hero section --%>
        <section
                data-aos="fade-up"
                class="text-center overflow-x-hidden -mt-16 w-screen h-screen flex flex-col justify-center items-center text-slate-700"
        >
            <canvas
                    id="myChart"
                    class="w-auto h-screen absolute top-0 start-0 z-0 object-cover"
            ></canvas>

            <h2
                    class="text-4xl pt-20 z-50 md:text-5xl font-semibold xl:text-6xl font-Poppins"
            >
                Vote Online with <span class="text-purple-600">EASE</span> | Vote<span
                    class="text-sky-600 italic"
            >EASE</span
            >
            </h2>
            <p class="text-lg md:text-xl mt-2 italic font-semibold z-50">
                Empowering Digital Democracy
            </p>

            <div class="flex space-x-7 mt-10 z-50">
                <a
                        href="login"
                        class="bg-sky-500 text-white w-40 font-Poppins font-semibold shadow-md hover:bg-sky-800 duration-200 ease-linear py-2 rounded-md"
                >Login</a
                ><a
                    href="register"
                    class="bg-sky-500 text-white w-40 font-Poppins font-semibold shadow-md hover:bg-sky-800 duration-200 ease-linear py-2 rounded-md"
            >Register Free</a
            >
            </div>
        </section>

        <%-- key feature section --%>
        <section class="mt-16">
            <div class="container mx-auto w-screen flex-col flex items-center">
                <h3
                        class="text-4xl lg:text-5xl font-bold text-center mb-8 text-slate-600"
                >
                    What We
                    <span class="text-emerald-400">OFFER</span>
                </h3>
                <%-- offers --%>
                <div
                        class="grid grid-cols-1 mt-16 sm:grid-cols-2 md:grid-cols-3 gap-8 w-fit h-fit"
                >
                    <div
                            class="from-purple-400/60 bg-gradient-to-bl to-purple-800/90 cursor-pointer rounded-tr-2xl rounded-bl-2xl p-8 mx-4 sm:mx-0 hover:scale-105 hover:bg-purple-500/80 max-w-sm ease-in duration-300 shadow-2xl text-white"
                    >
                        <h4 class="text-2xl font-bold mb-4">
                            Easy and Intuitive Interface
                        </h4>
                        <p class="text-lg">
                            Simplified and user-friendly interface for seamless voting
                            experience.
                        </p>
                    </div>

                    <div
                            class="from-purple-400/60 bg-gradient-to-bl to-purple-800/90 cursor-pointer rounded-tr-2xl rounded-bl-2xl p-8 mx-4 sm:mx-0 hover:scale-105 hover:bg-purple-500/80 max-w-sm ease-in duration-300 shadow-2xl text-white"
                    >
                        <h4 class="text-2xl font-bold mb-4">Secure and Tamper-proof</h4>
                        <p class="text-lg">
                            Ensures the integrity of the voting process with robust security
                            measures.
                        </p>
                    </div>

                    <div
                            class="from-purple-400/60 bg-gradient-to-bl to-purple-800/90 cursor-pointer rounded-tr-2xl rounded-bl-2xl p-8 mx-4 sm:mx-0 hover:scale-105 hover:bg-purple-500/80 max-w-sm ease-in duration-300 shadow-2xl text-white"
                    >
                        <h4 class="text-2xl font-bold mb-4">
                            Real-time Results and Analytics
                        </h4>
                        <p class="text-lg">
                            Access real-time voting results and comprehensive analytics for
                            informed decisions.
                        </p>
                    </div>

                    <div
                            class="from-purple-400/60 bg-gradient-to-bl to-purple-800/90 cursor-pointer rounded-tr-2xl rounded-bl-2xl p-8 mx-4 sm:mx-0 hover:scale-105 hover:bg-purple-500/80 max-w-sm ease-in duration-300 shadow-2xl text-white"
                    >
                        <h4 class="text-2xl font-bold mb-4">
                            Flexible Customization Options
                        </h4>
                        <p class="text-lg">
                            Customize the voting system to fit your specific requirements and
                            branding.
                        </p>
                    </div>

                    <div
                            class="from-purple-400/60 bg-gradient-to-bl to-purple-800/90 cursor-pointer rounded-tr-2xl rounded-bl-2xl p-8 mx-4 sm:mx-0 hover:scale-105 hover:bg-purple-500/80 max-w-sm ease-in duration-300 shadow-2xl text-white"
                    >
                        <h4 class="text-2xl font-bold mb-4">
                            Multiple Authentication Methods
                        </h4>
                        <p class="text-lg">
                            Supports various authentication methods to ensure voter
                            authenticity.
                        </p>
                    </div>

                    <div
                            class="from-purple-400/60 bg-gradient-to-bl to-purple-800/90 cursor-pointer rounded-tr-2xl rounded-bl-2xl p-8 mx-4 sm:mx-0 hover:scale-105 hover:bg-purple-500/80 max-w-sm ease-in duration-300 shadow-2xl text-white"
                    >
                        <h4 class="text-2xl font-bold mb-4">
                            Accessible and Inclusive Design
                        </h4>
                        <p class="text-lg">
                            Designed to be accessible and inclusive for users with diverse
                            needs.
                        </p>
                    </div>
                </div>
            </div>
        </section>

        <%-- pricing --%>
        <section class="bg-emerald-200 mt-20" id="pricing">
            <div class="py-8 px-4 mx-auto max-w-screen-xl lg:py-16 lg:px-6">
                <div class="mx-auto max-w-screen-md text-center mb-8 lg:mb-12">
                    <h2 class="mb-4 text-4xl tracking-tight font-extrabold text-gray-800">
                        Pricing for Campaigners
                    </h2>
                </div>
                <div
                        class="space-y-8 lg:grid lg:grid-cols-3 sm:gap-6 xl:gap-10 lg:space-y-0"
                >
                    <%-- Pricing Card : basic--%>
                    <div
                            class="flex flex-col p-6 mx-auto max-w-lg text-center text-gray-900 bg-white rounded-lg border border-gray-100 shadow-lg"
                    >
                        <h3 class="mb-4 text-2xl font-semibold">Basic</h3>
                        <p class="font-light text-gray-500 sm:text-lg">
                            Best option for personal use & for your next voting campaign.
                        </p>
                        <div class="flex justify-center items-baseline my-8">
                            <span class="mr-2 text-5xl font-extrabold">Free</span>
                        </div>

                        <%-- button and privileges --%>
                        <div class="flex flex-col justify-between h-full">
                            <%-- List --%>
                            <ul role="list" class="mb-8 space-y-4 text-left">
                                <%-- item --%>
                                <li class="flex items-center space-x-3">
                  <span
                          class="material-symbols-outlined text-green-500 font-bold"
                  >
                    done
                  </span>
                                    <span>No setup, or hidden fees</span>
                                </li>
                                <%-- item --%>
                                <li class="flex items-center space-x-3">
                  <span
                          class="material-symbols-outlined text-green-500 font-bold"
                  >
                    done
                  </span>
                                    <span>1 campaign for month</span>
                                </li>
                                <%-- item --%>
                                <li class="flex items-center space-x-3">
                  <span
                          class="material-symbols-outlined text-green-500 font-bold"
                  >
                    done
                  </span>
                                    <span>100 total vote for campaign</span>
                                </li>
                                <%-- item --%>
                                <li class="flex items-center space-x-3">
                  <span
                          class="material-symbols-outlined text-red-500 font-bold"
                  >
                    close
                  </span>
                                    <span>Customize campaign rules</span>
                                </li>
                            </ul>
                            <a
                                    href="register"
                                    class="text-white bg-sky-600 hover:bg-sky-800 focus:ring-4 focus:ring-sky-200 font-medium rounded-lg text-sm px-5 py-2.5 text-center"
                            >Get started</a
                            >
                        </div>
                    </div>

                    <%-- Pricing Card : business--%>
                    <div
                            class="flex flex-col p-6 mx-auto max-w-lg text-center text-gray-900 bg-white rounded-lg border border-gray-100 shadow-lg"
                    >
                        <h3 class="mb-4 text-2xl font-semibold">Business</h3>
                        <p class="font-light text-gray-500 sm:text-lg">
                            Best option for business use & for your next voting campaigns.
                        </p>
                        <div class="flex justify-center items-baseline my-8">
                            <span class="mr-2 text-5xl font-extrabold">Rs: 5500</span>
                            <span class="text-gray-500">/year</span>
                        </div>

                        <%-- button and privileges --%>
                        <div class="flex flex-col justify-between h-full">
                            <%-- List --%>
                            <ul role="list" class="mb-8 space-y-4 text-left">
                                <%-- item --%>
                                <li class="flex items-center space-x-3">
                  <span
                          class="material-symbols-outlined text-green-500 font-bold"
                  >
                    done
                  </span>
                                    <span>No setup, or hidden fees</span>
                                </li>
                                <%-- item --%>
                                <li class="flex items-center space-x-3">
                  <span
                          class="material-symbols-outlined text-green-500 font-bold"
                  >
                    done
                  </span>
                                    <span>7 days free trial</span>
                                </li>
                                <%-- item --%>
                                <li class="flex items-center space-x-3">
                  <span
                          class="material-symbols-outlined text-green-500 font-bold"
                  >
                    done
                  </span>
                                    <span>5 campaign for month</span>
                                </li>
                                <%-- item --%>
                                <li class="flex items-center space-x-3">
                  <span
                          class="material-symbols-outlined text-green-500 font-bold"
                  >
                    done
                  </span>
                                    <span>1000 total vote for campaign</span>
                                </li>
                                <%-- item --%>
                                <li class="flex items-center space-x-3">
                  <span
                          class="material-symbols-outlined text-green-500 font-bold"
                  >
                    done
                  </span>
                                    <span>Customize campaign rules</span>
                                </li>
                            </ul>
                            <a
                                    href="register"
                                    class="text-white bg-sky-600 hover:bg-sky-800 focus:ring-4 focus:ring-sky-200 font-medium rounded-lg text-sm px-5 py-2.5 text-center"
                            >Get started</a
                            >
                        </div>
                    </div>

                    <%-- Pricing Card : premium--%>
                    <div
                            class="flex flex-col p-6 mx-auto max-w-lg text-center text-gray-900 bg-white rounded-lg border border-gray-100 shadow-lg"
                    >
                        <h3 class="mb-4 text-2xl font-semibold">Premium</h3>
                        <p class="font-light text-gray-500 sm:text-lg">
                            Best option for company level use & for your next voting campaign.
                        </p>
                        <div class="flex justify-center items-baseline my-8">
                            <span class="mr-2 text-5xl font-extrabold">Rs: 8000</span>
                            <span class="text-gray-500">/year</span>
                        </div>

                        <%-- button and privileges --%>
                        <div class="flex flex-col justify-between h-full">
                            <%-- List --%>
                            <ul role="list" class="mb-8 space-y-4 text-left">
                                <%-- item --%>
                                <li class="flex items-center space-x-3">
                  <span
                          class="material-symbols-outlined text-green-500 font-bold"
                  >
                    done
                  </span>
                                    <span>No setup, or hidden fees</span>
                                </li>
                                <%-- item --%>
                                <li class="flex items-center space-x-3">
                  <span
                          class="material-symbols-outlined text-green-500 font-bold"
                  >
                    done
                  </span>
                                    <span>7 days free trial</span>
                                </li>
                                <%-- item --%>
                                <li class="flex items-center space-x-3">
                  <span
                          class="material-symbols-outlined text-green-500 font-bold"
                  >
                    done
                  </span>
                                    <span>15 campaign for month</span>
                                </li>
                                <%-- item --%>
                                <li class="flex items-center space-x-3">
                  <span
                          class="material-symbols-outlined text-green-500 font-bold"
                  >
                    done
                  </span>
                                    <span>Unlimited total vote for campaign</span>
                                </li>
                                <%-- item --%>
                                <li class="flex items-center space-x-3">
                  <span
                          class="material-symbols-outlined text-green-500 font-bold"
                  >
                    done
                  </span>
                                    <span>Customize campaign rules</span>
                                </li>
                            </ul>
                            <a
                                    href="register"
                                    class="text-white bg-sky-600 hover:bg-sky-800 focus:ring-4 focus:ring-sky-200 font-medium rounded-lg text-sm px-5 py-2.5 text-center"
                            >Get started</a
                            >
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <%-- get start button --%>
        <section class="my-12 flex justify-center">
            <div class="flex space-x-7 mt-10 z-50 text-center">
                <a
                        href="login"
                        class="bg-sky-500 text-white w-40 font-Poppins font-semibold shadow-md hover:bg-sky-800 duration-200 ease-linear py-3 rounded-md"
                >Login</a
                ><a
                    href="register"
                    class="bg-sky-500 text-white w-40 font-Poppins font-semibold shadow-md hover:bg-sky-800 duration-200 ease-linear py-3 rounded-md"
            >Register Free</a
            >
            </div>
        </section>

        <%-- footer --%>
        <jsp:include page="components/footer.html"/>

        <%-- AOS --%>
        <script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
        <script>
            AOS.init({duration: 1000});
        </script>
        <div></div>

        <%-- chartjs --%>
        <script src="js/chart_js.js"></script>
        <script src="js/chart-index.js"></script>
    </body>
</html>
