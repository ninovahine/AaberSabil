package Servlets;

import java.io.IOException;
import java.sql.SQLException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Beans.Hote;
import static java.lang.Integer.parseInt;
import java.util.Date;
import java.util.Vector;
 @WebServlet("/rechercher")
public class rechercher extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public rechercher() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String wil = request.getParameter("Willaya");
		String datem = request.getParameter("dateA");
                String dateD = request.getParameter("dateD");
		String nbrp = request.getParameter("nbrP");
                Date date;
              //  Date date,dateDepart ;
                try {
                    // rodinahom des dates
                    date=new SimpleDateFormat("dd/MM/yyyy").parse(datem);
                   // dateDepart=new SimpleDateFormat("dd/MM/yyyy").parse(dateD);
                    // bah nrodouhom des jours (samedi dimeche.....)
                    DateFormat dateFormat=new SimpleDateFormat("EEEEEEEE");
                    String dateF=dateFormat.format(date);
                   // String dateDep=dateFormat.format(dateDepart);
                    //==========================================
                    // nrodouhom le jour gedah f chhar (1,5....)
              /*      DateFormat dateFormatjour=new SimpleDateFormat("dd");
                     String dateNumArrivé=dateFormatjour.format(dateF);
                     String dateNumDepart=dateFormatjour.format(dateDep);
                     //nhotouhom fi variable pour calculer le nbr de jours
                     
        // kayna haja lazem ntesti 3liha ki ykoun lekher ta3 chhar exmpl date d'arrive le 31 et le depart le 2 de mois suivant
                    int Arrive=parseInt(dateF);
                    int Depart=parseInt(dateDep);
                     int nbrJours=Depart-Arrive+1;
                      Vector <String> v=new Vector <String>();
        v.add("samedi");v.add("dimenche");v.add("lundi");v.add("mardi");v.add("mercredi");v.add("jeudi");v.add("vendredi");
                     int indexDay=v.indexOf(dateF)-1;
        for (int i = 0; i <nbrJours; i++) {
            indexDay=indexDay+1;
            if (indexDay==7) {indexDay=0;}
            System.out.print(v.get(indexDay )+"\t");
        }
        System.out.println();
        System.out.println("la fin de sejour sera le "+v.get(indexDay));   */
                    //=============================
                    HttpSession session = request.getSession();
                    Hote h = new Hote(wil,dateF,dateD,nbrp);
                    h.rechercherHote(wil,dateF,dateD,nbrp);
                 if( wil.equals(h.bdwil)){
			 response.sendRedirect("resultSearch.jsp");
                 session.setAttribute("date", dateF);
                 session.setAttribute("date1", dateD);
                 session.setAttribute("nbrp", nbrp);
                }
		 else {
				
				request.getRequestDispatcher("index.jsp").forward(request, response);;
				System.out.println("no connecté");
				}
            } catch (Exception e) {
                System.out.println("kayen erreur");
		}
//		h.setWillaya(wil);
//		String msg="";
		
		
		
		doGet(request, response);
	}

        }
