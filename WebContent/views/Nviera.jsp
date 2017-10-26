<!DOCTYPE html>
<html data-ng-app="app">
<head>
<title>Nviera</title>



  <script type="text/javascript" src="../javaScript/Pages.js"></script>
</head>
<body data-ng-controller="mainController">
	<!-- begin navbar -->
		<%@include file="../views/header.html"%>
		<div id="main">
		<div data-ng-view>	</div></div>

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
				
				 <img src="../img/tech2.png" alt="Nviera" width="700px" height="400px" style="float: left; padding-left: 50px; padding-top: 50px;">
				<!-- <img src="../img/nvieralogo.jpg" height="100px" width="300px" alt="Nviera"> -->
				<span class="back-text">NVIERA</span>
				<span class="foot-text">Innovations | Solutions | Products</span>
				<span class="back-text1">We are here to give SOLUTIONS..</span>
				<span class="back-text2">Nviera is solving <br>many business challenges for<br> our clients through innovation</span>
			</div>
		</div>
		<div class="container-fluid" >
			<div>
			   <img src="../img/stc1.gif" alt="Nviera" style="padding-top: 70px;">
			 </div>
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
	<div class="container-fluid">
			<div id="lastcont" >
				<br><br><br><br>
				<div align="center" style="color: white;"><b>Mobile::9966009966</b></div>
					<div align="center"><a href="https://www.facebook.com/nvieratech/" class="fa fa-facebook"></a>
										<a href="#" class="fa fa-twitter"></a>
										<a href="nviera.com" class="fa fa-google"></a>
										<a href="https://www.linkedin.com/company/25072804/" class="fa fa-linkedin"></a>
										<a href="#" class="fa fa-youtube"></a>
										<a href="#" class="fa fa-instagram"></a>
										<br><br><br>
					<div style="color: white;">
									<a href="../views/About.jsp">About</a> 
									<a href="../views/Services.jsp">Services</a> 
									<a href="../views/Products.jsp">Products</a> 
									<a href="../views/Contact.jsp">Contact Us</a> </div>
					</div>
							<br><br>
				<div style="color: white;" align="center">
					<h5>Copyrights @2017 Nviera</h5>
				</div>	
		</div>			
	</div>
		<!-- End home -->
		
	</div>

</body>
</html>