<%@ page language="java" isErrorPage="true" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8"/>
        <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
        <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
        <title>Page not found - VoteEASE</title>

        <%-- common imports --%>
        <jsp:include page="components/common.html"/>
    </head>
    <body>
        <%-- header--%>
        <jsp:include page="components/header.html"/>
        <div class="flex flex-col w-full items-center">
            <h1 class="text-3xl md:text-5xl font-Poppins font-semibold my-8">404 | Page not found</h1>
           <a href="${pageContext.request.contextPath}/"
              class="bg-sky-500 text-white px-3 py-2 rounded-md hover:bg-sky-800 duration-300 ease-in" >Go to home page</a>
        </div>
        <%-- footer --%>
        <jsp:include page="components/footer.html"/>
    </body>
</html>