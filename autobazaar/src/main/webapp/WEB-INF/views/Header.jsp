<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html lang="en">
<head>
<c:set var="imgs" value="/resources/images" />
<c:set var="btstrpcss" value="/resources/bootstrap/css" />
<c:set var="btstrpjs" value="/resources/bootstrap/js" />
<meta charset="UTF-8">


<title>Document</title>

<link rel="stylesheet"
	href="<c:url value="${btstrpcss }/bootstrap.min.css"/>">
	
<link rel="stylesheet"
	href="<c:url value="${btstrpcss }/Carousel.css"/>">
	<link rel="stylesheet"
	href="<c:url value="${btstrpcss }/Custome.css"/>">
	<script src="<c:url value="${btstrpjs }/angular.min.js"/>"></script>
	<script src="<c:url value="${btstrpjs }/bootstrap.js"/>"></script>
	
</head>
<style>

</style>

<body>

	<p>&nbsp;</p>

	<div class="container">
<%-- 	<div class="row">
			<div class="col-md-2">
				<img src="<c:url value="${imgs}/Logo/logo.png"/>"
					class="top img-rounded"></img>


			</div>
		
		</div> --%>
	
		<div class="row">

	<nav id="myNavbar" class="navbar navbar-inverse navbar-fixed-top">
			<div class="container-fluid">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse"
						data-target=".navbar collapse">
						<span class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
					<a  href="index"><img style="height: 50px;width:150px;"  src="<c:url value="${imgs}/Logo/logo.png"/>"
					class="top img-rounded"></img></a>
				</div>
				<div class="collapse navbar-collapse" id="myNavbar">
					<ul class="nav navbar-nav">

						<li><a href="${session.getContextPath()}/autobazaar/index">Home</a></li>
						<li><a id="abt" href="${session.getContextPath()}/autobazaar#section1">About US</a></li>
						<li class="dropdown"><a  href="${session.getContextPath()}/autobazaar/product">Product
								<!-- <span class="caret"></span> -->
								<!-- data-toggle="dropdown"  -->
								
						</a>
							<%-- <ul class="pmenu dropdown-menu">
								<li><a href="${session.getContextPath()}/autobazaar/product/TyreRim">Car Care</a></li>
								<li><a href="${session.getContextPath()}/autobazaar/Speakersystem"></a>Speaker and System</li>
								<li><a href="${session.getContextPath()}/autobazaar/TyreRim"></a>Tyre and Rims</li>

							</ul> --%></li>
					</ul>

					<ul class="nav navbar-nav navbar-right">
						<li><a href="${session.getContextPath()}/autobazaar/Register"><span
								class="glyphicon glyphicon-user"></span> Sign Up</a></li>
						<li><a href="${session.getContextPath()}/autobazaar/Login"><span
								class="glyphicon glyphicon-log-in"></span> Login</a></li>
					</ul>
				</div>
			</div>
		</nav>

</div>


	</div>
	

	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
	<script
		src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</body>
</html>
