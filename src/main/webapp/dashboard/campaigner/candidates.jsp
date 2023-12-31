<%@ page import="com.voteease.classes.Campaign" %>
<%@ page import="com.voteease.classes.DBConnector" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>

<%
    Campaign campaign = new Campaign(request.getParameter("c"));
    try {
        if (campaign.getInfo(DBConnector.getConnection())) {
%>

<div
        class="w-full flex justify-center items-center h-full flex-col-reverse xl:flex-row py-5">
    <%-- candidate list --%>
    <div class="w-full flex justify-start gap-y-5 h-full p-10 flex-col">
        <%-- breadcrumb --%>
        <div class="flex items-center mb-3">
              <span class="material-symbols-outlined mx-2"> dashboard </span
              ><a
                href="${pageContext.request.contextPath}/campaigner"
                class="hover:underline"
        >Dashboard</a
        >
            <span class="material-symbols-outlined mx-2"> arrow_forward_ios </span
            ><a
                href="${pageContext.request.contextPath}/campaigner/campaign?c=<%=campaign.getCampaignID()%>"
                class="hover:underline truncate"
                id="campaign-breadcrumb"
        ><%=campaign.getCampaignName()%>
        </a
        >
            <span class="material-symbols-outlined mx-2"> arrow_forward_ios </span
            >
            <p
            >Candidates</p
            >
        </div>

        <%
            ResultSet candidates = campaign.getCandidates();
            if (!candidates.next()) {
        %>
        <div class="italic mt-5 text-center text-gray-500">
            No candidate data found.
        </div>
        <%
        } else {
            do {
                String id = candidates.getString("candidate_id");
        %>
        <div
                class=
                        "flex bg-white group p-3 cursor-pointer items-center hover:bg-sky-100 shadow-md drop-shadow-md rounded-md ring-1">
            <div class="flex-col w-full">
                <h3 class=""> Number / Key : <span> <%=candidates.getString("candidate_number")%> </span></h3>
                <h3 class=""> Name : <span> <%=candidates.getString("candidate_name")%> </span></h3>
            </div>

            <span
                    id="<%=id%>"
                    onclick="deleteAlert(event)"
                    class="material-symbols-outlined bg-red-100 text-red-500 me-5 group-hover:bg-red-500 group-hover:text-white flex items-center justify-center rounded-full p-3"> delete </span>
        </div>
        <%
                } while (candidates.next());
            }
        %>
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
                        required
                />
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
                        required
                />
            </div>
            <div class="w-full flex justify-center">
                <button
                        type="submit"
                        id="submit"
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

        $("#submit").click((event) => {
            event.preventDefault();
            let formData = $("#candidate-form").serialize();
            formData += "&campaign=<%=campaign.getCampaignID()%>"
            console.log(formData)
            Swal.fire({
                title: "loading..",
                html: '<div class="h-20 w-full overflow-hidden flex items-center justify-center"><span class="material-symbols-outlined text-7xl animate-spin text-sky-600">progress_activity</span></div>',
            });

            $.post("/process/process_add_candidate.jsp", formData, (data, status) => {
                data = data.replace(/\s/g, "");
                Swal.close();
                if (data === "1") { // empty value
                    Swal.fire({
                        icon: 'warning',
                        title: 'Oops...',
                        text: 'Please fill all fields!',
                    })
                } else if (data === "2" || status !== "success") { // error
                    Swal.fire({
                        icon: 'error',
                        title: 'Oops...',
                        text: 'Something went wrong!',
                    })
                } else if (data === "3") { // success
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
                let formData = "candidate="+event.target.id;
                $.post("/process/process_delete_candidate.jsp", formData, (data, status) => {
                    data = data.replace(/\s/g, "");
                    console.log(data)
                    if (data == "1"){
                        Swal.fire("Deleted!", "Candidate has been deleted.", "success");
                    }else{
                        Swal.fire("Error!", "Something went wrong.", "error");
                    }
                })
            }
        });
    };
</script>

<%
    }
} catch (Exception e) {
%>
<script>
    Swal.fire({
        icon: 'error',
        title: 'Oops...',
        text: 'Something went wrong!',
    })
    console.log(<%=e%>)
</script>

<%
    }
%>