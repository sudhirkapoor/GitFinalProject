<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>

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
.add-to-cart .btn { border-radius: 0; }


</style>
<div>
	<%@ include file="Header.jsp"%>
</div>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<div class="container" id="product-section">
	<div class="row">
		<div class="col-md-6">
			<img style="width:550px;height:550px" border="5" src="<c:url value="${imgs }/ProductImages/speaker1.jpg"/>"
  alt="" class="image-responsive" />
		</div>
		<div class="col-md-6">
			<div class="row">
				<div class="col-md-12">
				<%-- <%=request.getParameter("pname") %> --%>
					<h1><%=request.getParameter("pname") %></h1>
				</div>
				<div class="row">
					<div class="col-md-12">
						<span class="label label-primary"><%=request.getParameter("pbrand") %></span> <span
							class="monospaced">No. 1960140180</span>
					</div>
				</div>
				<div class="row">
					<div class="col-md-12">
						<p class="description"><%=request.getParameter("pbrand") %></p>
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
						<h2 class="product-price"><%=request.getParameter("pprice") %></h2>
					</div>
				</div>
				

				<div class="row add-to-cart">
					<div class="col-md-5 product-qty">
						<span class="btn btn-default btn-lg btn-qty"> <span
							class="glyphicon glyphicon-plus" aria-hidden="true"></span>
						</span> <input class="btn btn-default btn-lg btn-qty" value="1" /> <span
							class="btn btn-default btn-lg btn-qty"> <span
							class="glyphicon glyphicon-minus" aria-hidden="true"></span>
						</span>
					</div>
					<div class="col-md-4">
						<button class="btn btn-lg btn-brand btn-full-width">Add
							to Cart</button>
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
</div>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<div>
	<%@ include file="Footer.jsp"%>
</div>