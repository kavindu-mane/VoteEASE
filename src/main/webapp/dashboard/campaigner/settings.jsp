<%@ page import="com.voteease.classes.Campaigner" %>
<%@ page import="com.voteease.classes.DBConnector" %>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%
    Campaigner campaigner = (Campaigner) request.getAttribute("campaigner");
    String campaignerId = campaigner.getCampaigner_Id();
    String userID = campaigner.getUserId();
    try {
        campaigner.loadInto(DBConnector.getConnection(), userID);
    } catch (Exception e) {
%>
<script>
    Swal.fire({
        icon: 'error',
        title: 'Oops...',
        text: 'Something went wrong!',
    })
</script>
<%
    }
%>
<div class="w-full flex h-full flex-col p-5 py-10">
    <%-- breadcrumb --%>
    <div class="flex items-center mb-3">
            <span class="material-symbols-outlined mx-2"> dashboard </span
            ><a
            href="${pageContext.request.contextPath}/campaigner"
            class="hover:underline"
    >Dashboard</a
    >
        <span class="material-symbols-outlined mx-2"> arrow_forward_ios </span>
        Settings
    </div>
    <%-- basic settings --%>
    <div
            class="p-4 sm:p-6 md:p-8 bg-white max-w-3xl place-self-center rounded-md w-full shadow-md drop-shadow-md">
        <form
                class="space-y-6 w-full"
                id="basic-settings">
            <h5 class="text-xl font-medium text-gray-900">Basic Settings</h5>
            <div>
                <label
                        for="name"
                        class="block mb-2 text-sm font-medium text-gray-900"
                >Organization name <span class="text-red-500">*</span></label
                >
                <input
                        type="text"
                        name="name"
                        id="name"
                        class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5"
                        value="<%=campaigner.getName()%>"
                        required/>
            </div>
            <div>
                <label
                        for="email"
                        class="block mb-2 text-sm font-medium text-gray-900"
                >Organization email <span class="text-red-500">*</span></label
                >
                <input
                        type="email"
                        name="email"
                        id="email"
                        class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5"
                        value="<%=campaigner.getEmail()%>"
                        required/>
            </div>
            <div>
                <label
                        for="password"
                        class="block mb-2 text-sm font-medium text-gray-900"
                >Current password <span class="text-red-500">*</span></label
                >
                <input
                        type="password"
                        name="password"
                        id="password"
                        placeholder="••••••••"
                        required
                        class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5"/>
            </div>
            <div>
                <label
                        for="new_password"
                        class="block mb-2 text-sm font-medium text-gray-900"
                >New password
                </label>
                <input
                        type="password"
                        name="new_password"
                        id="new_password"
                        placeholder="••••••••"
                        class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5"/>
            </div>
            <div>
                <label
                        for="conf_password"
                        class="block mb-2 text-sm font-medium text-gray-900"
                >Confirm password
                </label>
                <input
                        type="password"
                        name="conf_password"
                        id="conf_password"
                        placeholder="••••••••"
                        class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5"/>
            </div>
            <%-- submit button --%>
            <button
                    type="submit"
                    id="submit"
                    class="w-full text-white bg-blue-700 hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 font-medium rounded-lg text-sm px-5 py-2.5 text-center">
                Save Changes
            </button>

        </form>

        <h5 class="text-xl font-medium text-gray-900 my-6">Danger Settings</h5>
        <%-- account delete button --%>
        <button
                onclick="deleteAlert(event)"
                class="w-full text-red-500 hover:text-white border-2 border-red-500 hover:bg-red-500 focus:ring-4 focus:outline-none focus:ring-red-300 font-medium rounded-lg text-sm px-5 py-2.5 text-center duration-300 ease-in">
            Delete Account
        </button>
    </div>
</div>

<script>
    $(document).ready(function () {
        $("#submit").click((event) => {
            event.preventDefault();
            let formData = $("#basic-settings").serialize();
            formData += "&user=<%=userID%>&campaigner=<%=campaignerId%>"
            Swal.fire({
                title: "loading..",
                html: '<div class="h-20 w-full overflow-hidden flex items-center justify-center"><span class="material-symbols-outlined text-7xl animate-spin text-sky-600">progress_activity</span></div>',
            });

            $.post("/process/process_campaigner_update.jsp", formData, (data, status) => {
                data = data.replace(/\s/g, "");
                console.log(data)
                Swal.close();
                if (data === "1") { // empty value
                    Swal.fire({
                        icon: 'warning',
                        title: 'Oops...',
                        text: 'Please fill all required fields!',
                    })
                } else if (data === "2" || status !== "success") { // error
                    Swal.fire({
                        icon: 'error',
                        title: 'Oops...',
                        text: 'Something went wrong!',
                    })
                } else if (data === "3") { // password not match
                    Swal.fire({
                        icon: 'error',
                        title: 'Oops...',
                        text: 'Passwords not match!',
                    })
                } else if (data === "4") { // success
                    Swal.fire({
                        icon: 'success',
                        title: 'Success',
                        text: 'Campaign created successfully!',
                    })
                }
            })
        });
    });
</script>

<script>
    const deleteAlert = (event) => {
        Swal.fire({
            title: "Are you sure?",
            text: "You won't be able to revert this!",
            icon: "warning",
            showCancelButton: true,
            confirmButtonColor: "#d33",
            cancelButtonColor: "#3085d6",
            confirmButtonText: "Yes, delete it!",
        }).then((result) => {
            if (result.isConfirmed) {
                let formData = "user=" +<%=userID%>;
                $.post("/process/process_delete_campaigner.jsp", formData, (data, status) => {
                    data = data.replace(/\s/g, "");
                    console.log(data)
                    if (data == "1") {
                        Swal.fire("Deleted!", "Candidate has been deleted.", "success");
                    } else {
                        Swal.fire("Error!", "Something went wrong.", "error");
                    }
                })
            }
        });
    };
</script>
