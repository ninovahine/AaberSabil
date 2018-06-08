
package Servlets;

import Beans.Etat_compte;
import Beans.Etat_compte2;
import Beans.Hote;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet(name = "etat_compte2", urlPatterns = {"/etat_compte2"})
public class etat_compte2 extends HttpServlet {

   
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ArrayList <Hote> liste=new ArrayList<Hote>();
                liste.add(new Hote());
                Hote hote =new Hote();
               String sql1="select * from hote ";
	try {
		Class.forName("org.postgresql.Driver"); 
		Connection con;
		con = DriverManager.getConnection("jdbc:postgresql://localhost:5432/AaberSabiil", "postgres", "admin");
		PreparedStatement ps = con.prepareStatement(sql1);
		
		
		ResultSet res2 = ps.executeQuery();
			while (res2.next()) {
				hote.setEmail(res2.getString("email"));
				
				liste.add(hote);
                                            }
                        } catch (Exception e) {
			e.printStackTrace();}
			 


        }
        public void kaka(){
            ArrayList <Hote> liste=new ArrayList<Hote>();
                liste.add(new Hote());
                Hote hote =new Hote();
               String sql1="select * from hote ";
	try {
		Class.forName("org.postgresql.Driver"); 
		Connection con;
		con = DriverManager.getConnection("jdbc:postgresql://localhost:5432/AaberSabiil", "postgres", "admin");
		PreparedStatement ps = con.prepareStatement(sql1);
		
		
		ResultSet res2 = ps.executeQuery();
			while (res2.next()) {
				hote.setEmail(res2.getString("email"));
                                hote.setEtat_compte(res2.getInt("etat_compte"));
				System.out.print(res2.getString("email"));
                                System.out.println("----------"+res2.getInt("etat_compte"));
				liste.add(hote);
                                            }
                        System.out.print(liste.get(1).getEmail()); 
                        } catch (Exception e) {
			e.printStackTrace();}
			 


        }

public static void main(String []args) throws ParseException{
    etat_compte2 n=new etat_compte2();
   n.kaka();



}










//doGet(request, response);
                /*String action=request.getParameter("action");
               Hote h=new Hote();
               Etat_compte2 etat=new Etat_compte2();
                HttpSession session=request.getSession(true);
              //  case "getUserToBlock":
			ArrayList<Hote> liste  = new ArrayList<>();
			
        try {
            liste = etat.getall();
        } catch (SQLException ex) {
            Logger.getLogger(etat_compte2.class.getName()).log(Level.SEVERE, null, ex);
        }
			session.setAttribute("listusers", liste);
			response.sendRedirect("test.jsp");
			
			//break;
                     //   case "bloquer":
			String email;
        email = String.valueOf(request.getParameter("email"));
			//Hote = new Hote();
                        h.setEmailH(email);
			//Hote.setId_user(iduser);
			//if(etat.bloquer(h)){
			//	liste  = etat.getall();
				//session.setAttribute("listusers", liste);
				//response.sendRedirect("admin/testB.jsp");
			}
			//break;
             */   
        }
    
   
    


