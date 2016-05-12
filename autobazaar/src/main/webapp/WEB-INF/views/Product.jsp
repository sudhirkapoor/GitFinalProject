
<div>
	<%@ include file="Header.jsp"%>
</div>

<script>
	var app = angular.module("search", []).controller("productTable",
			function($scope) {
				$scope.products = ${listProduct};
			});
</script>
<p>&nbsp;</p>
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
							<th>ID</th>
							<th>Name</th>
							<th>Brand</th>
							<th>Description</th>
							<th>Price</th>
							<th>Category</th>
							<th>Info</th>
						</tr>
					</thead>

					<tbody>

						<tr ng-repeat="p in products | filter:searchText">

							<td>{{p.pid}}</td>
							<td>{{p.pname}}</td>
							<td>{{p.pbrand}}</td>
							<td>{{p.pdescription}}</td>
							<td>{{p.pprice}}</td>
							<td>{{p.pcategory}}</td>
							<td>
								<form action="${session.getContextPath()}/autobazaar/ProductDetail"  method="post" >
									<input type="hidden" value="{{p.pid}}" name="pid"></input> <input
										type="hidden" value="{{p.pname}}" name="pname"></input> <input
										type="hidden" value="{{p.pbrand}}" name="pbrand"></input> <input
										type="hidden" value="{{p.pdescription}}" name="pdescription"></input>
									<input type="hidden" value="{{p.pprice}}" name="pprice"></input>
									<button type="submit">
										<span class="glyphicon glyphicon-plus-sign"></span>
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
