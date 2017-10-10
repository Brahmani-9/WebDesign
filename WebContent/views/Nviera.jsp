<!DOCTYPE html>
<html data-ng-app="app">
<head>
<title>Nviera</title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="icon" href="../img/nlogo.jpg">
<script type="text/javascript" src="../js/jquery-3.1.1.min.js"></script>
<script type="text/javascript" src="../js/angular.js"></script>
<script type="text/javascript" src="../js/angular.min.js"></script>
<script type="text/javascript" src="../js/angular-cookies.js"></script>
<script type="text/javascript" src="../js/angular-resource.js"></script>
<script type="text/javascript" src="../js/angular-route.js"></script>
<script src="../javaScript/Pages.js"></script>
<script type="text/javascript" src="../js/bootstrap.js"></script>
<script type="text/javascript" src="../js/bootstrap.min.js"></script>

<link rel="stylesheet" href="../css/bootstrap.css">
<link rel="stylesheet" href="../css/bootstrap.min.css">

<link rel="stylesheet" href="../css/mdb.min.css">
<link rel="stylesheet" href="../css/mdb.css">

<link rel="stylesheet" href="../css/w3.css">
<link rel="stylesheet" href="../css/font-awesome.min.css">
<link rel="stylesheet" href="../css/style.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body data-ng-controller="MainCtrl">
	<!-- begin navbar -->
	<div class="w3-top">
		<nav class="navbar navbar-inverse"
			style="box-shadow:10px 10px 5px 20px #3333cc inset;">

		<div class="container" style="padding-top: 30px;">
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="w3-bar w3-white w3-card-2">
				<a
					class="w3-bar-item w3-button w3-padding-large w3-hide-medium w3-hide-large w3-right"
					href="javascript:void(0)" onclick="myFunction()"
					title="Toggle Navigation Menu"> <i class="fa fa-bars"></i></a>
				<!-- header -->
				<img class="animated bounce infinite" src="../img/nletter.jpg"
					width="36px" height="36px">

				<div class="w3-bar-item" id="nviera">VIERA</div>
				<a href="#home"
					class="w3-bar-item w3-button w3-padding-large w3-hide-small"> <span><i
						class="fa fa-home fa-fw" aria-hidden="true"></i></span><span>HOME</span></a>
				<a href="#/About"
					class="w3-bar-item w3-button w3-padding-large w3-hide-small">ABOUT
					US</a> <a href="Products.jsp"
					class="w3-bar-item w3-button w3-padding-large w3-hide-small">PRODUCTS</a>
				<a href="Services.jsp"
					class="w3-bar-item w3-button w3-padding-large w3-hide-small">SERVICES</a>
				<a href="Careers.jsp"
					class="w3-bar-item w3-button w3-padding-large w3-hide-small">CAREERS</a>
				<a href="#/signin"
					class="w3-bar-item w3-button w3-padding-large w3-hide-small"><span><i
						class="fa fa-sign-in fa-fw" aria-hidden="true"></i></span><span>SIGN
						IN</span></a>
				<a href="#/signup"
					class="w3-bar-item w3-button w3-padding-large w3-hide-small"><span><i
						class="fa fa-user-plus" aria-hidden="true"></i></span><span>SIGN
						UP</span></a>
			</div>
		</div>
		</nav>

		<!-- Nviera flash animation -->

		<!-- <div class="container-fluid"
			style="background-color: rgba(230, 230, 230, 0.5);">
			<center class="animated flash infinite"
				style="font-family: 'Sedgwick Ave Display', cursive; font-size: 30px; color:;">N V I E R A</center>
		</div> -->

	</div>
	<!-- End navbar -->
	<div>
		<!-- Home -->
		<div id="home">
			<div style="padding-top: 20px;">
				<div class="container" style="background-color: rgba(0, 0, 153, 0.4); margin-top: 70px; color: white; margin-bottom: 30px;">
					<!-- <h5 align="center">WELCOME</h5> -->
				</div>
			</div>
			<div class="container-fluid">
			<div class="well" id="boxWell" style="width:100%; height:530px; margin-top: 80px;">
				<!--  <img src="../img/satisifaction.jpg" width="400px" height="300px" alt="Nviera"> -->
				 <img src="../img/tech2.png" alt="Nviera" width="700px" height="400px" style="float: left; padding-left: 50px; padding-top: 50px;">
				<span class="back-text">NVIERA</span>
				<span class="back-text1">We are here to give SOLUTIONS..</span>
				<span class="back-text2">Nviera is solving <br>many business challenges for<br> our clients through innovation</span>
			</div>
			</div>
			<div class="container-fluid" >
				<img src="../img/stc1.gif" alt="Nviera" style="padding-top: 70px;">
				<div class="jumbotron" >
					<P style="font-size: 14px; color: yellow;">MISSION</P>
					<br> Nviera is dedicated to providing the people, services and
					solutions our clients <br> need to meet their information
					technology challenges and business goals.
				</div>
				<div class="jumbotron">
					<P style="font-size: 14px; color: yellow;">VISION</P>
					<br>To help our clients meet their goals through our people,
					services and solutions.
				</div>
			</div>
		</div>
		<!-- End home -->



<div data-ng-view>
	</div>
	</div>
</body>
</html>