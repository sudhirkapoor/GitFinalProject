<style>
body {
	background: #eee !important;
}

.wrapper {
	margin-top: 80px;
	margin-bottom: 80px;
}

.form-signin {
	max-width: 550px;
	padding: 15px 35px 45px;
	margin: 0 auto;
	background: #f4f7f8;
	
}

.form-signin-heading {
	margin-bottom: 30px;
}
}
</style>



<div>
	<%@ include file="Header.jsp"%>
</div>

<div class="">
	<p>&nbsp;</p>
	<p>&nbsp;</p>
	<p>&nbsp;</p>

	<div>

		<c:url var="addAction" value="/Admin/addProduct" />
		<div class="row">
			<div class="col-md-4 col-sm-4 col-xs-4"></div>
			<div class="col-md-4 col-sm-4 col-xs-4">

				<form:form class="form-signin" action="${addAction} "
					modelAttribute="product" commandName="product" method="post"
					enctype="multipart/form-data">
					<center><h2 class="form-signin-heading">Product Details</h2>
					<div class="form-group">
						<c:if test="${!empty product.pname}">

							<form:label path="pid">
								<spring:message text="ID" />
							</form:label>
						<form:input path="pid" readonly="true" class="form-control"
								disabled="true" />
							<form:hidden path="pid" />	
					</div>
					</c:if>

					<div class="form-group">
						<form:label path="pname">
							<spring:message text="Product Name" />
						</form:label>
						<form:input placeholder="Product Name" path="pname"
							class="form-control" />
						<form:errors style="color:red" path="pname" />


					</div>
					<div class="form-group">
						<form:label path="pbrand">
							<spring:message text="Product Brand" />
						</form:label>
						<form:input placeholder="Product Brand" path="pbrand"
							class="form-control" />
						<form:errors style="color:red" path="pbrand" />
					</div>


					<div class="form-group">

						<form:label path="pdescription">
							<spring:message text="Product Description" />
						</form:label>
						<form:input path="pdescription" placeholder="Product Description"
							class="form-control" />
						<form:errors style="color:red" path="pdescription" />
					</div>

					<div class="form-group">
						<form:label path="pprice">
							<spring:message text="Product Price" />
						</form:label>

						<form:input path="pprice" class="form-control"
							placeholder="Product Price" />
						<form:errors style="color:red" path="pprice" />
					</div>
					<div class="form-group">
						<form:label path="pcategory">
							<spring:message text="Product Category" />
						</form:label>
						<form:input path="pcategory" class="form-control"
							placeholder="Category" />
						<form:errors style="color:red" path="pcategory" />
					</div>


					<div class="form-group">
						<form:label path="image">
							<spring:message text="Choose Image" />
						</form:label>

						<form:input path="image" type="file" class="form-control" />


					</div>
					<div>
						<c:if test="${!empty product.pname}">
							<input type="submit" class="btn btn-info" value="Update" />
						</c:if>
						<c:if test="${empty product.pname}">
							<input type="submit" class="btn btn-info" value="Add" />
						</c:if>
					</div>
				</center>
				</form:form>
			</div>

			<!-- <div class="col-md-2 col-sm-2 col-xs-2"></div> -->

		</div>







		<%-- 
<form:form class="form-signin" action="${addAction}"
			modelAttribute="product" commandName="product" method="post"
			enctype="multipart/form-data">
			<h2 class="form-signin-heading">Product Details</h2>
			<table>
				<c:if test="${!empty product.pname}">
					<tr>
						<td><form:label path="pid">
								<spring:message text="ID" />
							</form:label></td>
						<td><form:input path="pid" readonly="true"
								style="width:150px;" size="8" disabled="true" /> <form:hidden
								path="pid" /></td>
					</tr>
				</c:if>
				<tr>
					<td><form:label path="pname">
							<spring:message text="Product Name" />
						</form:label></td>
					<td><form:input path="pname" style="width:150px;"
							class="form-control" /> </td>
							<td><form:errors style="color:red" path="pname" /></td>
							
				</tr>
				<tr>
					<td><form:label path="pbrand">
							<spring:message text="Product Brand" />
						</form:label></td>
					<td><form:input path="pbrand" style="width:150px;"
							class="form-control" /> </td>
							<td><form:errors style="color:red" path="pbrand" /></td>
				</tr>
				<tr>
					<td><form:label path="pdescription">
							<spring:message text="Product Description" />
						</form:label></td>
					<td><form:input path="pdescription" style="width:150px;"
							class="form-control" /> </td>
							<td><form:errors style="color:red" path="pdescription" /></td>
				</tr>

				<tr>
					<td><form:label path="pprice">
							<spring:message text="Product Price" />
						</form:label></td>
					<td><form:input path="pprice" style="width:150px;"
							class="form-control" /> </td>
							<td><form:errors style="color:red" path="pprice" /></td>
				</tr> 

				<tr>
					<td><form:label path="pcategory">
							<spring:message text="Product Category" />
						</form:label></td>
					<td><form:input path="pcategory" class="form-control col-xs-2"
							style="width:150px;" /> </td>
							<td><form:errors style="color:red" path="pcategory" /></td>
				</tr>


				<tr>
					<td><form:label path="image">
							<spring:message text="Choose Image" />
						</form:label></td>
					<td><form:input path="image" type="file"
							class="form-control col-xs-2" style="width:150px;" />
				</tr>

				<tr>
					<td colspan="2" style="align: center"><c:if
							test="${!empty product.pname}">
							<input type="submit" class="btn btn-info" value="Update" />
						</c:if> <c:if test="${empty product.pname}">
							<input type="submit" class="btn btn-info" value="Add" />
						</c:if></td>
				</tr>
			</table>
		</form:form>



 --%>







		<div class="container">
			<div class="row">
				<div class="col-md-12 col-sm-12 col-xs-12">


					<h3>Product List</h3>
					<c:if test="${!empty listProduct}">
						<table class="tg table table-striped">
							<tr style="background: #a2cad3; color: white">
								<th width="80">Product ID</th>
								<th width="120">Product Name</th>
								<th width="120">Brand</th>
								<th width="120">Description</th>
								<th width="120">Price</th>
								<th width="120">Category</th>
								<th width="60">Update</th>
								<th width="60">Delete</th>
							</tr>
							<c:forEach items="${listProduct}" var="product">
								<tr>
									<td>${product.pid}</td>
									<td>${product.pname}</td>
									<td>${product.pbrand}</td>
									<td>${product.pdescription}</td>
									<td>${product.pprice}</td>
									<td>${product.pcategory}</td>
									<td><a class="btn btn-info"
										href="<c:url value='/Admin/updateProduct/${product.pid}' />">Update</a></td>
									<td><a class="btn btn-danger"
										href="<c:url value='/Admin/deleteProduct/${product.pid}' />">Delete</a></td>
								</tr>
							</c:forEach>
						</table>
					</c:if>
				</div>
			</div>
		</div>

	</div>
</div>

<div>
	<p>&nbsp;</p>
	<p>&nbsp;</p>
	<p>&nbsp;</p>
	<p>&nbsp;</p>
</div>

<div>
	<%@ include file="Footer.jsp"%>
</div>



