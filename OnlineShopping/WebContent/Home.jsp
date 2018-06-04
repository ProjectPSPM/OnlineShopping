<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Home page</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>


<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<script>
	$(".carousel").swipe(
			{

				swipe : function(event, direction, distance, duration,
						fingerCount, fingerData) {

					if (direction == 'left')
						$(this).carousel('next');
					if (direction == 'right')
						$(this).carousel('prev');

				},
				allowPageScroll : "vertical"

			});

	function onAdding() {

		window.open("ItemDetail.jsp", "_self");
	}

	function signIn() {

		window.open("Login.jsp", "_self");
	}
</script>

</head>
<body>

	<%@ include file="header.jsp"%>
	
		<div id="myCarousel" class="carousel slide" data-ride="carousel">
		<!-- Indicators -->
		<ol class="carousel-indicators">
			<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
			<li data-target="#myCarousel" data-slide-to="1"></li>
			<li data-target="#myCarousel" data-slide-to="2"></li>
		</ol>

		<!-- Wrapper for slides -->
		<div class="carousel-inner">
			<div class="item active">
				<img src="/OnlineShopping/res/home_bg.jpeg" alt="Los Angeles">
			</div>

			<div class="item">
				<img src="/OnlineShopping/res/home_bg.jpeg" class="img-responsive" alt="Chicago">
			</div>

			<div class="item">
				<img src="/OnlineShopping/res/home_bg.jpeg" alt="New York">
			</div>
		</div>

		<!-- Left and right controls -->
		<a class="left carousel-control" href="#myCarousel" data-slide="prev">
			<span class="glyphicon glyphicon-chevron-left"></span> <span
			class="sr-only">Previous</span>
		</a> <a class="right carousel-control" href="#myCarousel"
			data-slide="next"> <span
			class="glyphicon glyphicon-chevron-right"></span> <span
			class="sr-only">Next</span>
		</a>
	</div>
	
	<!-- Item List -->
	<table>
		<tbody>
			<tr>
				<th>category</th>
				<th>Name</th>
				<th>Price</th>
			</tr>
			<c:forEach items="${requestScope.ItemList}" var="item">
				<tr>
					<td><c:out value="${item.category}"></c:out></td>
					<td><c:out value="${item.itemName}"></c:out></td>
					<td><c:out value="${item.originalPrice}"></c:out></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>

 	<%@ include file="footer.jsp"%> 

</body>
</html>

