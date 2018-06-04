<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Sell Item</title>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<style>
</style>

<link rel="stylesheet"
	href="https://images-na.ssl-images-amazon.com/images/I/61gbb09bfIL._RC|11Fd9tJOdtL.css,21ULbzscqzL.css,31Q3id-QR0L.css,31QszevPBSL.css_.css#AUIClients/AmazonUI.min" />
<link rel="stylesheet"
	href="https://images-na.ssl-images-amazon.com/images/G/01/AUIClients/AuthenticationPortalAssets-60974eab2c51181b770605eaef55c2d69d69613c._V2_.css#AUIClients/AuthenticationPortalAssets.secure.min" />
<link rel="stylesheet"
	href="https://images-na.ssl-images-amazon.com/images/G/01/AUIClients/CVFAssets-e91ba5c6e67c58c7f9c4c413fa67697feade389e._V2_.css#AUIClients/CVFAssets.secure.min" />
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>

</head>

<body>
	<form name="sellItemForm" method="post" action="SaveItemServletPath">
		<table>
			<tr>
				<td>Select file: <input name="file" accept="image/*"
					type="file" id="file">
				</td>
				<td>Select file:<input name="file" accept="image/*" type="file"
					id="file">
				</td>
			<tr>
			</tr>
		</table>


		<div class="form-group">
			<label for="itemName" class="a-form-label"><b> Name of your product </b></label> 
			<input name="itemName" type="text" class="form-control" required>
			 
			<label for="itemCategory" class="a-form-label"><b> Category </b></label> 
			<select
				style="width: 150px" ;   
				name="itemCategory"
				class="form-control">
				<option value="volvo">Volvo</option>
				<option value="saab">Saab</option>
				<option value="fiat">Fiat</option>
				<option value="audi">Audi</option>
			</select> 
			
			<label for="itemSubCategory" class="a-form-label"><b>Sub Category </b></label> 
			<input name="itemSubCategory" type="text" class="form-control" required> 
			
			<label for="originalPrice" class="a-form-label"><b> Original Price </b></label> 
			<input name="originalPrice" type="number" class="form-control" required>

			<label for="discountedPrice" class="a-form-label"><b> Discounted price </b></label> 
			<input name="discountedPrice" type="number" class="form-control" required> 
			
			<label for="shortDescription" class="a-form-label"><b> brief description of your product </b></label> 
			<input name="shortDescription" type="text" class="form-control" required> 
			
			<label for="longDescription" class="a-form-label"><b> Detailed description of your product </b></label> 
			<input name="longDescription" type="text" class="form-control" required> 
			
			<label for="seller" class="a-form-label"><b> Seller or Brand of the product </b></label> 
			<input name="seller" type="text" class="form-control" required>
			
			<input name="rating" type="hidden" class="form-control" required>
			<input name="discount" type="hidden" class="form-control" required>
		</div>

		<input type="submit" name="Submit" value="Submit files" />

	</form>


</body>
</html>