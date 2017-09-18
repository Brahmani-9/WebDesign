<!doctype html>
<html lang="en" data-ng-app="registration">
<head>
<meta http-equiv="Content-type" content="text/html;charset=UTF-8">
<title>Software Developer</title>
<script type="text/javascript" src="../js/jquery-3.1.1.min.js"></script>
<script type="text/javascript" src="../js/bootstrap.js"></script>
<script type="text/javascript" src="../js/bootstrap.min.js"></script>

<link rel="stylesheet" href="../css/bootstrap.css">
<link rel="stylesheet" href="../css/bootstrap.min.css">
<script	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
<script type="text/javascript" src="../js/angular.js"></script>
<script type="text/javascript" src="../js/angular.min.js"></script>
<script type="text/javascript" src="../js/angular-cookies.js"></script>
<script type="text/javascript" src="../js/angular-resource.js"></script>
<script type="text/javascript" src="../js/angular-route.js"></script>

<link rel="stylesheet" href="../css/w3.css">
<link rel="stylesheet" href="../css/font-awesome.min.css">
<script type="text/javascript">
	var app = angular.module("registration", []);
	app.controller("myCtrl", function($scope) {
		$("#submit").click(function() {
		/* 	var fname= $("#fname").val();
			var lname= $("#lname").val();
			var email= $("#email").val();
			var phone= $("#phone").val();
			var address= $("#address").val();
			var gender= $("#gender").val();
			var dataString = $("#myform").serialize();
			if(fname == '' ){
				$('msg').html("please fill details");
			}  */
			if ($scope.myform.$valid) {
				alert('our form is amazing');
			}
			else{
				/* $.ajax({
					type: 'POST',
					url: 'Nviera.jsp',
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
					}
				}); */
			}
				return false;
 	});
		
	});
</script>
<style>
input.ng-invalid {
	border: 1px solid red;
}
</style>
</head>
<body data-ng-controller="myCtrl">
	<div class="container">
	<form class="form-horizantal" id="myform" data-ng-submit="submitForm()">
		<fieldset>
			<legend>Fill Form</legend>
		<div class="form-group">
		<label for="inputEmail" class="col-md-2 control-label">FirstName</label>
		<div class="col-md-6">
			<input type="text" name="fname" class="form-control" id="fname">
		</div>
	</div>
	<div class="form-group">
		<label for="inputEmail" class="col-lg-2 control-label">LastName</label>
		<div class="col-lg-10">
			<input type="text" name="lname" class="form-control" id="lname">
		</div>
	</div>
	<div class="form-group">
		<label for="inputPassword" class="col-lg-2 control-label">Password</label>
		<div class="col-lg-10">	<input type="password" name="password" class="form-control"	id="password">
		</div>
	</div>
	<div class="form-group">
		<label for="inputEmail" class="col-lg-2 control-label">Email</label>
		<div class="col-lg-10">
			<input type="text" name="email" class="form-control" id="email">
		</div>
	</div>
	<div class="form-group">
		<label for="inputEmail" class="col-lg-2 control-label">Phone</label>
		<div class="col-lg-10">
			<input type="text" name="phone" class="form-control" id="phone">
		</div>
	</div>
	<div class="form-group">
		<label for="textArea" class="col-lg-2 control-label">Address</label>
		<div class="col-lg-10">
			<textarea name="address" class="form-control" id="address">	</textarea>
		</div>
	</div>
	<div class="form-group">
		<label class="col-lg-2 control-label">Gender</label>
		<div class="col-lg-10">
			<div class="radio">
				<label><input type="radio" name="genders" id="genders" value="Male" checked>Male</label>
			</div>
			<div class="radio">
				<label><input type="radio" name="genders" id="genders" value="Male" checked>Female </label>
			</div>
			<span id="msg">
			<div class="form-group">
			   <div class="col-lg-10 col-lg-offset-2">
				<button type="submit" id="submit" name="submit" class="btn btn-primary">Submit</button>
				<button type="reset" class="btn btn-default">Reset</button>
			</div>
		</div></span>
		</div>
	</div>
	</fieldset></form>
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