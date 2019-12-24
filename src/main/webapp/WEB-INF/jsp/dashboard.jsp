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
<title>Dashboard</title>

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

	function loginSign() {
		if (validateLoginForm()) {
			var password = $('#loginUserPwd').val();
			var username = $('#loginUser').val();
			var jsonString = '{"username":"' + username + '","password":"'
					+ password + '"}';
			loginUser(jsonString);
		}
	}

	function validateLoginForm() {

		var flag = true;

		var loginUserPwd = $('#password').val();
		var loginUser = $('#username').val();

		if (loginUserPwd == '') {
			$("#loginUserPwdError").show();
			$("#loginUserPwdError").text("Please enter password");
			flag = false;
		} else {
			$('#loginUserPwdError').hide();
		}

		if (loginUser == '') {
			$("#loginUserNameError").show();
			$("#loginUserNameError").text("Please enter username");
			flag = false;
		} else {
			$('#loginUserNameError').hide();
		}

		return flag;
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
		var x = document.getElementById("tblEntAttributes");
		if (x.style.display === "none") {
			x.style.display = "block";
		} else {
			x.style.display = "none";
		}
	}
	
	function mySchedule() {		
		var x = document.getElementById("schedule");
		if (x.style.display === "none") {
			x.style.display = "block";
		} else {
			x.style.display = "none";
		}
	}
	
	
</script>

</head>

<body class="loginbg">
	<!-- <div class="tooltip"> -->
	<div class="chip">
	
		<span class="tooltiptext">
		
		<img id="ItemPreview"
			src="data:image/jpg;base64,${profile}" width="250" height="250"></span>
			</div>${username}


	<h4 align="left">
		<a href="login">Logout</a>
	</h4>
	<div id="profileUpload">
		<form method="POST" action="upload" enctype="multipart/form-data">
			<input type="file" name="file" /><input type="submit" value="upload" />
		</form>
		</div>
	<button onclick="myFunction()">Tempreture</button>
	<button onclick="mySchedule()">Schedule</button>
	<header id="mu-header">
		<%-- <jsp:include page="header.jsp"></jsp:include> --%>
	</header>
	<section>
		<div class="container">
			<div class=title id="myDIV">Tempreture Details</div>
			<div id="tblEntAttributes">
				<table border="1" width="300px;">
					<tbody id="temp">
					</tbody>
				</table>
			</div>
		</div>
	</section>


	<section>
		<div class="container">
			<div class="row" id="schedule">
				<div class="col-lg-16 col-md-16">					
						<table>
							<caption>slots:</caption>
							<tr>
								<td></td>
								<th scope="col">Monday</th>
								<th scope="col">Tuesday</th>
								<th scope="col">Wednesday</th>
								<th scope="col">Thursday</th>
								<th scope="col">Friday</th>
							</tr>
							<tr>
								<th scope="row">09:00 - 11:00</th>
								<td>Closed</td>
								<td>Open</td>
								<td>Open</td>
								<td>Closed</td>
								<td>Closed</td>
							</tr>
							<tr>
								<th scope="row">11:00 - 13:00</th>
								<td>Open</td>
								<td>Open</td>
								<td>Closed</td>
								<td>Closed</td>
								<td>Closed</td>
							</tr>
							<tr>
								<th scope="row">14:00 - 15:00</th>
								<td>Open</td>
								<td>Open</td>
								<td>Closed</td>
								<td>Closed</td>
								<td>Closed</td>
							</tr>
						</table>
					</div>
				</div>
			</div>
	</section>
	<br />
	<br />
	<br />

</script>
<footer class="clearfix loginfooter">
		<jsp:include page="footer.jsp"></jsp:include>
	</footer>
</body>
</html>
