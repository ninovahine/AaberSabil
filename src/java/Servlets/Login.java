package Servlets;

import java.io.IOException
;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Beans.Hote;
import Beans.Humain;

@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
		String mail = request.getParameter("username");
		String psw = request.getParameter("pass");
		String action = request.getParameter("op");
		
		HttpSession session = request.getSession();
		
		Humain h = new Humain(mail, psw);
		h.login(mail, psw);
		Humain V = new Humain();

		
		if (action.equals("connection")) {

if(h.etat_c==0){
                 System.out.println("je test etat compte avec le 0 ");
                             request.setAttribute("message", "votre compte est désactivé");
                              request.getRequestDispatcher("login.jsp").forward(request, response);}
else {
			if (mail.equals(h.bdemail) && psw.equals(h.bdpsw)) {

				session.setAttribute("mail", mail);
				V= V.recupererVoyageur(mail);
				session.setAttribute("Voyageur",V);
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
	}}
	
	
	
	
	
	
	

	System.out.println("eni f button deconecter");
	if (action.equals("deconnecte")) {
		// HttpSession session = request.getSession(false);
		session.invalidate();
		request.getRequestDispatcher("index.jsp").forward(request, response);

	}

	
	}

}
