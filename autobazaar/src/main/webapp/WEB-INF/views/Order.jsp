<%@taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
Order

<sf:form modelAttribute="product" method="post">
					<sf:label path="pname">Product Name:</sf:label>${product.pname}
					<br /><br />
					<sf:label path="pbrand">Brand:</sf:label>${product.pbrand}
					<br /><br />
					<sf:label path="pprice">Age :</sf:label>${pprice}
					<br /><br />
					<!-- for triggering webflow events using form submission,
					 the eventId to be triggered is given in "name" attribute as:
					-->
					<input name="_eventId_edit" type="submit" value="Edit" /> 
					<input name="_eventId_submit" type="submit" value="Confirm Details" /><br />
				</sf:form>
<div>
	<%@ include file="Footer.jsp"%>
</div>