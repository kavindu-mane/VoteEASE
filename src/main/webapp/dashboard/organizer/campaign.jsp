<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="w-full flex-col xl:flex-row p-10 xl:gap-x-10 flex">
    <%-- graph details --%>
    <div class="w-full xl:w-2/3 flex flex-col gap-y-8">
        <div class="w-full">
            <canvas id="chart"></canvas>
        </div>

        <div class="w-full flex flex-col justify-center">
            <h2 class="text-lg font-semibold">Candidate Details</h2>

            <%-- details table --%>
            <div class="overflow-x-hidden shadow-md sm:rounded-lg mt-3 drop-shadow-lg">
                <table class="w-full text-sm text-left text-gray-500 table-fixed">
                    <thead class="text-xs text-gray-50 uppercase bg-slate-400">
                        <tr>
                            <th
                                    scope="col"
                                    class="px-6 py-3">
                                Number/Key
                            </th>
                            <th
                                    scope="col"
                                    class="px-6 py-3">
                                Name
                            </th>
                            <th
                                    scope="col"
                                    class="px-6 py-3">
                                Votes
                            </th>
                        </tr>
                    </thead>

                    <tbody>
                        <tr class="bg-white border-b even:bg-gray-200">
                            <td class="px-6 py-4">test 2</td>
                            <td class="px-6 py-4">test 1</td>
                            <td class="px-6 py-4">20</td>
                        </tr>

                        <tr class="bg-white border-b even:bg-gray-200">
                            <td class="px-6 py-4">test 3</td>
                            <td class="px-6 py-4">test 1</td>
                            <td class="px-6 py-4">20</td>
                        </tr>

                        <tr class="bg-white border-b even:bg-gray-200">
                            <td class="px-6 py-4">test 2</td>
                            <td class="px-6 py-4">test 1</td>
                            <td class="px-6 py-4">20</td>
                        </tr>

                        <tr class="bg-white border-b even:bg-gray-200">
                            <td class="px-6 py-4">test 3</td>
                            <td class="px-6 py-4">test 1</td>
                            <td class="px-6 py-4">20</td>
                        </tr>
                        <tr class="bg-white border-b even:bg-gray-200">
                            <td class="px-6 py-4">test 2</td>
                            <td class="px-6 py-4">test 1</td>
                            <td class="px-6 py-4">20</td>
                        </tr>

                        <tr class="bg-white border-b even:bg-gray-200">
                            <td class="px-6 py-4">test 3</td>
                            <td class="px-6 py-4">test 1</td>
                            <td class="px-6 py-4">20</td>
                        </tr>

                        <tr class="bg-white border-b even:bg-gray-200">
                            <td class="px-6 py-4">test 2</td>
                            <td class="px-6 py-4">test 1</td>
                            <td class="px-6 py-4">20</td>
                        </tr>

                        <tr class="bg-white border-b even:bg-gray-200">
                            <td class="px-6 py-4">test 3</td>
                            <td class="px-6 py-4">test 1</td>
                            <td class="px-6 py-4">20</td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
    <%-- campaign details --%>
    <div class="w-full mt-5 xl:mt-0 xl:w-1/3">
        <%-- basic details --%>
        <div class="my-5 bg-white rounded-md shadow-md drop-shadow-md p-5">
            <h3 class="font-bold text-lg">Campaign Details</h3>
            <div class="mt-3 ps-5 font-semibold">
                <p class="">Name : <span class="font-normal">Campaign - 1</span></p>
                <p class="">
                    Link : <span class="font-normal">http:://localhost:8080/campaign?id=4001</span>
                </p>
                <p class="">Status : <span class="font-normal">Running</span></p>

                <div class="mt-5 flex gap-x-5">
                    <button
                            class="rounded py-1.5 mt-3 w-24 bg-green-600 text-white font-semibold hover:bg-green-500">
                        Edit
                    </button>
                    <button
                            class="rounded py-1.5 mt-3 w-24 bg-green-600 text-white font-semibold hover:bg-green-500">
                        Copy link
                    </button>
                </div>
            </div>
        </div>
        <%-- campaign actions --%>
        <div class="my-5 bg-white rounded-md shadow-md drop-shadow-md p-5">
            <h3 class="font-bold text-lg">Campaign Actions</h3>
            <div class="mt-5 flex gap-x-5 ps-5">
                <button
                        class="rounded py-1.5 bg-green-600 text-white font-semibold w-24 hover:bg-green-500">
                    Start
                </button>
                <button
                        onclick="deleteAlert()"
                        class="rounded py-1.5 bg-red-600 text-white font-semibold w-24 hover:bg-red-500">
                    Delete
                </button>
            </div>
        </div>
        <%-- campaign rules --%>
        <div class="my-5 bg-white rounded-md shadow-md drop-shadow-md p-5">
            <h3 class="font-bold text-lg">Campaign Rules</h3>
            <div class="mt-3 ps-5">
                <p class="">Maximum vote for voter : <span class="font-bold">1</span></p>
                <p class="">Login required for vote : <span class="font-bold">On</span></p>
                <p class="">Show statistic after voting : <span class="font-bold">On</span></p>
                <button
                        disabled
                        class="rounded py-1.5 mt-3 disabled:bg-gray-400 px-3 bg-green-600 text-white font-semibold hover:bg-green-500">
                    Change rules <i class="fa-solid fa-crown text-yellow-300 ms-1 text-sm"></i>
                </button>
            </div>
        </div>
    </div>
</div>

<script>
    $(document).ready(function () {
        const ctx = $("#chart");

        new Chart(ctx, {
            type: "bar",
            data: {
                labels: ["1", "2", "3", "4", "5", "6"],
                datasets: [
                    {
                        label: "No of Votes",
                        data: [12, 19, 3, 5, 2, 3],
                        borderWidth: 1,
                    },
                ],
            },
            options: {
                scales: {
                    y: {
                        beginAtZero: true,
                    },
                },
            },
        });
    })

</script>