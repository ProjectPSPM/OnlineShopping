<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ page import="org.hibernate.Session"%>
<%@page import="util.HibernateUtil"%>
<%@page import="model.ItemDetails"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Details</title>
</head>
<body>
	<%
		Session s = HibernateUtil.getSession();
		s.beginTransaction();
		ItemDetails item = new ItemDetails();
		item.setItemName("item1");
		s.save(item);
		s.getTransaction().commit();
		HibernateUtil.closeSession();
	%>

</body>
</html>