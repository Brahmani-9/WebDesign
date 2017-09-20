<!doctype html>
<html lang="en" data-ng-app="validationApp">
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
var validationApp = angular.module('validationApp', []);

// create angular controller
validationApp.controller('mainController', function($scope) {

	// function to submit the form after all validation has occurred			
	$scope.submitForm = function() {

		// check to make sure the form is completely valid
		if ($scope.userForm.$valid) {
			alert('our form is amazing');
		}

	};

});
</script>
<style>
body { padding-top:30px; }
</style>
</head>
<body data-ng-controller="mainController">
<div>
<div class="container">
<div class="row">  
   
<div class="col-sm-6">
    <!-- FORM ============ -->
  
    <form name="userForm" data-ng-submit="submitForm()" novalidate>

        <!-- NAME -->
        <div class="form-group" data-ng-class="{ 'has-error' : userForm.name.$invalid && !userForm.name.$pristine }">
            <label>Name</label>
            <input type="text" name="name" class="form-control" data-ng-model="user.name" required>
            <p data-ng-show="userForm.name.$invalid && !userForm.name.$pristine" class="help-block">Your name is required.</p>
        </div>
      
        <!-- USERNAME -->
        <div class="form-group" data-ng-class="{ 'has-error' : userForm.username.$invalid && !userForm.username.$pristine }">
            <label>Username</label>
            <input type="text" name="username" class="form-control" data-ng-model="user.username" data-ng-minlength="3" data-ng-maxlength="8">
            <p data-ng-show="userForm.username.$error.minlength" class="help-block">Username is too short.</p>
            <p data-ng-show="userForm.username.$error.maxlength" class="help-block">Username is too long.</p>
        </div>
        
        <!-- EMAIL -->
        <div class="form-group" data-ng-class="{ 'has-error' : userForm.email.$invalid && !userForm.email.$pristine }">
            <label>Email</label>
            <input type="email" name="email" class="form-control" data-ng-model="user.email">
            <p data-ng-show="userForm.email.$invalid && !userForm.email.$pristine" class="help-block">Enter a valid email.</p>
        </div>
        
        <button type="submit" class="btn btn-primary" data-ng-disabled="userForm.$invalid">Submit</button>
        
    </form>
  </div>
  <div class="col-sm-6">
    <!-- VALIDATION TABLES ======== -->    
   <!--  <div class="row">
        <div class="col-xs-3">
            <h3>Form</h3>
            <table class="table table-bordered">
                <tbody>
                    <tr>
                        <td data-ng-class="{ success: userForm.$valid, danger: userForm.$invalid }">Valid</td>
                    </tr>
                    <tr>
                        <td data-ng-class="{ success: userForm.$pristine, danger: !userForm.$pristine }">Pristine</td>
                    </tr>
                    <tr>
                        <td data-ng-class="{ success: userForm.$dirty }">Dirty</td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div class="col-xs-3">
            <h3>Name</h3>
            <table class="table table-bordered">
                <tbody>
                    <tr>
                        <td data-ng-class="{ success: userForm.name.$valid, danger: userForm.name.$invalid }">Valid</td>
                    </tr>
                    <tr>
                        <td data-ng-class="{ success: userForm.name.$pristine, danger: !userForm.name.$pristine }">Pristine</td>
                    </tr>
                    <tr>
                        <td data-ng-class="{ success: userForm.name.$dirty }">Dirty</td>
                    </tr>
                    <tr>
                        <td data-ng-class="{ success: userForm.name.$touched }">Touched</td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div class="col-xs-3">
            <h3>Username</h3>
            <table class="table table-bordered">
                <tbody>
                    <tr>
                        <td data-ng-class="{ success: userForm.username.$valid, danger: userForm.username.$invalid }">Valid</td>
                    </tr>
                    <tr>
                        <td data-ng-class="{ success: userForm.username.$pristine, danger: !userForm.username.$pristine }">Pristine</td>
                    </tr>
                    <tr>
                        <td data-ng-class="{ success: userForm.username.$dirty }">Dirty</td>
                    </tr>
                    <tr>
                        <td data-ng-class="{ success: userForm.username.$touched }">Touched</td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div class="col-xs-3">
            <h3>Email</h3>
            <table class="table table-bordered">
                <tbody>
                    <tr>
                        <td data-ng-class="{ success: userForm.email.$valid, danger: userForm.email.$invalid }">Valid</td>
                    </tr>
                    <tr>
                        <td data-ng-class="{ success: userForm.email.$pristine, danger: !userForm.email.$pristine }">Pristine</td>
                    </tr>
                    <tr>
                        <td data-ng-class="{ success: userForm.email.$dirty }">Dirty</td>
                    </tr>
                    <tr>
                        <td data-ng-class="{ success: userForm.email.$touched }">Touched</td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div> -->
    
</div>
</div>
</div>
</div>
</body>
</html>