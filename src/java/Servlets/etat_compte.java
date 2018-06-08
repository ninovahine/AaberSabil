package Servlets;

import Beans.Etat_compte;
import Beans.reservation;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.ParseException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

//import Beans.Hote;
//import Beans.Humain;

@WebServlet("/etat_compte")
public class etat_compte extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//doGet(request, response);
                
                HttpSession session = request.getSession();
               int etat =(int) session.getAttribute("etat");
                System.out.println("l etat "+etat);
                
		String compte =(String)session.getAttribute("emailH");
                System.out.println("l email"+compte);
                //===================
              /*  for(int i=0;i<list.size();i++) {
				listeVehicules.add(list.get(i).getVehicule());
			}*/
                //String boutton = request.get
             //   String boutton= request.getParameter("button");
                String boutton=request.getParameter("button");
                System.out.println(boutton);
		if(boutton.equals("activer")) {
	
		System.out.println(boutton);
		Etat_compte com = new Etat_compte(compte, etat); 
		com.Activer(compte);
		
              request.getRequestDispatcher("ListeHote.jsp").forward(request, response);  
                }
                
                
                if(boutton.equals("desactiver")) {
	
		System.out.println(boutton);
		Etat_compte com = new Etat_compte(compte, etat); 
		com.Desactiver(compte);
		
              request.getRequestDispatcher("ListeHote.jsp").forward(request, response);  
                }
                
		//String etat = request.getParameter("etat_compte");
		
		//HttpSession s = request.getSession();
		
		//Humain h = new Humain(mail, psw);
		//h.login(mail, psw);

		
		
                /*if (mail.equals(h.bdemail) && psw.equals(h.bdpsw)) {

				s.setAttribute("mail", mail);
				response.sendRedirect("EspaceVoyageur.jsp");

			}else {
				if (mail.isEmpty() || psw.isEmpty()) {
					request.setAttribute("message", "sorry, youll need to fill the box");
					request.getRequestDispatcher("login.jsp").forward(request, response);
					System.out.println("problem f les champs wahed fihoum faregh");
					
				} else {
				
				request.setAttribute("message", "invalid account, please try again");
				request.getRequestDispatcher("login.jsp").forward(request, response);;
				System.out.println("nom connecté");
				}
                        	}
	}
	
	
	
	
	
	
	

	System.out.println("eni f button deconecter");
	if (action.equals("deconnecte")) {
		// HttpSession session = request.getSession(false);
		s.invalidate();
		request.getRequestDispatcher("index.jsp").forward(request, response);

	}
        
	String email = request.getParameter("username");
	String epsw = request.getParameter("pass");
        String etat = request.getParameter("etat_compte");
	String eaction = request.getParameter("op");
        
        System.out.println("9bel int compte"+etat);
       // int etat_c=java.lang.Integer.parseInt(etat);
	HttpSession se = request.getSession();
       // se.getInt("etat_compte");
	//se.getAttribute("etat_compte");
        
       System.out.println("wra int compte"+se.getAttribute("etat_compte"));
      // int compte =(int)se.getAttribute("etat_compte");
	Hote h1 = new Hote(mail, psw,etat);
	h1.login(mail, psw );

	
	if (eaction.equals("connection")) {
System.out.println("je test la connex w rahou yconnecti bien ");
               /* if(h1.etat_c==0){
                 System.out.println("je test etat compte avec le 0 ");
                             request.setAttribute("message", "votre compte est désactivé");
                              request.getRequestDispatcher("loginHote.jsp").forward(request, response);}
else {
		if (email.equals(h1.bdemail) && epsw.equals(h1.bdpsw)) {

			se.setAttribute("mail", mail);
			response.sendRedirect("indexx - Copy - Copy.html");

		}else {
			if (mail.isEmpty() || psw.isEmpty()) {
				request.setAttribute("message", "sorry, youll need to fill the box");
				request.getRequestDispatcher("loginHote.jsp").forward(request, response);
				System.out.println("problem f les champs wahed fihoum faregh");
				
			} else {
			
			request.setAttribute("message", "invalid account, please try again");
			request.getRequestDispatcher("loginHote.jsp").forward(request, response);;
			System.out.println("nom connecté");
			}
		}
}
      //  }








System.out.println("eni f button deconecter");
if (action.equals("deconnecte")) {
	// HttpSession session = request.getSession(false);
	s.invalidate();
	request.getRequestDispatcher("index.jsp").forward(request, response);

}
	
	}
*/
                
}
public static void main(String []args) throws ParseException{
    etat_compte n=new etat_compte();
    



}
}
