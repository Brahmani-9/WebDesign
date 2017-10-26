<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="viewport" content="width=device-width,initial-scale=1.0"/>
<title>Login Form</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"><link rel="stylesheet" href="" type="text/css" />
<script type="text/javascript"></script>
<link rel="stylesheet" href="../css/login.css">
</head>

<body>
<%@include file="../views/header.html"%>
<div class="login-form" >
	<div class="login-face"><img src="../img/login.png"></div>
	<section class="form">
		<form name="loginForm" id="loginForm" onsubmit="fnLoginValidation()">
			<div class="input">
				<label> User Name</label>
				<input class="text-control" type="text" id="username" name="username" required>
				<i class="fa fa-user" id="fas"></i>
			</div>
			<div class="input">
				<label>Password</label>
				<input type="password" id="password" name="password" required>
				<i class="fa fa-lock" id="fas"></i>
			</div>
			<a href="#" style="float:right;color:gray;font-size:14px;">Forget Password?</a>
			<div>
				<input type="submit" id="login" name="login" value="Sign In" />
			</div>
			
		</form>
	</section>
</div>

</body>
</html>