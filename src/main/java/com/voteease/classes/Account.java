/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package classes;
import java.sql.*;
/**
 *
 * @author KASUNIKA RATHNAYAKA
 */
public class Account {
    private String account_id;
    private String account_status;
    
    public Account(String account_id){
        this.account_id=account_id;
    }
    
    public boolean activateAccount(Connection con) throws Exception {
        String query = "UPDATE account SET account_status=? WHERE account_id=?";
        PreparedStatement pstmt = con.prepareStatement(query);
        pstmt.setString(1, "Active");
        pstmt.setString(2, account_id);
        int a = pstmt.executeUpdate();
        if (a > 0) {
            return true;
        } else {
            return false;
        }
    }
    
    public boolean deactivateAccount(Connection con) throws Exception {
        String query = "UPDATE account SET account_status=? WHERE account_id=?";
        PreparedStatement pstmt = con.prepareStatement(query);
        pstmt.setString(1, "Deactive");
        pstmt.setString(2, account_id);
        int a = pstmt.executeUpdate();
        if (a > 0) {
            return true;
        } else {
            return false;
        }
    }
}
