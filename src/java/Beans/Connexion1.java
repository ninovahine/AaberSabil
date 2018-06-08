package Beans;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;


public class Connexion1 {

    public Connexion1(){

    }
    public static Connection DonnerConnection() throws SQLException{

       Connection Cx=null;
        try {
            Class.forName("org.postgresql.Driver");
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(Connexion1.class.getName()).log(Level.SEVERE, null, ex);
        }
       Cx=DriverManager.getConnection("jdbc:postgresql://localhost:5432/AaberSabiil", "postgres", "admin");
       return Cx;
       
   }
 
}