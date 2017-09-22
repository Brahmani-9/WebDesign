<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="../css/bootstrap.css">
<link rel="stylesheet" href="../css/bootstrap.min.css">
<script type="text/javascript" src="../js/angular.js"></script>
<script type="text/javascript" src="../js/angular.min.js"></script>
<script type="text/javascript" src="../js/angular-cookies.js"></script>
<script type="text/javascript" src="../js/angular-resource.js"></script>
<script type="text/javascript" src="../js/angular-route.js"></script>
<script type="text/javascript" src="../js/jquery-3.1.0.min.js"></script>
<script type="text/javascript" src="../js/bootstrap.js"></script>
<script type="text/javascript" src="../js/bootstrap.min.js"></script>
<script type="text/javascript"src="../javaScript/FormFieldValidation.js"></script>
<style type="text/css">
#well1 {
	width: 100%;
	height: 90px;
	background-color: rgb(0, 0, 153); 
	/* background-color: rgb(34, 34, 17); */
	/* background-color: rgba(153,255,204,0.3); */
	position: relative;
	color: white;
	top: 0px;
	border-radius: 2px;
	padding-bottom: 20px;
	box-shadow: 10px 10px 5px #888888;
}

#headersize {
	color: white;
	font-size: 30px;
	line-height: 5px;
	position: relative;
	font-weight: bold;
	top: 20px;
}
</style>
</head>
<%
	int timeout = session.getMaxInactiveInterval();
	response.setHeader("Refresh", timeout + "; URL = ../");
%>
<!-- <body style="background-color:rgb(240, 230, 255) rgb(212, 212, 170)"> -->
<body style="background-color: white">
	<form name="adminLogin">
		<div>
			<div id="well1">
				<h5 id="headersize" align="center">Billing</h5>
				<table>
					<tr>
						<td><label>Login Id :</label></td>
						<td><label><font color="black"><%=session.getAttribute("UserSessionId")%></font></label></td>
						<td><label>Login Name :</label></td>
						<td><label><font color="black"><%=session.getAttribute("UserSessionName")%></font></label></td>
						<td><label><a href="Logout.jsp"><button type="button" class="btn btn-default btn-sm" style="position:fixed;right: 50px;top: 30px"><span class="glyphicon glyphicon-log-out"></span> Logout</button></a></label> 
					</tr>
				</table>
			</div>
		</div>
	</form>
</body>
</html>