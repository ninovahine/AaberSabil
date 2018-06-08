package Servlets;

import Beans.Etat_compte;
import Beans.Etat_compteVoyageur;
import Beans.Humain;
import Beans.reservation;
import Servlets.listeVoyageur;
import java.io.IOException;
import static java.lang.Integer.parseInt;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.ParseException;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

//import Beans.Hote;
//import Beans.Humain;

@WebServlet("/etat_compteVoyageur")
public class etat_compteVoyageur extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//doGet(request, response);
                
                HttpSession session = request.getSession();
	 System.out.println("serlet2 " );
              /* int etat =(int) session.getAttribute("etat");
                System.out.println("l etat "+etat);
                
		String compte =(String)session.getAttribute("emailV");
                System.out.println("l email"+compte);
                */
                //===================
                
                //String boutton = request.get
              String bouton= request.getParameter("button");
              request.getParameter("button");
                String v=request.getParameter("buttonHiden");
                 System.out.println("wra get parametre  " );
                int valeurHidden= parseInt(v);
                System.out.println("wra parse " );
               // String boutton=request.getParameter.Value("button");
              // String[] boutton= request.getParameterValues("boutton");
               System.out.println("gggggggggggggggg"+request.getParameter("buttonHiden"));
                System.out.println("mon bouttonHiden est "+v+" et mon button value est :"+bouton);
                //session=(HttpSession);
                ArrayList <Humain>n=(ArrayList <Humain>) session.getAttribute("listee");
                
                
                        session.getAttribute("listee");
                        
              // String[] listee= request.getParameterValues("listee");
               System.out.println("emails "+n.get(valeurHidden).getEmail());
		if(bouton.equals("Activer")) {
	
		//System.out.println(boutton);
		Etat_compteVoyageur com = new Etat_compteVoyageur(n.get(valeurHidden).getEmail(), n.get(valeurHidden).getEtat_compte()); 
		com.Activer(n.get(valeurHidden).getEmail());
		
              request.getRequestDispatcher("ListeVoyageurs_1_1.jsp").forward(request, response);  
                }
                if(bouton.equals("Desactiver")) {
	
		//System.out.println(boutton);
		Etat_compteVoyageur com = new Etat_compteVoyageur(n.get(valeurHidden).getEmail(), n.get(valeurHidden).getEtat_compte()); 
		com.Desactiver(n.get(valeurHidden).getEmail());
		
              request.getRequestDispatcher("ListeVoyageurs_1_1.jsp").forward(request, response);  
                }
                
                
              /*  if(bouton.equals("desactiver")) {
	
		//System.out.println(boutton);
		Etat_compteVoyageur com = new Etat_compteVoyageur(compte, etat); 
		com.Desactiver(compte);
		
              request.getRequestDispatcher("ListeVoyageurs.jsp").forward(request, response);  
                }*/
                 
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
    etat_compteVoyageur n=new etat_compteVoyageur();
    
    



}
}
