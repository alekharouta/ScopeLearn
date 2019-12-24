<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%
	response.setHeader("Cache-Control","no-cache, no-store, must-revalidate"); //HTTP 1.1
	response.setHeader("Pragma","no-cache"); //HTTP 1.0
	response.setDateHeader ("Expires", 0); //prevent caching at the proxy server
	response.setHeader("Access-Control-Allow-Methods", "POST, GET");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<meta content="" name="description" />
<link rel="icon" href="/js/alekh.JPG">
<title>Login</title>

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>


<script type="text/javascript">
    	window.onload = window.history.forward(0);
	</script>

<script>
	
		$(document).ready(function(){
			//$("#loginForm").css("display", "none");
			
			function loginUser(jsonString)			{
								
				$.ajax({
					async: true,
					type : "POST",
					cache : false,
					url : "login",					
					data : jsonString,
					success : function(result) {
						alert('success');			
						alert('restlt : '+result);			
					},
					error : function(error) {
						alert('failure');
						alert('error : '+error);
						
					}
				});
		
		function loginSign(){
			if(validateLoginForm()){
				var password = $('#loginUserPwd').val();
				var username = $('#loginUser').val();
				var jsonString = '{"username":"'+username+'","password":"'+password+'"}';
				loginUser(jsonString);				
			 }
		}
		
		function validateLoginForm(){
			
			var flag = true;
						
			var loginUserPwd = $('#password').val();
			var loginUser = $('#username').val();
			
			if(loginUserPwd == ''){
				$("#loginUserPwdError").show();
				$("#loginUserPwdError").text("Please enter password");
				flag = false;
			}else{
				$('#loginUserPwdError').hide();
			}
			
			if(loginUser == ''){
				$("#loginUserNameError").show();
				$("#loginUserNameError").text("Please enter username");
				flag = false;
			}else{
				$('#loginUserNameError').hide();
			}
			
			return flag;
		}
			}
			
		/* 	function myFunction() {
				var x = document.getElementById("loginForm");
				if (x.style.display === "none") {
					x.style.display = "block";
				} else {
					x.style.display = "none";
				}
			}
				}); */
			
		
	
</script>
</head>

<body class="loginbg">
	<header id="mu-header">
		<jsp:include page="header.jsp"></jsp:include>
	</header>

	<div class="wrap clearfix">
		<div class="loginBlk clearfix">
			<div class="col-md-4 pull-center">
				<div class="loginForm">
					
					<form:form id="loginForm" modelAttribute="login" action="login"
						method="post" class="login100-form validate-form">
						<span class="login100-form-title" style="size: 50">&nbsp; &nbsp;<b>User Login </b></span>
						<div class="wrap-input100 validate-input"
							data-validate="Valid email is required: ex@abc.xyz">
							<form:label path="username"></form:label>
							<form:input class="input100" path="username" name="username"
								id="username" placeholder="UserName" />
							<span id="loginUserNameError" class="errors"></span> <span
								class="focus-input100"></span> <span class="symbol-input100">
								<i class="fa fa-envelope" aria-hidden="true"></i>
							</span>
						</div>

						<div class="wrap-input100 validate-input"
							data-validate="Password is required">
							<form:label path="password"></form:label>
							<span id="loginUserPwdError" class="errors"></span>
							<form:password path="password" name="password" id="password"
								placeholder="Password" />
							<span class="focus-input100"></span> <span
								class="symbol-input100"> <i class="fa fa-lock"
								aria-hidden="true"></i>
							</span>
						</div>

						<br />
						<div class="container-login100-form-btn">
							<form:button class="login100-form-btn" id="loginBtn" name="login"
								onclick="loginSign()">Login</form:button>
						</div>
						<br />
						<div style="font-style: italic; color: red;">${message}</div>

						<span class="txt1"> Forgot </span>
						<a class="txt2" href="forgotpassword"> Password </a>
				

				<br /> <span class="txt1">Not Registered? &nbsp;</span><a
					class="txt2" href="register">Register</a>

				</form:form>

			</div>
		</div>

	</div>
	</div>	
	
	<footer class="clearfix loginfooter">
		<jsp:include page="footer.jsp"></jsp:include>
	</footer>

	<script href="/js/custom.js"></script>

</body>
</html>
