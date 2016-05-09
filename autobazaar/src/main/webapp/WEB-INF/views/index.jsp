<div>

	<%@ include file="Header.jsp"%>
</div>
<p>&nbsp;</p>
<div class="container">
	<div class="row">
		<div class="col-md-12">
			<div id="imageslider" class="carousel slide" data-ride="carousel">

				<ol class="carousel-indicators">
					<li data-target="#imageslider" data-slide-to="0" class="active"></li>
					<li data-target="#imageslider" data-slide-to="1"></li>
					<li data-target="#imageslider" data-slide-to="2"></li>
					<li data-target="#imageslider" data-slide-to="3"></li>
					<li data-target="#imageslider" data-slide-to="4"></li>
					<li data-target="#imageslider" data-slide-to="6"></li>
				</ol>
				<center>
					<div class="carousel-inner">

						<div class="item active">
							<img class="img-rounded"
								src="<c:url value="${imgs }/Banner/banner1.jpg"/>" />
						</div>
						<div class="item">
							<img class="img-rounded"
								src="<c:url value="${imgs }/Banner/banner2.jpg"/>" />
						</div>
						<div class="item">
							<img class="img-rounded"
								src="<c:url value="${imgs }/Banner/banner3.jpg"/>" />
						</div>

						<div class="item">
							<img class="img-rounded"
								src="<c:url value="${imgs }/Banner/banner4.jpg"/>" />
						</div>

						<div class="item">
							<img class="img-rounded"
								src="<c:url value="${imgs }/Banner/banner5.jpg"/>" />
						</div>

						<div class="item">
							<img class="img-rounded"
								src="<c:url value="${imgs }/Banner/banner6.jpg"/>" />
						</div>
					</div>
				</center>

				<a class="carousel-control left" href="#imageslider"
					data-slide="prev"> <span
					class="glyphicon glyphicon-chevron-left"></span>
				</a> <a class="carousel-control right" href="#imageslider"
					data-slide="next"> <span
					class="glyphicon glyphicon-chevron-right"></span>
				</a>
			</div>
		</div>
	</div>

<p>
&nbsp;
</p>
<p>
&nbsp;
</p>

	<div class="row">
		<div class="container marketing">

			<!-- Three columns of text below the carousel -->
			<div class="row">
				<div class="col-lg-4">
					<img class="img-round"
						src="<c:url value="${imgs }/ProductImages/Carcare.jpg"/>"
						alt="" width="140" height="140">
					<h3>Body Care</h3>
					<p>Car wax, dash board dressers and more</p>
					<p>
						<a class="btn btn-primary" href="product/Car Care" role="button">View
							More &raquo;</a>
					</p>
				</div>
				<!-- /.col-lg-4 -->
				<div class="col-lg-4">
					<img class="img-round"
						src="<c:url value="${imgs }/ProductImages/tyre.jpg"/>"
						alt="" width="140" height="140">
					<h3>Tyres and Rim</h3>
					<p>Tyre and Rims for all cars</p>
					<p>
						<a class="btn btn-primary" href="product/TyreRim" role="button">View
						More &raquo;</a>
					</p>
				</div>
				<!-- /.col-lg-4 -->
				<div class="col-lg-4">
					<img class="img-round"
						src="<c:url value="${imgs }/ProductImages/speaker1.jpg"/>"
						alt="" width="140" height="140">
					<h3>Speakers and Music system</h3>
					<p>High quality system and speakers</p>
					<p>
						<a class="btn btn-primary" href="product/Speakersystem" role="button">View
							More &raquo;</a>
					</p>
				</div>
				<!-- /.col-lg-4 -->
			</div>
			<!-- /.row -->


		</div>
	</div>
	
	<div style="width:100%">

	<%@ include file="Footer.jsp"%>
</div>