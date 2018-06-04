package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.SessionFactory;

import org.hibernate.cfg.Configuration;
import org.hibernate.query.Query;
import model.UserDetail;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/Login")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// Database db=new Database()
		String userEmail = request.getParameter("userEmail");
		String userPassword = request.getParameter("userPassword");

		response.getWriter().append(userEmail + " " + userPassword).append(request.getContextPath());

		SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();

		Session session = sessionFactory.openSession();
		session.beginTransaction();

		Query q = session.createQuery("from UserDetail where userEmail = :userEmail");
		q.setParameter("userEmail", userEmail);
		UserDetail user = (UserDetail) q.uniqueResult();

		if (user != null) {
			if (user.getUserPassword().equals(userPassword)) {
				request.getRequestDispatcher("Home.jsp").forward(request, response);
			} else {
				request.setAttribute("incorrectPassword", "Incorrect Password");
				request.getRequestDispatcher("Login.jsp").forward(request, response);
			}

		} else {
			request.setAttribute("noEmail", userEmail + " doesn't exist!!");
			request.getRequestDispatcher("Login.jsp").forward(request, response);
		}
		session.close();
	}

}
