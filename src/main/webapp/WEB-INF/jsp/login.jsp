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

   <%--  <script src="<%=request.getContextPath()%>/js/jquery-1.6.2.js"></script> --%>
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <%-- <script src="<%=request.getContextPath()%>/js/bootstrap-3.3.2.min.js"></script> --%>


<script type="text/javascript">
    	window.onload = window.history.forward(0);
	</script>

<script>
	
		$(document).ready(function(){

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
					
				});
			
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
					<h3>Login</h3>
					<form:form id="loginForm" modelAttribute="login" action="login" method="post">
                <table align="center">
                    <tr>
                        <td>
                            <form:label path="username">Username: </form:label>
                        </td>
                        <td>
                            <form:input path="username" name="username" id="username" placeholder="UserName"/>
                            <span id="loginUserNameError" class="errors">required</span>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <form:label path="password">Password:</form:label>
                            <span id="loginUserPwdError" class="errors">required</span>
                        </td>
                        <td>
                            <form:password path="password" name="password" id="password" />
                        </td>
                    </tr>
                    <tr>
                        <td></td>
                        <td align="left">
                            <form:button id="loginBtn" name="login" onclick="loginSign()">Login</form:button>
                        </td>
                    </tr>
                    <tr></tr>
                    <tr>
                        <td></td>
                        <td><a href="register">Register</a>
                        </td>
                    </tr>
                </table>
            </form:form>
            <table align="center">
                <tr>
                    <td style="font-style: italic; color: red;">${message}</td>
                </tr>
            </table>
				</div>
			</div>
			
		</div>
	</div>
	<!-- Dummy form to submit for login -->
	<form autocomplete="off" id="userLogin" name="userLogin" action="login"
		method="POST"></form>
	<footer class="clearfix loginfooter">
		<jsp:include page="footer.jsp"></jsp:include>
	</footer>

	<script href="/js/custom.js"></script>

</body>
</html>
