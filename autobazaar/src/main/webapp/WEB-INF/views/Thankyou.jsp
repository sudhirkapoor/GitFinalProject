

<%@taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<sf:form modelAttribute="product" method="post">
<h1>Thankyou for Shoping </h1>
<h3>Your Order is ${product.pname} and Order No-009898</h3>

<sf:form modelAttribute="product">
					
				
					<input name="_eventId_submit" class="btn btn-info" type="submit" value="Home" /><br />
				
				</sf:form>

<div>
	<%@ include file="Footer.jsp"%>
</div>
</sf:form>