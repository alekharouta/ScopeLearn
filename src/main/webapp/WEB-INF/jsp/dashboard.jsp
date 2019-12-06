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

	
	<table>
            <tr>
                <td>Welcome ${username}</td>
            </tr>
            <tr>
            </tr>
            <tr>
            </tr>
            <tr>
                <td><a href="home.jsp">Home</a>
                </td>
            </tr>
        </table>
	
	
	
	
		<footer class="clearfix loginfooter">
		<jsp:include page="footer.jsp"></jsp:include>
	</footer>


</body>
</html>
