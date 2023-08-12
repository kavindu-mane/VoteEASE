<%@ page import="com.voteease.classes.Campaigner" %>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%
    Campaigner campaigner = (Campaigner) request.getAttribute("campaigner");
    String accountType = campaigner.getAcc_type();
%>
<div class="w-full h-full p-5 py-10">
    <%-- breadcrumb --%>
    <div class="flex items-center mb-3 place-self-start">
            <span class="material-symbols-outlined mx-2"> dashboard </span
            ><a
            href="${pageContext.request.contextPath}/campaigner"
            class="hover:underline"
    >Dashboard</a
    >
        <span class="material-symbols-outlined mx-2"> arrow_forward_ios </span>
        New Campaign
    </div>
    <div class="w-full h-full flex justify-center items-center">
        <form
                id="campaign-form"
                class="space-y-6 bg-white p-4 md:w-[38rem] sm:p-6 md:p-8 shadow-lg drop-shadow-lg rounded-md mb-10">
            <div class="flex justify-between">
                <h5 class="text-2xl font-medium text-gray-900">Add new campaign</h5>
            </div>

            <%-- form input area --%>
            <div class="my-2">
                <label
                        for="name"
                        class="block mb-2 text-sm font-medium text-gray-900"
                >Campaign name<span class="text-red-500">*</span>
                </label>

                <input
                        type="text"
                        name="name"
                        id="name"
                        class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5"
                        placeholder="New Campaign"
                        required/>
            </div>

            <%-- start --%>
            <div class="my-2">
                <label
                        for="sdate"
                        class="block mb-2 text-sm font-medium text-gray-900"
                >Start Date & Time<span class="text-red-500">*</span>
                </label>
                <div class="flex items-center">
                    <input
                            type="datetime-local"
                            name="sdate"
                            id="sdate"
                            class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5"
                            required/>
                </div>
            </div>

            <%-- end --%>
            <div class="my-2">
                <label
                        for="edate"
                        class="block mb-2 text-sm font-medium text-gray-900"
                >Start Date & Time<span class="text-red-500">*</span>
                </label>
                <div class="flex items-center">
                    <input
                            type="datetime-local"
                            name="edate"
                            id="edate"
                            class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5"
                            required/>
                </div>
            </div>

            <div class="my-2">
                <label
                        for="rules"
                        class="block mb-2 text-sm font-medium text-gray-900"
                >Campaign rules <i class="fa-solid fa-crown text-yellow-400 ms-1 text-sm"></i
                ></label>
                <div
                        id="rules"
                        class="ms-5">
                    <ul class="flex flex-col gap-y-2">
                        <li class="flex items-center justify-between">
                            <label
                                    for="vote-count"
                                    class="flex items-center"
                            ><span class="material-symbols-outlined text-blue-600 me-1"> done </span>
                                Maximum vote count for voter
                            </label>
                            <input
                                    id="vote-count"
                                    name="vote-count"
                                    type="number"
                                    min="1"
                                    value="1"
                                    class="bg-gray-50 disabled:cursor-not-allowed disabled:bg-gray-100 w-20 mx-5 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 p-2.5"/>
                        </li>

                        <li class="flex items-center justify-between">
                            <label
                                    for="login-required"
                                    class="flex items-center"
                            ><span class="material-symbols-outlined text-blue-600 me-1"> done </span>
                                Login required for vote
                            </label>
                            <input
                                    id="login-required"
                                    name="login-required"
                                    type="checkbox"
                                    checked
                                    class="bg-gray-50 disabled:cursor-not-allowed accent-sky-600/90 rounded-md disabled:bg-gray-100 w-4 h-4 mx-5 border border-gray-300 text-sm focus:ring-blue-500 focus:border-blue-500 p-2.5"/>
                        </li>

                        <li class="flex items-center my-2 justify-between">
                            <label
                                    for="show-statistic"
                                    class="flex items-center"
                            ><span class="material-symbols-outlined text-blue-600 me-1"> done </span>
                                Show statistic after voting
                            </label>
                            <input
                                    id="show-statistic"
                                    name="show-statistic"
                                    type="checkbox"
                                    checked
                                    class="bg-gray-50 disabled:cursor-not-allowed accent-sky-600/90 rounded-md disabled:bg-gray-100 w-4 h-4 mx-5 border border-gray-300 text-sm focus:ring-blue-500 focus:border-blue-500 p-2.5"/>
                        </li>
                    </ul>
                </div>
            </div>

            <div class="w-full flex justify-center">
                <button
                        id="submit"
                        type="submit"
                        class="bg-sky-600 group hover:bg-sky-700 mt-4 w-72 self-center text-white font-medium rounded-md text-sm px-8 py-2 text-center disabled:cursor-not-allowed disabled:bg-gray-400">
                    Create campaign
                </button>
            </div>
        </form>
    </div>
</div>

<script>
    $(document).ready(function () {
        const tzoffset = new Date().getTimezoneOffset() * 60000;
        const localISOTime = new Date(Date.now() - tzoffset).toISOString().slice(0, 16);
        const sdate = $("#sdate");
        const edate = $("#edate");
        sdate.val(localISOTime);
        sdate.prop("min", localISOTime);
        edate.val(localISOTime);
        edate.prop("min", localISOTime);


        <%--if ("<%=campaigner.getAvailable_campaigns()%>" < 1){--%>

        <%--}--%>

        $("#submit").click((event) => {
            event.preventDefault();
            let formData  = $("#campaign-form").serialize();
            formData += "&account=<%=accountType%>&campaigner=<%=campaigner.getCampaigner_Id()%>"
            Swal.fire({
                title:"loading..",
                html:'<div class="h-20 w-full overflow-hidden flex items-center justify-center"><span class="material-symbols-outlined text-7xl animate-spin text-sky-600">progress_activity</span></div>',
            });

            $.post("/process/process_new_campaign.jsp", formData, (data, status) => {
                data = data.replace(/\s/g, "");
                Swal.close();
                if (data === "1"){ // empty value
                    Swal.fire({
                        icon: 'warning',
                        title: 'Oops...',
                        text: 'Please fill all fields!',
                    })
                }else if(data === "2" || status !== "success"){ // error
                    Swal.fire({
                        icon: 'error',
                        title: 'Oops...',
                        text: 'Something went wrong!',
                    })
                }else if(data === "3"){ // success
                    Swal.fire({
                        icon: 'success',
                        title: 'Success',
                        text: 'Campaign created successfully!',
                    })
                }
            })
        })

    });
</script>

<%
    if (accountType.equals(("basic"))) {
%>
<script>
    document.getElementById("show-statistic").disabled = true;
    document.getElementById("login-required").disabled = true;
    document.getElementById("vote-count").disabled = true;
</script>
<%
    }
%>
