import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.voteesae.classes.DBConnector; // Replace with your actual package

public class VotterDashboard extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            Connection connection = DBConnector.getConnection();
            Statement statement = connection.createStatement();
            
            String accountQuery = "SELECT account_id, account_type, email FROM account";
            ResultSet accountResult = statement.executeQuery(accountQuery);
            
            ArrayList<String[]> dataRows = new ArrayList<>();

            while (accountResult.next()) {
                String[] rowData = new String[5];
                rowData[0] = accountResult.getString("account_id");
                rowData[1] = accountResult.getString("account_type");
                rowData[2] = accountResult.getString("email");
                rowData[3] = ""; // Voter ID
                rowData[4] = ""; // Voter Name
                dataRows.add(rowData);
            }

            accountResult.close();
            
            String voterQuery = "SELECT voter_id, voter_name FROM voter";
            ResultSet voterResult = statement.executeQuery(voterQuery);

            int index = 0;
            while (voterResult.next() && index < dataRows.size()) {
                dataRows.get(index)[3] = voterResult.getString("voter_id");
                dataRows.get(index)[4] = voterResult.getString("voter_name");
                index++;
            }

            voterResult.close();
            statement.close();
            connection.close();

            request.setAttribute("dataRows", dataRows);
            request.getRequestDispatcher("voterDashboard.jsp").forward(request, response);
        } catch (Exception e) {
            e.printStackTrace();
            response.getWriter().println("An error occurred: " + e.getMessage());
        }
    }
}