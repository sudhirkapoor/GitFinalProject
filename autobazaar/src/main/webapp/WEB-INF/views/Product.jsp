
<div>
	<%@ include file="Header.jsp"%>
</div>
<style>
 td{
vertical-align: center;
 align:center;
}
</style>
<script>
	var app = angular.module("search", []).controller("productTable",
			function($scope) {
				$scope.products = ${listProduct};
			}); 	
</script>
<p>&nbsp;</p>
<body>
<div ng-app="search">
	<div class="container" ng-controller="productTable">

		<div class="row">
			<div class="col-md-8"></div>

			<div class="col-md-4 input-group">

				<label>Search your product</label> <input type="search"
					ng-model="searchText" class="form-control" id="inputSearch"
					placeholder="Search Here" />
				<!-- <input type="search" ng-model="searchText.city" class="form-control" id="inputSearch" placeholder="Search Here"/> -->

			</div>
		</div>
		<p>&nbsp; &nbsp;</p>
		<div class="row">

			<div class="col-md-2"></div>

			<div class="col-md-8">

				<table class="table table-striped">
					<thead>
						<tr>
							<th></th>
							<th>Name</th>
							<th>Brand</th>
							<th>Description</th>
							<th>Price</th>
							<th>Category</th>
							<th>Info</th>
						</tr>
					</thead>

					<tbody>

						<tr ng-repeat="p in products | filter:searchText" class="table-responsive">
					
						

						<%-- 	<td class="pu-image fk-product-thumb">
							
					
						<form action="${session.getContextPath()}/autobazaar/ProductDetail"  method="post" >
									<input type="hidden" value="{{p.pid}}" name="pid"></input> <input
										type="hidden" value="{{p.pname}}" name="pname"></input> <input
										type="hidden" value="{{p.pbrand}}" name="pbrand"></input> <input
										type="hidden" value="{{p.pdescription}}" name="pdescription"></input>
									<input type="hidden" value="{{p.pprice}}" name="pprice"></input>
									<a href="">
							<!-- <img style="width: 250px; height: 250px" border="5"
					src="resources/images/{{p.pid}}.jpg" alt=""
					class="image-responsive" /> -->
								<button type="submit">
										<img style="width: 250px; height: 250px" border="5"
					src="resources/images/{{p.pid}}.jpg" alt=""
					class="image-responsive" /></span>
									</button>
								</form>
					</td>--%>
					<td align="right"><img style="width: 150px; height: 150px" border="5"
					src="resources/images/{{p.pid}}.jpg" alt=""
					class="image-responsive" /></td>
							<td>{{p.pname}}</td>
							<td>{{p.pbrand}}</td>
							<td>{{p.pdescription}}</td>
							<td>{{p.pprice}}</td>
							<td>{{p.pcategory}}</td>
							
						 	 <td align="right">
								<form action="${session.getContextPath()}/autobazaar/ProductDetail"  method="post" >
									<input type="hidden" value="{{p.pid}}" name="pid"></input> <input
										type="hidden" value="{{p.pname}}" name="pname"></input> <input
										type="hidden" value="{{p.pbrand}}" name="pbrand"></input> <input
										type="hidden" value="{{p.pdescription}}" name="pdescription"></input>
									<input type="hidden" value="{{p.pprice}}" name="pprice"></input>
									<button class="btn btn-info" type="submit">More Info
										<!-- <span class="glyphicon glyphicon-eye-open"></span> -->
									</button> 
								</form>
							</td>


						</tr>

					</tbody>

				</table>

			</div>
		</div>
	</div>

</div>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>

<div>
	<%@ include file="Footer.jsp"%>
</div>
</body>