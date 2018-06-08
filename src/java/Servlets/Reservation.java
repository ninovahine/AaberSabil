package Servlets;

import java.io.IOException;
import Beans.Humain;

import Beans.Hote;
import Beans.reservation;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/Reservation")
public class Reservation extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public Reservation() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
             System.out.println("rani fel debut Servlets Reservation.java ");
		HttpSession session = request.getSession();
		if(session.getAttribute("mail")!=null) {
	
		String  V = (String)session.getAttribute("mail");
		String  H =(String) session .getAttribute("mailh");
		String dateA =(String) session.getAttribute("date");
		String dateD=(String)session.getAttribute("dated");
		String nbrp= (String)session.getAttribute("nbrP");
		
		reservation rsv = new reservation(); 
                System.out.println("rani 9bel ajouter reservation Servlets Reservation.java ");
		rsv.AjouterReservation(V,H,dateA,dateD, nbrp);
                System.out.println("rani wra ajouter reservation Servlets Reservation.java ");
		
		if(V.equals(rsv.bdEmailV)&&(H.equals(rsv.bdEmailH))) {
			request.setAttribute("message", "désolez,vous ne pouvez pas reserver dans ce hote");
			request.getRequestDispatcher("Reservation.jsp").forward(request, response);
		}

		request.getRequestDispatcher("Reservation.jsp").forward(request, response);
                
		}else {
			request.getRequestDispatcher("login.jsp").forward(request, response);
		} 
		System.out.println("rani fel  la fin Servlets Reservation.java ");
		doPost(request, response);
	}

}
