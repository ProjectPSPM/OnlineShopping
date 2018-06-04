package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
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
import util.HibernateUtil;

@WebServlet("/CreateAccountServletPath")
public class CreateAccountServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String userName = request.getParameter("userName");
		String userEmail = request.getParameter("userEmail");
		String userPassword = request.getParameter("userPassword");
		System.out.print(userName + " " + userEmail);

		Session session = HibernateUtil.getSession();

		if (session != null) {
			Query<?> q = session.createQuery("from UserDetail where userEmail = :userEmail");
			q.setParameter("userEmail", userEmail);
			UserDetail user = (UserDetail) q.uniqueResult();

			if (user == null) {
				session.beginTransaction();
				user = new UserDetail();
				user.setUserName(userName);
				user.setUserEmail(userEmail);
				user.setUserPassword(userPassword);
				session.save(user);
				session.getTransaction().commit();
				HibernateUtil.closeSession();
				request.getRequestDispatcher("Home.jsp").forward(request, response);
			} else {
				// already exits
//				RequestDispatcher rd = request.getRequestDispatcher("CreateAccount.jsp");
				request.setAttribute("userAlreadyExist", userEmail + " has already registered!!");
				request.getRequestDispatcher("CreateAccount.jsp").forward(request, response);
//				rd.forward(request, response);
			}
		}

	}

}
