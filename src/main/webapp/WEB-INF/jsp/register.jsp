<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>ScopeLearn | Home</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
</head>
<script type="text/javascript">
    	window.onload = window.history.forward(0);
	</script>
<script type="text/javascript">
    function getResults() {
       // $("#mySelect").change(function () {
                $("#text").show();
     //   });
    };
</script>

<body>

	<header id="mu-header">
		<jsp:include page="header.jsp"></jsp:include>
	</header>


	<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
	<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
		pageEncoding="ISO-8859-1"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registration</title>
</head>
<body>

	<form:form id="regForm" modelAttribute="user" action="register"
		method="post" autocomplete="off">
		<div class=title>
			<h3>
				<b>New User</b>
			</h3>
		</div>
		<table align="left">
			<tr>
				<td><form:label path="username">Username</form:label></td>
				<td><form:input path="username" name="username" id="username" />
				</td>
			</tr>
			<tr>
				<td><form:label path="role" name="role" id="role">Role</form:label>
				</td>
				<td><form:select path="role">
						<form:option value="NONE" label="-Select-" />
						<form:option value="administrator" label="Administrator" />
						<form:option value="lecturer" label="Lecturer" />
						<form:option value="student" label="Student" />
					</form:select></td>
			</tr>
			<tr>
				<td><form:label path="gender">Gender</form:label></td>
				<td>Male<form:radiobutton path="gender" value="Male" /> Female<form:radiobutton
						path="gender" value="Female" />
				</td>
			</tr>

			<tr>
				<td><form:label path="email">Email</form:label></td>
				<td><form:input path="email" name="email" id="email" /></td>
			</tr>

			<tr>
				<td><form:label path="phone">Mobile Number</form:label></td>
				<td><form:input path="phone" name="phone" id="phone" /></td>
			</tr>
			<tr>
				<td><form:label path="password">Password</form:label></td>
				<td><form:password path="password" name="password"
						id="password" /></td>
			</tr>


			<tr>
				<td><form:label path="text">KBA Question</form:label></td>
				<td><form:select path="text" onclick="getResults()"
						id="mySelect">
						<form:option value="NONE" label="-Select-" />
						<form:option value="nickname" label="Nick Name" />
						<form:option value="mobile" label="First Mobile Number" />
						<form:option value="mother" label="Mother Name" />
						<form:option value="qualification" label="Highest Qualificaion" />
						<form:option value="color" label="Favourite Color" />
					</form:select> <form:input path="text" hidden="true" maxlength="60"/></td>
<br/>

			</tr>
			<tr>
				<td></td>
				<td><form:button id="register" name="register">Register</form:button>
				</td>
			</tr>
			<tr></tr>
		</table>
	</form:form>
<br/>
<br/>
<br/>
<br/>
<br/>
<footer class="clearfix loginfooter">
	<jsp:include page="footer.jsp"></jsp:include>
</footer>

</body>
</html>