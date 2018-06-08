package Servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Beans.Humain;

@WebServlet("/InscriptionVoyageur")
public class InscriptionVoyageur extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
		String Nom=request.getParameter("Nom");
		String Prenom=request.getParameter("Prenom");
		String Email=request.getParameter("Email");
		String Password=request.getParameter("Password");
		String Telephone=request.getParameter("Telephone");
		String day = request.getParameter("Day");
		String month = request.getParameter("Mois");
		String year = request.getParameter("Annee");
		String Gender=request.getParameter("gender");
		int etat=1;
		Humain h = new Humain(Nom, Prenom, Email, Password, day, month, year, Gender, Telephone,etat);
				h.InscrireVoyageur( Nom,Prenom, Email, Password, day, month, year, Gender, Telephone,etat);
                               
		request.getRequestDispatcher("index.jsp").forward(request, response);}
}
