package controller;

import java.io.IOException;
import java.util.List;

import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.query.Query;

import model.ItemDetails;
import model.UserDetail;
import util.HibernateUtil;

@WebServlet("/FetchItemDetailPath")
public class FetchItemDetailServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());

		Session session = HibernateUtil.getSession();
		session.beginTransaction();

		// UPDATED: Create CriteriaBuilder
		CriteriaBuilder builder = session.getCriteriaBuilder();

		// UPDATED: Create CriteriaQuery
		CriteriaQuery<ItemDetails> criteria = builder.createQuery(ItemDetails.class);

		// UPDATED: Specify criteria root
		criteria.from(ItemDetails.class);

		// UPDATED: Execute query
		List<ItemDetails> itemList = session.createQuery(criteria).getResultList();

		for (ItemDetails item : itemList) {
			System.out.println(item.getItemName() + "  " + item.getOriginalPrice());
		}

		HibernateUtil.closeSession();

		request.setAttribute("ItemList", itemList);
		request.getRequestDispatcher("Home.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

}
