<!doctype html>
<html lang="en">
<head>
<meta http-equiv="Content-type" content="text/html;charset=UTF-8">
<title>Software Developer</title>
<script type="text/javascript" src="../js/jquery-3.1.1.min.js"></script>
<script type="text/javascript" src="../js/bootstrap.js"></script>
<script type="text/javascript" src="../js/bootstrap.min.js"></script>
<script type="text/javascript" src="../javaScript/main.js"></script>
<link rel="stylesheet" href="../css/bootstrap.css">
<link rel="stylesheet" href="../css/bootstrap.min.css">
<script	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
<script type="text/javascript" src="../js/angular.js"></script>
<script type="text/javascript" src="../js/angular.min.js"></script>
<script type="text/javascript" src="../js/angular-cookies.js"></script>
<script type="text/javascript" src="../js/angular-resource.js"></script>
<script type="text/javascript" src="../js/angular-route.js"></script>
<script>
var app = angular.module('my-app', ['ui.bootstrap']);

app.controller('treeController', function($scope) {
  $scope.callMe = function() {
    alert("test");
  };

  $scope.tree = [{
    name: "Bob",
    link: "#",
    subtree: [{
      name: "Ann",
      link: "#"
    }]
  }, {
    name: "Jon",
    link: "#",
    subtree: [{
      name: "Mary",
      link: "#"
    }]
  }, {
    name: "divider",
    link: "#"
  }, {
    name: "Another person",
    link: "#"
  }, {
    name: "divider",
    link: "#"
  },{
    name: "Again another person",
    link: "#"
  }];

});

app.directive('tree', function() {
  return {
    restrict: "E",
    replace: true,
    scope: {
      tree: '='
    },
    templateUrl: 'template-ul.html'
  };
});

app.directive('leaf', function($compile) {
  return {
    restrict: "E",
    replace: true,
    scope: {
      leaf: "="
    },
    templateUrl: 'template-li.html',
    link: function(scope, element, attrs) {
      if (angular.isArray(scope.leaf.subtree)) {
        element.append("<tree tree='leaf.subtree'></tree>");
        element.addClass('dropdown-submenu');
        $compile(element.contents())(scope);
      } else {
        element.bind('click', function() {
          alert("You have clicked on " + scope.leaf.name);
        });

      }
    }
  };
});</script>
<link rel="stylesheet" href="../css/w3.css">
<link rel="stylesheet" href="../css/font-awesome.min.css">
</head>
<body>
I know the post is a bit old, but may be can help someone else navbar menu

It is a navbar with a couple of drop down menu implemented in AngularJS, Boostrap CSS and angular-ui. Drop down menu is created by recursive call in a custom directive.

The index.html:

<body>
  <h1>Hello Navbar</h1>
  <div ng-app="my-app">
    <div ng-controller="treeController">
      <nav class="navbar navbar-default" role="navigation">
        <div class="navbar-header">
          <a class="navbar-brand" href="#">
            <span>Brand</span>
          </a>
        </div>
        <ul class="nav navbar-nav">
          <li class="dropdown" dropdown on-toggle="toggled(open)">
            <a href="#" class="dropdown-toggle" dropdown-toggle role="button">
              Dropdown
              <span class='caret'></span>
            </a>
            <tree tree='tree'></tree>
          </li>
          <li class="dropdown" dropdown on-toggle="toggled(open)">
            <a href="#" class="dropdown-toggle" dropdown-toggle role="button">
              Just a clone
              <span class='caret'></span>
            </a>
            <tree tree='tree'></tree>
          </li>
        </ul>
      </nav>
    </div>
  </div>
</body>
</body>
</html>