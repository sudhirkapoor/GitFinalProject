<style>
body {
	background: #eee !important;
}

.wrapper {
	margin-top: 80px;
	margin-bottom: 80px;
}

.form-signin {
	max-width: 580px;
	padding: 15px 35px 45px;
	margin: 0 auto;
	background-color: #fff;
	border: 1px solid rgba(0, 0, 0, 0.1);
	.
	form-signin-heading
	,
	.checkbox
	{
	margin-bottom
	:
	30px;
}

.checkbox {
	font-weight: normal;
}

/* 	.form-control {
	 position: relative;
	 font-size: 16px;
	 height: auto;
	 padding: 10px;
		@include box-sizing(border-box);

		&:focus {
		 z-index: 2;
		}
	}
 */
input[type="text"] {
	margin-bottom: -1px;
	border-bottom-left-radius: 0;
	border-bottom-right-radius: 0;
}

input[type="password"] {
	margin-bottom: 20px;
	border-top-left-radius: 0;
	border-top-right-radius: 0;
}
}
</style>

</style>

<div>
	<%@ include file="Header.jsp"%>
</div>

<div>
	<p>&nbsp;</p>

	<div class="container central">

		<c:url var="addAction" value="/Admin/addProduct" />



		<form:form class="form-signin" action="${addAction}" modelAttribute="product" 
			commandName="product" method="post" enctype="multipart/form-data" >
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
							class="form-control" /> <form:errors path="pname" /></td>
				</tr>
				<tr>
					<td><form:label path="pbrand">
							<spring:message text="Product Brand" />
						</form:label></td>
					<td><form:input path="pbrand" style="width:150px;"
							class="form-control" /> <form:errors path="pbrand" /></td>
				</tr>
				<tr>
					<td><form:label path="pdescription">
							<spring:message text="Product Description" />
						</form:label></td>
					<td><form:input path="pdescription" style="width:150px;"
							class="form-control" /> <form:errors path="pdescription" /></td>
				</tr>

				<tr>
					<td><form:label path="pprice">
							<spring:message text="Product Price" />
						</form:label></td>
					<td><form:input path="pprice" style="width:150px;"
							class="form-control" /> <form:errors path="pprice" /></td>
				</tr>

				<tr>
					<td><form:label path="pcategory">
							<spring:message text="Product Category" />
						</form:label></td>
					<td><form:input path="pcategory" class="form-control col-xs-2"
							style="width:150px;" /> <form:errors path="pcategory" /></td>
				</tr>
				
				
				<tr>
					<td><form:label path="image">
							<spring:message text="Choose Image" />
						</form:label></td>
					<td><form:input path="image" type="file" class="form-control col-xs-2"
							style="width:150px;" /> 
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

		<div>
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

<div>
	<p>&nbsp;</p>
	<p>&nbsp;</p>
	<p>&nbsp;</p>
	<p>&nbsp;</p>
</div>

<div>
	<%@ include file="Footer.jsp"%>
</div>



