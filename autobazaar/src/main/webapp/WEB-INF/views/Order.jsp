
<div>
	<%@ include file="Header.jsp"%>
</div>
<%@taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>



<sf:form modelAttribute="product" method="post">
	

	
	
					<sf:label path="pname">Product Name:</sf:label>${product.pname}
					<br /><br />
					<sf:label path="pbrand">Brand:</sf:label>${product.pbrand}
					<br /><br />
					<sf:label path="pprice">Age :</sf:label>${pprice}
					<br /><br />
					<!-- for triggering webflow events using form submission,
					 the eventId to be triggered is given in "
			name" attributeas:
					-->


			<input name="_eventId_submit" type="submit" value="Next" /><br />
</sf:form>
<div>
	<%@ include file="Footer.jsp"%>
</div>