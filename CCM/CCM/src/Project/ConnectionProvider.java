/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Project;
import java.sql.*;

/**
 *
 * @author DELL
 */
public class ConnectionProvider {
    
    public static Connection getCon(){
        
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con;
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Covid_Management_System","root","Abhot@0612");
            return con;
        }
        catch(Exception e)
                {
            return null;
            
        }
    }
    
}
