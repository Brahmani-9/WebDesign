var app = angular.module('app',['ngRoute']);
app.controller('mainController', function($scope) {  
    $scope.AboutMessage = 'About Controller Called !!!';  
});
app.controller('signinController', function($scope) {  
    $scope.AboutMessage = 'About Controller Called !!!';  
}
);  



app.config(function($routeProvider){
	$routeProvider
	.when("/",{
		templateUrl : "views/NewFile.html"
	})
	.when("/About",{
		templateUrl : '../views/About.jsp',
		controller: 'aboutController'
	})
	.when("/Products",{
		templateUrl : '../views/Products.jsp',
		controller: 'productController'
	})
	.when("/Services",{
		templateUrl : '../views/About.jsp',
		controller: 'aboutController'
	})
	.when('/signin',{
		templateUrl : '../views/Login.jsp',
		controller:'signinController'
	}).
	when('/signup',{
		controller:'../views/Registration.jsp'
	}).
	otherwise({
		redirectTo : '/'
	});
}
	
);