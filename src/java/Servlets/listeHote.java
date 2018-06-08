 
package Servlets;

import Beans.Hote;
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
@WebServlet("/listeHote")
 
public class listeHote extends HttpServlet {

     

     
   
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
         
    }
 
   
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
         HttpSession sessionn = request.getSession();
         ArrayList <Hote> liste= new ArrayList<Hote>();
       // Humain voyageur=new Humain();
         try {
          String sql11="select * from hote";
		
		Connection con;
		
		Class.forName("org.postgresql.Driver"); 
		
		con = DriverManager.getConnection("jdbc:postgresql://localhost:5432/AaberSabiil","postgres", "admin");
		Statement ps = con.createStatement();
		ResultSet res1 = ps.executeQuery(sql11);
		 while(res1.next()){
                     Hote hote=new Hote();
                    hote.setEmail(res1.getString("email"));
                     hote.setEtat_compte(res1.getInt("etat_compte"));
                            
                     liste.add(hote);
                 }
                 
		sessionn.setAttribute("listee", liste);
       
        /* HttpSession session = request.getSession();
         int etat =(int) session.getAttribute("etat");
         String emailV =(String)session.getAttribute("emailV");*/
        System.out.println("ani fel servlet listeHote.java");
            
           request.setAttribute("liste",liste);
           request.getRequestDispatcher("ListeHote_1.jsp").forward(request, response);  
           
		
System.out.println("ga3ed yrechercher bien ;)");
	} catch (Exception e) {
		
System.out.println("mahouch ga3ed yrechercher" +e.getMessage());
	}
    }
}
 
   

