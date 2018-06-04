<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<title>header</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="styl.css">

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>

	<div class="searchBar">

		<input class="inputSearch"type="text" placeholder="Search.." name="search">
		<button type="submit" class="btnSearch">
			<i class="fa fa-search"></i>
		</button>
		<br>
		<button class="btnSignIn" onclick="signIn();">SignIn</button>
		<button class="iconCart">
			<i class="fa fa-cart-plus"></i>
		</button>


		<div class="ddHeader">
			<button class="dropbtn">
				Dropdown <i class="fa fa-caret-down"></i>
			</button>
			<div class="ddContent">

				<div class="rowCategory">
					<div class="colCategory">
						<h4>Appliances</h4>
						<a href="#">Link 1</a> <a href="#">Link 2</a> <a href="#">Link
							3</a>
					</div>
					<div class="colCategory">
						<h4>Grocery</h4>
						<a href="#">Link 1</a> <a href="#">Link 2</a> <a href="#">Link
							3</a>
					</div>
					<div class="colCategory">
						<h4>Clothing</h4>
						<a href="#">Link 1</a> <a href="#">Link 2</a> <a href="#">Link
							3</a>
					</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>