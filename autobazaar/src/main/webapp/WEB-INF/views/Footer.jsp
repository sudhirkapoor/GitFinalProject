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
	
		<div  class="row">
			<nav class="navbar navbar-inverse" style="height:200px">
				<div class="container-fluid">
					<div class="navbar-header">
						<a class="navbar-brand" href="#">AutoBazaar.com</a>
					<br/>
					<a  href="index"><img style="height: 130px;width:150px;"  src="<c:url value="${imgs}/Logo/logo.png"/>"
					class="top img-rounded"></img></a>
					</div>
					
					<ul class="nav navbar-nav navbar-right">
						 <li style=" color:white;text-align:right; margin-left:150px;">Copyright &copy; 2015 AutoBazaar Pvt. Ltd.</li>
						
					</ul>
				</div>
			</nav>
		</div>

	
	<!-- <script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
	<script
		src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script> -->
</body>
</html>