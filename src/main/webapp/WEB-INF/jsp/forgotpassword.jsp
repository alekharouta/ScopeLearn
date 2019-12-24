<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); //HTTP 1.1
	response.setHeader("Pragma", "no-cache"); //HTTP 1.0
	response.setDateHeader("Expires", 0); //prevent caching at the proxy server
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
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Change Password</title>

<%--  <script src="<%=request.getContextPath()%>/js/jquery-1.6.2.js"></script> --%>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

<%-- <script src="<%=request.getContextPath()%>/js/bootstrap-3.3.2.min.js"></script> --%>

<style type="text/css">
body, html {
	matgin: 0px;
}

input[type="button"] {
	border: none;
	width: 100%;
	outline: none;
}

#wrap {
	margin: 10%;
}

table, th, td {
	border: 1px solid black;
}

table {
	width: 100%;
}

th {
	height: 50px;
}

.chip {
	display: inline-block;
	padding: 0 25px;
	height: 50px;
	font-size: 16px;
	line-height: 50px;
	border-radius: 25px;
	background-color: #f1f1f1;
}

.chip img {
	float: left;
	margin: 0 10px 0 -25px;
	height: 50px;
	width: 50px;
	border-radius: 50%;
}

.tooltip {
	position: relative;
	display: inline-block;
	border-bottom: 1px dotted black;
}

.tooltip .tooltiptext {
	visibility: hidden;
	width: 120px;
	background-color: #555;
	color: #fff;
	text-align: center;
	border-radius: 6px;
	padding: 5px 0;
	position: absolute;
	z-index: 1;
	bottom: 125%;
	left: 50%;
	margin-left: -60px;
	opacity: 0;
	transition: opacity 0.3s;
}

.tooltip .tooltiptext::after {
	content: "";
	position: absolute;
	top: 100%;
	left: 50%;
	margin-left: -5px;
	border-width: 5px;
	border-style: solid;
	border-color: #555 transparent transparent transparent;
}

.tooltip:hover .tooltiptext {
	visibility: visible;
	opacity: 1;
}
</style>
<script type="text/javascript">
	window.onload = window.history.forward(0);
</script>

<script>
	var finaldata;
	var profiledata;
	$(document).ready(
			
	function() {
		$("#myDIV").css("display", "none");
		$("#tblEntAttributes").css("display", "none");
		$("#schedule").css("display", "none");
		new get_fb();
		profiledata="${isPicAvailable}";
		if(profiledata=='yes'){
			$("#profileUpload").hide();
		   
		}else{
			 $("#profileUpload").show();
		}
	});
	function get_fb() {
		$.ajax({
			async : true,
			type : "GET",
			cache : false,
			url : "display",
			success : function(JSONObject) {
				var peopleHTML = "";
				peopleHTML += "<tr>";
				peopleHTML += "<th>City</th>";
				peopleHTML += "<th>Date</th>";
				peopleHTML += "<th>Tempreture</th>";
				peopleHTML += "</tr>";
				// Loop through Object and create peopleHTML
				for ( var key in JSONObject) {
					if (JSONObject.hasOwnProperty(key)) {

						peopleHTML += "<tr>";
						peopleHTML += "<td>" + JSONObject[key]["city"]
								+ "</td>";
						peopleHTML += "<td>" + JSONObject[key]["date"]
								+ "</td>";
						peopleHTML += "<td>" + JSONObject[key]["temp"]
								+ "</td>";
						peopleHTML += "</tr>";
					}
				}

				// Replace table’s tbody html with peopleHTML
				// $("#temp tbody").html(peopleHTML);
				setTimeout(function() {
					get_fb();
				}, 10000);
				$("#tblEntAttributes tbody").html(peopleHTML);
			},
			error : function(error) {

			}
		});
	}

</script>
<script>
	function myFunction() {
		var x = document.getElementById("myDIV");
		if (x.style.display === "none") {
			x.style.display = "block";
		} else {
			x.style.display = "none";
		}
		
	}
		
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
					
					<form:form id="forgotpassword" action="forgotpassword"
						method="get" class="login100-form validate-form">
						<span class="login100-form-title" style="size: 50">&nbsp; &nbsp;<b>Change Password</b></span>
						<div class="wrap-input100 validate-input">
							<form:label path="username"/>
							<form:input class="input100" path="username" name="username"
								id="username" placeholder="UserName" />
							<span class="focus-input100"></span> <span class="symbol-input100">
								<i class="fa fa-envelope" aria-hidden="true"></i>
							</span>
						</div>					

						<br />
						<div class="container-login100-form-btn">
							<form:button class="login100-form-btn" id="validateBtn" name="validate">Validate</form:button>
						</div>

				</form:form>

			</div>
		</div>

	</div>
	</div>

	<br />
	<br />
	<br />

<footer class="clearfix loginfooter">
		<jsp:include page="footer.jsp"></jsp:include>
	</footer>
</body>
</html>
