var app = angular.module('app',[ngRoute]);
app.controller('MainCtrl',function($scope){
	
})


.config(['$routeProvider', function($routeProvider){
	$routeProvider.
	when('/',{
		controller:'MainCtrl'
	}).
	when('/About',{
		controller:'/About.jsp'
	}).
	when('/signin',{
		controller:'../views/Login.jsp'
	}).
	when('/signup',{
		controller:'../views/Registration.jsp'
	}).
	otherwise({
		redirectTo : '../views/Nviera.jsp'
	});
}
	
]);