<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html lang="en">
<head>
<c:set var="img" value="/resources/images" />
<c:set var="btcss" value="/resources/bootstrap/css" />
<c:set var="btjs" value="/resources/bootstrap/js" />
<meta charset="UTF-8">
<title>Document</title>

<link rel="stylesheet"
	href="<c:url value="${btcss }/bootstrap.min.css"/>">
<link rel="stylesheet" href="<c:url value="${btcss }/Custome.css"/>">
</head>
<style>
</style>
<body>
	
		<div style="width"100% class="row">
			<nav class="navbar navbar-inverse">
				<div class="container-fluid">
					<div class="navbar-header">
						<a class="navbar-brand" href="#">AutoBazaar.com</a>
					</div>
					<ul class="nav navbar-nav">
						<li class="active"><a href="#">Account</a></li>
						<li><a href="#">Contact Us</a></li>
						<li><a href="#">About Us</a></li>
						
					</ul>
					
					<ul class="nav navbar-nav navbar-right">
						<li>Copyright © 2015 AutoBazaar Pvt. Ltd.</li>
						
					</ul>
				</div>
			</nav>
		</div>

	
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
	<script
		src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</body>
</html>