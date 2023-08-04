<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8"/>
        <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
        <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
        <title>VoteEASE - Contacts</title>

        <%-- common imports --%>
        <jsp:include page="components/common.html"/>
    </head>

    <body>
        <%-- header --%>
        <jsp:include page="components/header.html"/>

        <div class="flex w-full justify-center items-center px-3 my-20">
            <div
                    class="flex flex-col space-y-6 md:flex-row md:space-x-6 md:space-y-0 to-slate-700/70 from-slate-600 bg-gradient-to-br w-full max-w-6xl p-8 sm:p-12 rounded-xl shadow-lg text-white overflow-hidden"
            >
                <%-- left side --%>
                <div class="flex flex-col space-y-5 justify-between">
                    <div>
                        <h1 class="font-bold text-4xl tracking-wide">Contact Us</h1>
                        <p class="pt-2 text-slate-300 text-base me-2">
                            Got a question? We're here to help and answer any question you
                            might have. We look forward to hearing from you.
                        </p>
                    </div>

                    <%-- contact details --%>
                    <div class="flex flex-col space-y-2 mx-2">
                        <div class="inline-flex space-x-2 items-center">
                            <i class="fa-solid fa-phone text-slate-300 text-lg w-6"></i>
                            <span>+(055) 254 8794</span>
                        </div>
                        <div>
                            <div class="inline-flex space-x-2 items-center">
                                <i class="fa-solid fa-envelope text-slate-300 text-lg w-6"></i>
                                <span>contact@voteease.com</span>
                            </div>
                        </div>
                        <div>
                            <div class="inline-flex space-x-2 items-center">
                                <i
                                        class="fa-solid fa-location-dot text-slate-300 text-lg w-6"
                                ></i>
                                <span>Uva Wellassa University</span>
                            </div>
                        </div>
                    </div>

                    <%-- social --%>
                    <div class="flex space-x-6 text-2xl">
                        <a href="#">
                            <i class="fa-brands fa-facebook"></i>
                        </a>
                        <a href="#">
                            <i class="fa-brands fa-twitter"></i>
                        </a>
                        <a href="#">
                            <i class="fa-brands fa-linkedin"></i>
                        </a>
                        <a href="#">
                            <i class="fa-brands fa-instagram"></i>
                        </a>
                    </div>
                </div>

                <%-- right side --%>
                <div class="relative mx-2">
                    <%-- circles --%>
                    <div
                            class="absolute z-0 w-40 h-40 bg-slate-600 rounded-full -right-28 -top-28"
                    ></div>
                    <div
                            class="absolute z-0 w-40 h-40 bg-slate-600 rounded-full -left-28 -bottom-16"
                    ></div>
                    <div
                            class="relative z-10 bg-white/20 text-slate-500 rounded-xl shadow-lg p-8 md:w-[30rem] -mx-4 sm:mx-0"
                    >
                        <%-- form --%>
                        <form action="" class="flex flex-col space-y-4 mx-2">
                            <div>
                                <label for="name" class="text-base text-white font-bold"
                                >Your name</label
                                >
                                <input
                                        type="text"
                                        id="name"
                                        name="name"
                                        placeholder="Your name"
                                        class="bg-white/25 ring-[1px] ring-white/60 w-full rounded-md px-4 py-2 mt-2 outline-none focus:ring-emerald-400 text-white placeholder:text-white/60 placeholder:italic"
                                />
                            </div>
                            <div>
                                <label for="email" class="text-base text-white font-bold"
                                >Email Address</label
                                >
                                <input
                                        type="email"
                                        id="email"
                                        name="email"
                                        placeholder="Email Address"
                                        class="bg-white/25 ring-[1px] ring-white/60 w-full rounded-md px-4 py-2 mt-2 outline-none focus:ring-emerald-400 text-white placeholder:text-white/60 placeholder:italic"
                                />
                            </div>
                            <div>
                                <label for="message" class="text-base text-white font-bold"
                                >Message</label
                                >
                                <textarea
                                        placeholder="Type your message here"
                                        rows="4"
                                        name="message"
                                        id="message"
                                        class="bg-white/25 ring-[1px] ring-white/60 w-full rounded-md px-4 py-2 mt-2 outline-none focus:ring-emerald-400 text-white placeholder:text-white/60 placeholder:italic"
                                ></textarea>
                            </div>
                            <button
                                    class="inline-block self-center bg-slate-700 hover:bg-slate-600 text-white font-bold rounded-lg px-6 py-2 uppercase text-sm"
                            >
                                Send Message
                            </button>
                        </form>
                    </div>
                </div>
            </div>
        </div>

        <%-- footer --%>
        <jsp:include page="components/footer.html"/>
    </body>
</html>
