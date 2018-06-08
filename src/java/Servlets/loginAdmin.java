package Servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Beans.Admin;

/**
 * Servlet implementation class loginAdmin
 */
@WebServlet("/loginAdmin")
public class loginAdmin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public loginAdmin() {
        super();
       
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		String email = request.getParameter("email");
		String pass = request.getParameter("pass");
		
		HttpSession session = request.getSession();
		
		Admin d = new Admin(email, pass);
		d.loginAdmin(email, pass);
		
		if(email.equals(d.bdemail) && pass.equals(d.bdpsw)) {
			
			session.setAttribute("mail", email);
			d=d.recupererAdmin(email);
			session.setAttribute("Admin",d);
			response.sendRedirect("Administration.jsp");
		}else {
			if (email.isEmpty() || pass.isEmpty()) {
				request.setAttribute("message", "sorry, youll need to fill the box");
				request.getRequestDispatcher("loginAdmin.jsp").forward(request, response);
				System.out.println("problem f les champs wahed fihoum faregh");
			}else {
				
				request.setAttribute("message", "invalid account, please try again");
				request.getRequestDispatcher("loginAdmin.jsp").forward(request, response);;
				System.out.println("nom connecté");
				}		
			}
	
	}

}
