 
package Servlets;

import Beans.Humain;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author ASUS
 */
@WebServlet("/listeVoyageur")
 
public class listeVoyageur extends HttpServlet {

     

     
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
         
    }
 
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
         HttpSession sessionn = request.getSession();
         ArrayList <Humain> liste= new ArrayList<Humain>();
       // Humain voyageur=new Humain();
         try {
          String sql11="select * from voyageur";
		
		Connection con;
		
		Class.forName("org.postgresql.Driver"); 
		
		con = DriverManager.getConnection("jdbc:postgresql://localhost:5432/AaberSabiil","postgres", "admin");
		Statement ps = con.createStatement();
		ResultSet res1 = ps.executeQuery(sql11);
		 while(res1.next()){
                     Humain voyageur=new Humain();
                    voyageur.setEmail(res1.getString("email"));
                     voyageur.setEtat_compte(res1.getInt("etat_compte"));
                            
                     liste.add(voyageur);
                 }
                 
		sessionn.setAttribute("listee", liste);
       
        /* HttpSession session = request.getSession();
         int etat =(int) session.getAttribute("etat");
         String emailV =(String)session.getAttribute("emailV");*/
        System.out.println("ani fel servlet listeVoyageur.java");
            
           request.setAttribute("liste",liste);
           request.getRequestDispatcher("ListeVoyageurs_1.jsp").forward(request, response);  
           
		
System.out.println("ga3ed yrechercher bien ;)");
	} catch (Exception e) {
		
System.out.println("mahouch ga3ed yrechercher" +e.getMessage());
	}
    }
}
 
   

