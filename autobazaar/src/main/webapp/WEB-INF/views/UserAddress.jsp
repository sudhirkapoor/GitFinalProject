<style>
/* body {
	background: #eee !important;
} */
.wrapper {
	margin-top: 80px;
	margin-bottom: 80px;
}

.form-signin {
	max-width: 580px;
	padding: 15px 35px 45px;
	margin: 0 auto;
	background-color: #f4f7f8;
	border: 1px solid rgba(0, 0, 0, 0.1);
}

.form-signin-heading {
	margin-bottom: 30px;
}
</style>



<div>
	<%@ include file="Header.jsp"%>
</div>


<%@taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>

<div>
	<p>&nbsp;</p>
	<p>&nbsp;</p>
	<p>&nbsp;</p>
	<p>&nbsp;</p>

</div>
<div class="container">
	<div class="row">

		<div class="col-md-2"></div>
		<div class="col-md-8">



			<sf:form class="form-signin" modelAttribute="product">

				<h2 class="form-signin-heading btn-info" style="width: 100%">Billing
					Address</h2>
				<table class="table">
					<tr>
						<td><form:label path="pname">
								<spring:message text="Customer Name" />
							</form:label></td>
						<td><form:input path="" style="width:150px;"
								class="form-control" /></td>
								<form:input type="hidden" path="pname"></form:input>
						<td><form:errors path="pname" /></td>
					</tr>

					<tr>
						<td><form:label path="pname">
								<spring:message text="Phone" />
							</form:label></td>
						<td><form:input path="" style="width:150px;"
								class="form-control" /></td>
						<td><form:errors path="pname" /></td>
					</tr>

					<tr>
						<td><form:label path="pname">
								<spring:message text="Address" />
							</form:label></td>
						<td><form:input path="" style="width:150px;"
								class="form-control" /></td>
						<td><form:errors path="pname" /></td>
					</tr>

					<tr>
						<td><form:label path="pname">
								<spring:message text="Zipcode" />
							</form:label></td>
						<td><form:input path="" style="width:150px;"
								class="form-control" /></td>
						<td><form:errors path="pname" /></td>
					</tr>


				</table>

				<div class="row">
					<div class="col-md-2">
						<input class="btn btn-info" name="_eventId_edit" type="submit"
							value="Prev" />
					</div>
					<div class="col-md-8"></div>
					<div class="col-md-2">
						<input class="btn btn-info" name="_eventId_submit" type="submit"
							value="Next" />
					</div>
				</div>
			</sf:form>



		</div>

	</div>

</div>











<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>







<%-- 

	<sf:label path="pname">Product Name:</sf:label>${product.pname}
					<br />
	<br />
	<sf:label path="pbrand">Brand:</sf:label>${product.pbrand}
					<br />
	<br />
	<sf:label path="pprice">Age :</sf:label>${product.pprice}
					<br />
	<br />
	<!-- for triggering webflow events using form submission,
					 the eventId to be triggered is given in "name" attribute as:
					-->
	<input name="_eventId_edit" type="submit" value="Prev" />
	<br />
	<input name="_eventId_submit" type="submit" value="Next" />
	<br />
</sf:form> --%>
<div>
	<%@ include file="Footer.jsp"%>
</div>