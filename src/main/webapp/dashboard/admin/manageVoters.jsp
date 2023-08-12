<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Voters | VoteEase</title>
    <link
            href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.15/dist/tailwind.min.css"
            rel="stylesheet"
    />
    <jsp:include page="../../components/common.html"/>
</head>

<body>
<jsp:include page="../../components/header.html"/>
<div class="container mx-auto p-8">
    <h1 class="text-2xl font-extrabold text-blue-900 mb-4">
        Voters - VoteEASE
    </h1>
    <div class="bg-white p-4 rounded-xl shadow-lg">
        <table class="w-full border border-collapse">
            <thead>
                <tr class="bg-gray-300">
                    <th class="p-2 border border-gray-400">Voter ID</th>
                    <th class="p-2 border border-gray-400">Account ID</th>
                    <th class="p-2 border border-gray-400">Name</th>
                    <th class="p-2 border border-gray-400">Email ID</th>
                    <th class="p-2 border border-gray-400">Status</th>
                    <th class="p-2 border border-gray-400">Action</th>
                </tr>
            </thead>
            <tbody>
               <%
                try{
                    Connection con = DBConnector.getConnection();
                    String query = "SELECT account.*, voter.voter_id, voter.name FROM account, voter WHERE account.account_id=voter.account_id";
                    PreparedStatement pstmt = con.prepareStatement(query);
                    ResultSet rs = pstmt.executeQuery();
                    while(rs.next()) {
                        
                %>
                <tr class="d-flex items-center">
                    <td class="p-2 border border-gray-300"><%=rs.getInt("voter_id")%></td>
                    <td class="p-2 border border-gray-300"><%=rs.getInt("account_id")%></td>
                    <td class="p-2 border border-gray-300"><%=rs.getString("name")%></td>
                    <td class="p-2 border border-gray-300"><%=rs.getString("email")%></td>
                    <td class="p-2 border border-gray-300"><%=rs.getString("account_status")%></td>
                    <td
                        class="p-2 border border-gray-300 flex justify-center space-x-5"
                        >
                        <a
                            href="../../process/activateVoter.jsp?id=<%=rs.getInt("
                            class="bg-blue-700 hover:bg-blue-600 text-white font-bold py-2 px-4 rounded-md"
                            >Activate</a
                        >


                        <a
                            href="../../process/deactivateVoter.jsp?id=<%=rs.getInt("
                            class="bg-red-600 hover:bg-red-500 text-white font-bold py-2 px-4 rounded-md"
                            >
                            Deactivate
                        </a>
                    </td>
                </tr>
                <%
                        }
                    } catch(Exception ex){
                
                    }
                %>
                
            </tbody>
        </table>
    </div>
</div>
<jsp:include page="../../components/footer.html"/>
</body>
</html>
