<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div
        class="w-full flex justify-center items-center h-full flex-col-reverse xl:flex-row py-5">
    <%-- candidate list --%>
    <div class="w-full flex justify-start gap-y-5 h-full p-10 flex-col">
        <%-- breadcrumb --%>
        <div class="flex items-center mb-3">
              <span class="material-symbols-outlined mx-2"> dashboard </span
              ><a
                href="#"
                class="hover:underline"
        >Dashboard</a
        >
            <span class="material-symbols-outlined mx-2"> arrow_forward_ios </span
            ><a
                href="#"
                class="hover:underline truncate"
                id="campaign-breadcrumb"
        >Campaign - 1</a
        >
            <span class="material-symbols-outlined mx-2"> arrow_forward_ios </span
            ><a
                href="#"
                class="hover:underline"
        >Candidates</a
        >
        </div>
        <div
                class="h-28 px-10 justify-center bg-sky-700 cursor-pointer hover:bg-sky-900 text-xl text-white font-bold shadow-md drop-shadow-md flex items-center rounded-md">
            Add new candidate
        </div>

        <div
                class="flex bg-white group p-3 cursor-pointer items-center hover:bg-sky-100 shadow-md drop-shadow-md rounded-md ring-1">
            <div class="flex-col w-full">
                <h3 class="">Number/Key : <span>1</span></h3>
                <h3 class="">Name : <span>Kavindu Manahara</span></h3>
            </div>
            <button
                    onclick="deleteAlert()"
                    class="text-red-500 me-5 group-hover:bg-red-500 group-hover:text-white bg-red-100 flex items-center justify-center rounded-full h-10 w-10">
                <span class="material-symbols-outlined"> delete </span>
            </button>
        </div>

        <div
                class="flex bg-white group p-3 cursor-pointer items-center hover:bg-sky-100 shadow-md drop-shadow-md rounded-md ring-1">
            <div class="flex-col w-full">
                <h3 class="">Number/Key : <span>1</span></h3>
                <h3 class="">Name : <span>Kavindu Manahara</span></h3>
            </div>
            <button
                    onclick="deleteAlert()"
                    class="text-red-500 me-5 group-hover:bg-red-500 group-hover:text-white bg-red-100 flex items-center justify-center rounded-full h-10 w-10">
                <span class="material-symbols-outlined"> delete </span>
            </button>
        </div>

        <div
                class="flex bg-white group p-3 cursor-pointer items-center hover:bg-sky-100 shadow-md drop-shadow-md rounded-md ring-1">
            <div class="flex-col w-full">
                <h3 class="">Number/Key : <span>1</span></h3>
                <h3 class="">Name : <span>Kavindu Manahara</span></h3>
            </div>
            <button
                    onclick="deleteAlert()"
                    class="text-red-500 me-5 group-hover:bg-red-500 group-hover:text-white bg-red-100 flex items-center justify-center rounded-full h-10 w-10">
                <span class="material-symbols-outlined"> delete </span>
            </button>
        </div>
    </div>

    <%-- edit/add candidate--%>
    <div class="w-full flex justify-center px-5">
        <form
                id="candidate-form"
                class="space-y-6 bg-white p-4 md:w-[35rem] sm:p-6 md:p-8 shadow-lg drop-shadow-lg rounded-md">
            <h5 class="text-2xl font-medium text-gray-900">Manage Candidates</h5>
            <%-- number --%>
            <div class="my-2">
                <label
                        for="number"
                        class="block mb-2 text-sm font-medium text-gray-900"
                >Candidate Number/Unique name<span class="text-red-500">*</span>
                </label>
                <input
                        type="text"
                        name="number"
                        id="number"
                        class="bg-gray-50 border !outline-none border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5"
                        placeholder="Candidate number"
                        required/>
            </div>
            <%-- name --%>
            <div class="my-2">
                <label
                        for="name"
                        class="block mb-2 text-sm font-medium text-gray-900"
                >Candidate name<span class="text-red-500">*</span>
                </label>

                <input
                        type="text"
                        name="name"
                        id="name"
                        class="bg-gray-50 border !outline-none border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5"
                        placeholder="Candidate name"
                        required/>
            </div>
            <div class="w-full flex justify-center">
                <button
                        type="submit"
                        class="bg-sky-600 group hover:bg-sky-700 mt-4 w-72 self-center text-white font-medium rounded-md text-sm px-8 py-2 text-center">
                    Add Candidate
                </button>
            </div>
        </form>
    </div>
</div>

<script>
    $(document).ready(function () {
        const campaignBreadcrumb = $("#campaign-breadcrumb");
        if (campaignBreadcrumb.width() > 160) {
            campaignBreadcrumb.addClass("w-40");
        }
    });
</script>
