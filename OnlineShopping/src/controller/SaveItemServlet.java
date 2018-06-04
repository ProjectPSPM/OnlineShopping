package controller;

import java.io.IOException;
import java.util.List;

import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.servlet.RequestDispatcher;
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

@WebServlet("/SaveItemServletPath")
public class SaveItemServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String itemName = request.getParameter("itemName");
		String itemCategory = request.getParameter("itemCategory");
//		itemCategory = "default Category";
		String itemSubCategory = request.getParameter("itemSubCategory");
		float originalPrice = Float.parseFloat(request.getParameter("originalPrice"));
		float discountedPrice = Float.parseFloat(request.getParameter("discountedPrice"));
		String shortDescription = request.getParameter("shortDescription");
		String longDescription = request.getParameter("longDescription");
		String seller = request.getParameter("seller");

		ItemDetails item = new ItemDetails();
		item.setItemName(itemName);
		item.setCategory(itemCategory);
		item.setSubCategory(itemSubCategory);
		item.setOriginalPrice(originalPrice);
		item.setDiscountedPrice(discountedPrice);
		item.setBrieftDescription(shortDescription);
		item.setDetailedDescription(longDescription);
		item.setBrand_or_seller(seller);

		Session session = HibernateUtil.getSession();

		if (session != null) {
			session.beginTransaction();
			session.save(item);
			session.getTransaction().commit();
		}

		CriteriaBuilder builder = session.getCriteriaBuilder();

		// UPDATED: Create CriteriaQuery
		CriteriaQuery<ItemDetails> criteria = builder.createQuery(ItemDetails.class);

		// UPDATED: Specify criteria root
		criteria.from(ItemDetails.class);

		// UPDATED: Execute query
		List<ItemDetails> itemList = session.createQuery(criteria).getResultList();

		for (ItemDetails item1 : itemList) {
			System.out.println(item1.getItemName() + "  " + item1.getOriginalPrice());
		}

		HibernateUtil.closeSession();
		
		// sending list of items
		request.setAttribute("ItemList", itemList);
		request.getRequestDispatcher("Home.jsp").forward(request, response);
	}

}
