<div>
	<%@ include file="Header.jsp"%>
</div>

<div>

	<div class="container central">
		<h2 class="add-product-heading">Product Details</h2>
		<c:url var="addAction" value="/Admin/addProduct" />



		<form:form action="${addAction}" commandName="product" method="post">
			<table>
				<c:if test="${!empty product.pname}">
					<tr>
						<td><form:label path="pid">
								<spring:message text="ID" />
							</form:label></td>
						<td><form:input path="pid" readonly="true" size="8"
								disabled="true" /> <form:hidden path="pid" /></td>
					</tr>
				</c:if>
				<tr>
					<td><form:label path="pname">
							<spring:message text="Product Name" />
						</form:label></td>
					<td><form:input path="pname" /><form:errors
                            path="pname" /></td>
				</tr>
				<tr>
					<td><form:label path="pbrand">
							<spring:message text="Product Brand" />
						</form:label></td>
					<td><form:input path="pbrand" /><form:errors
                            path="pbrand" /></td>
				</tr>
				<tr>
					<td><form:label path="pdescription">
							<spring:message text="Product Description" />
						</form:label></td>
					<td><form:input path="pdescription" /><form:errors
                            path="pdescription" /></td>
				</tr>

				<tr>
					<td><form:label path="pprice">
							<spring:message text="Product Price" />
						</form:label></td>
					<td><form:input path="pprice" /><form:errors
                            path="pprice" /></td>
				</tr>

				<tr>
					<td><form:label path="pcategory">
							<spring:message text="Product Category" />
						</form:label></td>
					<td><form:input path="pcategory" /><form:errors
                            path="pcategory" /></td>
				</tr>

				<tr>
					<td colspan="2"><c:if test="${!empty product.pname}">
							<input type="submit" value="Update" />
						</c:if> <c:if test="${empty product.pname}">
							<input type="submit" value="Add" />
						</c:if></td>
				</tr>
			</table>
		</form:form>

		<div>
			<h3>Product List</h3>
			<c:if test="${!empty listProduct}">
				<table class="tg">
					<tr>
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
							<td><a href="<c:url value='/Admin/updateProduct/${product.pid}' />">Update</a></td>
							<td><a href="<c:url value='/Admin/deleteProduct/${product.pid}' />">Delete</a></td>
						</tr>
					</c:forEach>
				</table>
			</c:if>
		</div>

	</div>
</div>


<div>
	<%@ include file="Footer.jsp"%>
</div>



