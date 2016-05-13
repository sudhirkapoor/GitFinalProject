

<div>
	<%@ include file="Header.jsp"%>
</div>

<%@taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<p>
&nbsp;
</p>
<p>
&nbsp;
</p>
<p>
&nbsp;
</p>
<p>
&nbsp;
</p>
<div class="container">
<sf:form modelAttribute="product" method="post">
<h1>Thankyou for Shoping </h1>
<h3>Your Order is ${product.pname} and Order No-009898</h3>

					
				
					<input name="_eventId_submit" class="btn btn-info" type="submit" value="Home" /><br />
				
				</sf:form>
</div>
<div>
	<%@ include file="Footer.jsp"%>
</div>
