package Servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Beans.Hote;
import Beans.Humain;


@WebServlet("/InscriptionHote")
public class InscriptionHote extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public InscriptionHote() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
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
		String jT = request.getParameter("joursdeTravails");
                String will = request.getParameter("willaya");
                String nbrper = request.getParameter("NbrP");
		 String jour2 = request.getParameter("jour2");
                String haja=request.getParameter("etat_compte");
                int etat=1;
		Hote h = new Hote(Nom, Prenom, Email, Password,Telephone, day, month, year, Gender,jT,will,nbrper,jour2,etat );
		h.InscrireHote( Nom,Prenom ,Email, Password,Telephone, day, month, year, Gender,jT,will,nbrper,jour2,etat );
                                                                                            
request.getRequestDispatcher("index.jsp").forward(request, response);
		
	}

}
