<!doctype html>
<html lang="en" data-ng-app="registration">
<head>
<meta http-equiv="Content-type" content="text/html;charset=UTF-8">
<title>Software Developer</title>
<script type="text/javascript" src="../js/jquery-3.1.1.min.js"></script>
<script type="text/javascript" src="../js/bootstrap.js"></script>
<script type="text/javascript" src="../js/bootstrap.min.js"></script>
<script	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
<script type="text/javascript" src="../js/angular.js"></script>
<script type="text/javascript" src="../js/angular.min.js"></script>
<script type="text/javascript" src="../js/angular-cookies.js"></script>
<script type="text/javascript" src="../js/angular-resource.js"></script>
<script type="text/javascript" src="../js/angular-route.js"></script>
<link rel="stylesheet" href="../css/bootstrap.css">
<link rel="stylesheet" href="../css/bootstrap.min.css">
<link rel="stylesheet" href="../css/w3.css">
<link rel="stylesheet" href="../css/font-awesome.min.css">
<script type="text/javascript">
	var app = angular.module("registration", []);
	app.controller("myCtrl", function($scope) {
		$("#submit").click(function() {
		 	var fname= $("#fname").val();
			var lname= $("#lname").val();
			var email= $("#email").val();
			var phone= $("#phone").val();
			var address= $("#address").val();
			var gender= $("#gender").val();
			var dataString = $("#myform").serialize();
			if(fname == '' || fname == null ){
				alert("Enter First Name..");
				$("#fname").focus();
			}else if(lname == ''|| lname == null ){
				alert("Enter Last Name..");
				$("#lname").focus();
			}else if(email == ''|| email == null){
				alert("Enter Email..");
				$("#email").focus();
			}else if(phone == '' || phone == null){
				alert("Enter Phone Number..");
				$("#phone").focus();
			}else if(address == '' || address == null){
				alert("Enter Address..");
				$("#address").focus();
			}else{
				 $.ajax({
					type: 'POST',
					url: 'RegistrationSave.jsp',
					data: dataString,
					cache: false,
					success: function(response){
						$("#msg").html(response);
						var fname= $("#fname").val("");
						var lname= $("#lname").val("");
						var email= $("#email").val("");
						var phone= $("#phone").val("");
						var address= $("#address").val("");
						var gender= $("#gender").val("");
						alert(dataString);
					}
				}); 
			}
				return false;
 	});
	});
</script>
<style>
input.ng-invalid {
	border: 1px solid red;
}

.registration-form{
	width: 450px;
	height: auto;
	position: absolute;
	padding: 10px 25px;
	background: #eee;
	left:50%;
	top:50%;
	transform: translateX(-50%) translateY(-50%);
	border-bottom: 5px solid gray;
	border-radius: 4px;
	
}
</style>
</head>
<body data-ng-controller="myCtrl" background= "../img/apple.jpg">
	<div class="registration-form">
		<div class="well">
			<form class="form-horizantal" id="myform">
		<h2 align="center">Registration Form</h2>
		<hr style="border: 1px solid #ccc;">
		<div class="form-group">
		<div class="col-md-6">
			<label>First Name</label>
			<input type="text" name="fname" class="text-control" id="fname" autofocus="autofocus" placeholder="First Name">
		</div>
	</div>
	<div class="form-group">
		<div class="col-lg-6">
			<label>Last Name</label>
			<input type="text" name="lname" class="text-control" id="lname"  placeholder="Last Name">
		</div>
	</div>
	<div class="form-group">
		<div class="col-lg-6">
			<label>Password</label>
			<input type="password" name="password" class="text-control"	id="password" placeholder="Password">
		</div>
	</div>
	<div class="form-group">
<!-- 		<label for="inputEmail" class="col-lg-2 control-label">Email</label>
 -->		<div class="col-lg-6">
 			<label>Email</label>
			<input type="text" name="email" class="text-control" id="email" placeholder="Email">
			
		</div>
	</div>
	<div class="form-group">
		<div class="col-lg-6">
		<label>Mobile Number</label>
			<input type="text" name="phone" class="text-control" id="phone" placeholder="Mobile Number">
		</div>
	</div>
	<div class="form-group">
		<div class="col-lg-10">
			<textarea name="address" class="text-control" id="address"  placeholder="Address"></textarea>
		</div>
	</div>
	<div class="form-group">
		<label class="col-lg-2 control-label">Gender</label>
		<div class="col-lg-10">
			<div class="radio">
				<label><input type="radio" name="genders" id="genders" value="Male">Male</label>
			</div>
			<div class="radio">
				<label><input type="radio" name="genders" id="genders" value="Female">Female </label>
			</div>
		</div>	
			<div class="form-group" align="center">
			   <div class="col-lg-10 col-lg-offset-2" >
			   <span id="msg">
				<button type="submit" id="submit" name="submit" class="btn btn-primary" >Submit</button>
				<button type="reset" class="btn btn-info">Reset</button></span>
			</div>
		</div>
		</div>
	</div>
	</fieldset></form></div>
	</div>
	<!--<div>
	 <form name="frm">
	<div>
		<input type="email" name="email" data-ng-model="user.email" required data-ng-minlength="5" data-ng-maxlength="10">
		<span data-ng-show="frm.email.$error.required">Required!</span>
		<span data-ng-show="frm.email.$error.email">not an email</span>
	</div>
	<div>
	<input type="password" name="password" data-ng-model="user.password" required>
	<span data-ng-show="frm.password.$error.required">Required!</span>
	<span data-ng-show="frm.password.$error.required">Required!</span></div>
	</form>
	</div> -->
</body>
</html>