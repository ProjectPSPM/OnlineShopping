<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<style>
</style>


<title>Account Registration</title>

<link rel="stylesheet"
	href="https://images-na.ssl-images-amazon.com/images/I/61gbb09bfIL._RC|11Fd9tJOdtL.css,21ULbzscqzL.css,31Q3id-QR0L.css,31QszevPBSL.css_.css#AUIClients/AmazonUI.min" />
<link rel="stylesheet"
	href="https://images-na.ssl-images-amazon.com/images/G/01/AUIClients/AuthenticationPortalAssets-60974eab2c51181b770605eaef55c2d69d69613c._V2_.css#AUIClients/AuthenticationPortalAssets.secure.min" />
<link rel="stylesheet"
	href="https://images-na.ssl-images-amazon.com/images/G/01/AUIClients/CVFAssets-e91ba5c6e67c58c7f9c4c413fa67697feade389e._V2_.css#AUIClients/CVFAssets.secure.min" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>

<script>
	function validateInformation() {
		var userName = document.forms["registerForm"]["userName"].value;
		var userEmail = document.forms["registerForm"]["userEmail"].value;
		var userPassword = document.forms["registerForm"]["userPassword"].value;
		var userReEnterPassword = document.forms["registerForm"]["userReEnterPassword"].value;

		if (userName == "") {
			document.getElementById("usernameError").innerHTML = "! Enter your name";
			return false;
		}

		if (userEmail == "") {
			document.getElementById("userEmailError").innerHTML = "! Enter your email";
			return false;
		}

		if (!(/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/.test(userEmail))) {
			document.getElementById("userEmailError").innerHTML = "! Enter a valid email address";
			return false;
		}

		if (userPassword == "" || userPassword.length < 6) {
			document.getElementById("userPasswordError").innerHTML = "! Passwords must be at least 6 characters.";
			return false;
		}

		if (userReEnterPassword == "") {
			document.getElementById("userReEnterPasswordError").innerHTML = "! Type your password again";
			return false;
		}

		if (userPassword != userReEnterPassword) {
			document.getElementById("userReEnterPasswordError").innerHTML = "! Passwords must match";
			return false;
		}

		return true;

	}

	function userNameCheck(val) {
		var len = val.value.length;

		if (len >= 1) {
			$('#usernameError').text("");
			$('#userEmailError').text("");
			$('#userPasswordError').text("");
			$('#userReEnterPasswordError').text("");
			$('#userAlreadyExist').text("");
		}
	};
</script>
</head>
<body>


	<div class="a-section a-spacing-medium a-text-center">

		<a class="a-link-nav-icon" tabindex="-1" href="/ref=ap_frn_logo">

			<i class="a-icon a-icon-logo" aria-label="Amazon"><span
				class="a-icon-alt">Amazon</span></i>
		</a>
	</div>
	
  
	
	<div class="a-section a-padding-medium auth-workflow">
		<div id="authportal-center-section" class="a-section">

			<div id="authportal-main-section" class="a-section">

				<div class="a-section auth-pagelet-container">
					<div class="a-section">
						<form action="CreateAccountServletPath" method="post"
							name="registerForm" onsubmit="return validateInformation()">
							
							 <span id="userAlreadyExist" style="font-size: 15px; color: red;" ><%=(request.getAttribute("userAlreadyExist") == null) ? "": request.getAttribute("userAlreadyExist")%></span>

							<div class="a-box a-spacing-extra-large">
								<div class="a-box-inner">

									<h1 class="a-spacing-small">Create account</h1>

									<div class="a-row a-spacing-base">
										<label for="ap_customer_name" class="a-form-label">
											Your name </label> <input type="text" maxlength="50"
											onkeyup="userNameCheck(this)" id="userName"
											autocomplete="off" name="userName" tabindex="1"
											class="a-input-text a-span12 auth-autofocus auth-required-field auth-contact-verification-request-info">

										<span id="usernameError" style="color: red"></span>
									</div>



									<div class="auth-require-fields-match-group">

										<div class="a-row a-spacing-base">

											<label for="ap_email" class="a-form-label"> Email </label> 
											<input type="email" maxlength="64" id="ap_email" name="userEmail"
												onkeyup="userNameCheck(this)" tabindex="3"
												class="a-input-text a-span12 auth-required-field auth-require-fields-match auth-require-email-validaton auth-require-reverify-on-change auth-contact-verification-request-info">
											<span id="userEmailError" style="color: red"></span>

										</div>
									</div>

									<div class="auth-require-fields-match-group">


										<div class="a-row a-spacing-base">

											<label for="ap_password" class="a-form-label">
												Password </label> <input type="password" maxlength="1024"
												id="ap_password" autocomplete="off"
												onkeyup="userNameCheck(this)"
												placeholder="At least 6 characters" name="userPassword"
												tabindex="5"
												class="a-input-text a-form-normal a-span12 auth-required-field auth-require-fields-match  auth-require-password-validation">

											<span id="userPasswordError" style="color: red"></span>

										</div>


										<div class="a-row a-spacing-base">


											<label for="ap_password_check" class="a-form-label">
												Re-enter password </label> <input type="password" maxlength="1024"
												id="ap_password_check" autocomplete="off"
												onkeyup="userNameCheck(this)" name="userReEnterPassword"
												tabindex="6"
												class="a-input-text a-form-normal a-span12 auth-required-field auth-require-fields-match">
											<span id="userReEnterPasswordError" style="color: red"></span>

										</div>
									</div>

									<div class="a-row a-spacing-extra-large">

										<span
											class="a-button a-button-normal a-button-span12 a-button-primary"><span
											class="a-button-inner"><input id="continue"
												tabindex="11" class="a-button-input" type="submit"><span
												class="a-button-text" aria-hidden="true"> Create your
													Amazon account </span></span></span>


										<div id="legalTextRow"
											class="a-row a-spacing-top-medium a-size-small">
											By creating an account, you agree to Amazon's <a
												href="/gp/help/customer/display.html/ref=ap_register_notification_condition_of_use?ie=UTF8&amp;nodeId=508088">Conditions
												of Use</a> and <a
												href="/gp/help/customer/display.html/ref=ap_register_notification_privacy_notice?ie=UTF8&amp;nodeId=468496">Privacy
												Notice</a>.
										</div>
									</div>

									<div class="a-divider a-divider-section">
										<div class="a-divider-inner"></div>
									</div>

									<div class="a-row">
										Already have an account? <a class="a-link-emphasis" href="Login.jsp">Sign in </a>
									</div>

								</div>

							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>