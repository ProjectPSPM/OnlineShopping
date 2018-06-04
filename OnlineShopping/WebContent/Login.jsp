<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport" content="width=device-width, initial scale=1">

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
<link rel="stylesheet" href="styl.css">

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Login Page</title>

<script>
	function userNameCheck(val) {
		var len = val.value.length;

		if (len >= 1) {
			$("span").text("");
		}
	}

	function ValidateEmail() {
		return false;
		/* 		var userEmail = document.forms["loginForm"]["userEmail"].value;
		
		 if (userEmail == "") {
		 document.getElementById("userEmailError").innerHTML = "! Enter your email";
		 return false;
		 }

		 if (!(/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/.test(userEmail))) {
		 document.getElementById("userEmailError").innerHTML = "! Enter a valid email address";
		 return false;
		 }
		 */
	}
</script>
</head>
<body>
	<form name="loginForm" method="post" action="/OS/Login" class="loginForm"
		autocomplete="on">
		<h4>Sign In</h4>
		<div class="form-group">
			<label for="userEmail" class="a-form-label"><b> Email
					(Phone for mobile account) </b></label> <input class="inputEmail" name="userEmail" type="text"
				onkeyup="userNameCheck(this)" class="form-control" required>
			<span id="spanUserEmail" style="color: red"><%=(request.getAttribute("EmailDoesNotExist") == null) ? ""
					: request.getAttribute("EmailDoesNotExist")%></span>
			<div class="a-row a-spacing-top-medium">
				<div class="a-column a-span5">
					<label for="userPassword" class="a-form-label"> Password </label>
				</div>

				<div class="a-column a-span7 a-text-right a-span-last">

					<a id="auth-fpp-link-bottom" class="a-link-normal" tabindex="3"
						href="https://www.amazon.com/ap/forgotpassword?openid.pape.max_auth_age=0&openid.identity=http%3A%2F%2Fspecs.openid.net%2Fauth%2F2.0%2Fidentifier_select&pageId=usflex&ignoreAuthState=1&openid.return_to=https%3A%2F%2Fwww.amazon.com%2F%3F_encoding%3DUTF8%26ref_%3Dnav_ya_signin&prevRID=KHTGY62ETRF8832M1EQT&openid.assoc_handle=usflex&openid.mode=checkid_setup&openid.ns.pape=http%3A%2F%2Fspecs.openid.net%2Fextensions%2Fpape%2F1.0&prepopulatedLoginId=&failedSignInCount=0&openid.claimed_id=http%3A%2F%2Fspecs.openid.net%2Fauth%2F2.0%2Fidentifier_select&openid.ns=http%3A%2F%2Fspecs.openid.net%2Fauth%2F2.0">
						Forgot your password? </a>
				</div>

			</div>
			<input class="inputPassword" type="password" id="ap_password" name="userPassword"
				onkeyup="userNameCheck(this)" tabindex="2"
				class="a-input-text a-span12 auth-required-field"> <span
				style="color: red"><%=(request.getAttribute("IncorrectPassword") == null) ? ""
					: request.getAttribute("IncorrectPassword")%></span>
			<button type="submit" class="btnLogin">Sign In</button>
			
			<div class="a-row a-spacing-top-medium">
    <div class="a-section a-text-left">

        <div data-a-input-name="rememberMe" class="a-checkbox">
      <label>
        <input type="checkbox" name="rememberMe" value="true" tabindex="4"><i class="a-icon a-icon-checkbox"></i>
        <span class="a-label a-checkbox-label">
          Keep me signed in.
          <span class="a-declarative" data-action="a-popover" data-a-popover="{&quot;activate&quot;:&quot;onclick&quot;,&quot;header&quot;:&quot;\&quot;Keep Me Signed In\&quot; Checkbox&quot;,&quot;inlineContent&quot;:&quot;&lt;p&gt;Choosing \&quot;Keep me signed in\&quot; reduces the number of times you&#39;re asked to sign in on this device.&lt;\/p&gt;\n&lt;p&gt;To keep your account secure, use this option only on your personal devices.&lt;\/p&gt;&quot;}">
            <a id="remember_me_learn_more_link" href="javascript:void(0)" class="a-popover-trigger a-declarative">
              Details
            <i class="a-icon a-icon-popover"></i></a>
          </span>
        </span></label></div>

    </div>
  </div>
  
   
			<div class="a-divider a-divider-break">
				<h5>New to Amazon?</h5>
			</div>

			<button class="a-button a-button-span12" type="button">Create
				your account</button>
		</div>

	</form>
</body>
</html>