<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<head>

<%
	String nm = application.getContextPath();
	out.println(nm);
	String addr = nm + "/Order";
	System.out.println(addr);
%>
</head>
<%-- 

Product details


<sf:form modelAttribute="product" method="post">
	<sf:label path="pname">Product Name:</sf:label>${product.pname}
					<br />
	<br />
	<sf:label path="pbrand">Brand:</sf:label>${product.pbrand}
					<br />
	<br />
	<sf:label path="pprice">Age :</sf:label>${pprice}
					<br />
	<br />
	<!-- for triggering webflow events using form submission,
					 the eventId to be triggered is given in "name" attribute as:
					-->

	<a href="${session.getContextPath()}/autobazaar/Order">Next</a>
	<a href="${session.getContextPath()}/autobazaar/Order" name="_eventId_submit" class="btn-primary">Confirm Details</a>
	<input type="hidden" name="_flowExecutionKey"
		value="${flowExecutionKey}" />
	<input name="_eventId_submit" type="submit" value="Confirm Details" />
	<br />

	<input type="hidden" name="_flowExecutionKey_ value=" ${flowExecutionKey}" />
	<input type="hidden" name="_eventId" value="finished" />
	<input name="_eventId_submit" type="submit" value="Finished" />

	<!-- <sf:button id="submit" action="submit" value="Proceed" update="@form" /> -->


</sf:form>
<div>
	<%@ include file="Footer.jsp"%>
</div>

 --%>



<link href='https://fonts.googleapis.com/css?family=Ubuntu+Mono'
	rel='stylesheet' type='text/css'>
<
<style>
.monospaced {
	font-family: 'Ubuntu Mono', monospaced;
}

.add-to-cart .btn-qty {
	width: 52px;
	height: 46px;
}

.add-to-cart .btn {
	border-radius: 0;
}
</style>
<div>
	<%@ include file="Header.jsp"%>
</div>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>${product.pid}
<div class="container" id="product-section">

	<sf:form modelAttribute="product" method="post">
		<div class="row">
			<div class="col-md-6 table-bordered">
				<img style="width: 500px; height: 500px" border="5"
					src="resources/images/${product.pid}.jpg" alt=""
					class="image-responsive" />
					<br/>
					<font color="Orange"><h3>${product.pdescription}</h3></font>
			</div>
			<div class="col-md-6">
				<div class="row">
					<div class="col-md-12">
						<%=request.getParameter("pname")%>
						<h1><%=request.getParameter("pname")%></h1>
					</div>
					<div class="row">
						<div class="col-md-12">
							<span class="label label-primary"><%=request.getParameter("pbrand")%></span>
							<span class="monospaced">No. 1960140180</span>
						</div>
					</div>
					<div class="row">
						<div class="col-md-12">
							<p class="description"><%=request.getParameter("pbrand")%></p>
						</div>
					</div>
					<div class="row">
						<div class="col-md-3">
							<span class="sr-only">Four out of Five Stars</span> <span
								class="glyphicon glyphicon-star" aria-hidden="true"></span> <span
								class="glyphicon glyphicon-star" aria-hidden="true"></span> <span
								class="glyphicon glyphicon-star" aria-hidden="true"></span> <span
								class="glyphicon glyphicon-star" aria-hidden="true"></span> <span
								class="glyphicon glyphicon-star-empty" aria-hidden="true"></span>
							<span class="label label-success">61</span>
						</div>
						<div class="col-md-3">
							<span class="monospaced">Write a Review</span>
						</div>
					</div>
					<div class="row">
						<div class="col-md-12 bottom-rule">
							<h2 class="product-price"><%=request.getParameter("pprice")%></h2>
						</div>
					</div>


					<div class="row add-to-cart">
						<div class="col-md-5 product-qty">
							Quantity
							 <input class="btn btn-default btn-lg btn-qty" value="1" /> 
								
						</div>
						<div class="col-md-4">
							<a href="${session.getContextPath()}/autobazaar/Order/${product.pid}" role="button"
								name="_eventId_submit"
								class="btn btn-lg btn-primary btn-full-width">Add to Cart  <span class="glyphicon glyphicon-cart-in"></span>
								</a>
														</div>
					</div>
					<!-- end row -->

					<div class="row">
						<div class="col-md-4 text-center">
							<span class="monospaced">In Stock</span>
						</div>
						<div class="col-md-4 col-md-offset-1 text-center">
							<a class="monospaced" href="#">Add to Shopping List</a>
						</div>
					</div>
					<!-- end row -->
					<div class="row">
						<div class="col-md-12 bottom-rule top-10"></div>
					</div>
					<!-- end row -->

					<div class="row">
						<div class="col-md-12 top-10">
							<p>
								To order by telephone, <a href="tel:18005551212">please call
									1-800-555-1212</a>
							</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</sf:form>
</div>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<div>
	<%@ include file="Footer.jsp"%>
</div>