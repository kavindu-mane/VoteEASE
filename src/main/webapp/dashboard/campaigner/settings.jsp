<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="w-full flex h-full flex-col p-5 py-10">
    <%-- breadcrumb --%>
    <div class="flex items-center mb-3">
            <span class="material-symbols-outlined mx-2"> dashboard </span
            ><a
            href="#"
            class="hover:underline"
    >Dashboard</a
    >
        <span class="material-symbols-outlined mx-2"> arrow_forward_ios </span>
        Settings
    </div>
    <%-- basic settings --%>
    <form
            class="space-y-6 p-4 sm:p-6 md:p-8 bg-white max-w-3xl place-self-center rounded-md w-full shadow-md drop-shadow-md"
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
                    value="ABC Dream Star"
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
                    value="dreamstart@abc.com"
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
                    class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5"/>
        </div>
        <div>
            <label
                    for="newpassword"
                    class="block mb-2 text-sm font-medium text-gray-900"
            >New password
            </label>
            <input
                    type="password"
                    name="newpassword"
                    id="newpassword"
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
                class="w-full text-white bg-blue-700 hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 font-medium rounded-lg text-sm px-5 py-2.5 text-center">
            Save Changes
        </button>

        <h5 class="text-xl font-medium text-gray-900">Danger Settings</h5>

        <%-- account delete button --%>
        <button
                value="delete"
                type="submit"
                class="w-full text-red-500 hover:text-white border-2 border-red-500 hover:bg-red-500 focus:ring-4 focus:outline-none focus:ring-red-300 font-medium rounded-lg text-sm px-5 py-2.5 text-center duration-300 ease-in">
            Delete Account
        </button>
    </form>
</div>
