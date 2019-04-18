<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %> 
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<meta http-equiv="content-language" content="en" />
<meta http-equiv="Content-Language" content="EN" />
<meta http-equiv="Content-Style-Type" content="text/css" />
<title>User Login</title>

<form:form commandName="login" method="POST">
	<table>
<tr><th width="10">User Login</th></tr>	
<form:errors path="role" id="error" STYLE="color: Red; font-style:italic; font-weight:bold; font-family:Verdana"/>
		<tr>
			<td><label>User ID</label></td>
			<td><form:input path="empId" size="25" maxlength="25"
				type="text" /> <form:errors path="empId" id="error" STYLE="color: Red; font-style:italic; font-weight:bold; font-family:Verdana"/></td>
		</tr>

		<tr>
			<td><label>Password</label></td>
			<td width="433"><form:input type="Password" path="password"
				size="25" maxlength="25" onkeydown="if(event.keyCode == 13) document.forms[0].submit();"/> <form:errors path="password" id="error" STYLE="color: Red; font-style:italic; font-weight:bold; font-family:Verdana"/></td>
		</tr>
		

		<tr>
			<td>&nbsp;</td>
			<td><input name="Submit222" type="submit" class="buttons" onclick="document.forms[0].submit()"
				value="Login" /> </td>
		</tr>

	</table>
</form:form>
</body>
</html>