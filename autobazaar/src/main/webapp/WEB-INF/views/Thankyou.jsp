

<%@taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<h1>Thanku</h1>

<sf:form modelAttribute="product">
					
					<a href="${session.getContextPath()}/bazaar/index">Home</a>
					
					toHome
					<input name="_eventId_submit" type="submit" value="Home" /><br />
				
				</sf:form>

<div>
	<%@ include file="Footer.jsp"%>
</div>