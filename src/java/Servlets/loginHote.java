package Servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Beans.Hote;
import Beans.Humain;

/**
 * Servlet implementation class loginHote
 */
@WebServlet("/loginHote")
public class loginHote extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public loginHote() {
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


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String mail = request.getParameter("user");
		String psw = request.getParameter("pass");
		String action = request.getParameter("op");
		HttpSession session = request.getSession();
		
		Hote h = new Hote(mail, psw);
		h.login(mail, psw);
		

if(h.etat_c==0){
                 System.out.println("je test etat compte avec le 0 ");
                             request.setAttribute("message", "votre compte est désactivé");
                              request.getRequestDispatcher("loginHote.jsp").forward(request, response);}
else {
			if (mail.equals(h.bdemail) && psw.equals(h.bdpsw)) {

				session.setAttribute("mailh", mail);
				response.sendRedirect("contact.html");

			}else {
				if (mail.isEmpty() || psw.isEmpty()) {
					request.setAttribute("message", "sorry, youll need to fill the box");
					request.getRequestDispatcher("loginHote.jsp").forward(request, response);
					System.out.println("problem f les champs wahed fihoum faregh");
					
				} else {
				
				request.setAttribute("message", "invalid account, please try again");
				request.getRequestDispatcher("loginHote.jsp").forward(request, response);;
				System.out.println("non connecté");
				}
			}}
	
	
		doGet(request, response);
	

}}
