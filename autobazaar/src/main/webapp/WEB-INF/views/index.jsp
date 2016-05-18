<div>

	<%@ include file="Header.jsp"%>
</div>
<link href='https://fonts.googleapis.com/css?family=Open+Sans:400,700'
	rel='stylesheet' type='text/css' />
<link href='https://fonts.googleapis.com/css?family=Cuprum'
	rel='stylesheet' type='text/css' />
<link href='https://fonts.googleapis.com/css?family=Rokkitt'
	rel='stylesheet' type='text/css' />

<
<script type="text/javascript">
	$('body').scrollspy({
		target : ".carousel"
	})

	$("#abt").on('click', function(event) {

		/*  // Prevent default anchor click behavior
		 event.preventDefault(); */

		// Store hash (#)
		var hash = this.hash;

		// Using jQuery's animate() method to add smooth page scroll
		// The optional number (800) specifies the number of milliseconds it takes to scroll to the specified area (the speed of the animation)
		$('html, body').animate({
			scrollTop : $(hash).offset().top
		}, 1000, function() {

			// Add hash (#) to URL when done scrolling (default click behavior)
			window.location.hash = hash;
		});
	});
</script>
<p>&nbsp;</p>
<div class="container-fluid">
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
								style="height: 700px; background-size: cover;"
								src="<c:url value="${imgs }/Banner/b1.jpg"/>" />
						</div>
						<div class="item">
							<img class="img-rounded"
								style="height: 700px; background-size: cover;"
								src="<c:url value="${imgs }/Banner/banner2.jpg"/>" />
						</div>
						<div class="item">
							<img class="img-rounded"
								style="height: 700px; background-size: cover;"
								src="<c:url value="${imgs }/Banner/banner3.jpg"/>" />
						</div>

						<div class="item">
							<img class="img-rounded"
								style="height: 700px; background-size: cover;"
								src="<c:url value="${imgs }/Banner/banner4.jpg"/>" />
						</div>

						<div class="item">
							<img class="img-rounded"
								style="height: 700px; background-size: cover;"
								src="<c:url value="${imgs }/Banner/banner5.jpg"/>" />
						</div>

						<div class="item">
							<img class="img-rounded"
								style="height: 700px; background-size: cover;"
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

	<p>&nbsp;</p>
	<p>&nbsp;</p>

	<div class="row">
		<div class="container marketing">

			<!-- Three columns of text below the carousel -->
			<div class="row">
				<div class="col-lg-4">
					<img class="img-round"
						src="<c:url value="${imgs }/ProductImages/Carcare.jpg"/>" alt=""
						width="140" height="140">
					<h3>Body Care</h3>
					<p>Car wax, dash board dressers and more</p>
					<p>
						<a class="btn btn-primary" href="product/Carcare" role="button">View
							More &raquo;</a>
					</p>
				</div>
				<!-- /.col-lg-4 -->
				<div class="col-lg-4">
					<img class="img-round"
						src="<c:url value="${imgs }/ProductImages/tyre.jpg"/>" alt=""
						width="140" height="140">
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
						src="<c:url value="${imgs }/ProductImages/speaker1.jpg"/>" alt=""
						width="140" height="140">
					<h3>Speakers and Music system</h3>
					<p>High quality system and speakers</p>
					<p>
						<a class="btn btn-primary" href="product/Speakersystem"
							role="button">View More &raquo;</a>
					</p>
				</div>
				<!-- /.col-lg-4 -->
			</div>
			<!-- /.row -->


		</div>
	</div>
	


</div>

<!-- style="width: 100%; height: 270px; background:#E8E1E1" -->
<div class="Jumbotron" id="section1" >
		

			<!-- <div class="panel panel-default">
			<div class="panel-heading btn-primary">
				<h4>About Us</h4>
			</div>
			<div class="panel-body"> -->
			<h1>About Us</h1>
			<p
				style="font-size: 17px; font-family: Times New Roman, Georgia, Serif">AutoBazaar.com
				is a one stop shop for all car needs. We intend to make vehicle
				ownership as hassle free as possible. AutoBazaar.com aims to be the
				only website a vehicle owner ever needs to visit. This is a platform
				which covers very vertical of vehicle ownership. The website allows
				its users to buy all types of auto accessories, spare parts at
				wholesale rates. The user can also get their car serviced, repaired,
				customized and sold all on the same platform. We intend to make car
				ownership as hassle free as possible. AutoBazaar.com became live in
				9 May 2016, with a soft (beta launch) for three months while the
				development team took care of all possible bugs and performance
				issues. The website will be officially launched in August with full
				operations starting from September 2016. Ever since it's soft
				launch, AutoBazaar.com has managed to gain a lot of traction from
				international auto product manufacturers. A few Chinese companies
				approached us, asking us to exclusively introduce their products
				into India. At this stage we even managed to gain the attention of
				the e-retail giant Alibaba.com where one of their business
				development heads inquired us about our operations and procurement
				options. Since inception, AutoBazaar.com has always taken pride in
				dealing with only 100% genuine parts procured directly from the
				manufacturers. Since then, it has been our policy to procure any and
				all parts that are being manufactured in India directly from the
				manufacturer</p>
</div>


<!-- <section>
<a id="notification"></a>
<div class="bclear"></div>
<div class="footerHolder">
<div style="width:73%; margin:0 auto;">

 <div style="backgroung:lightgray" class="footer1_right rfloat">
                	<div class="subscribe">
                    <label>Subscribe now</label>
                    <div class="seacrhHolder_new">
                    	<form name="form12" method="post" action="">
                        	<input type="email" name="email" id="email" value="" placeholder="Enter Email-ID" class="seacrhInput lfloat" />
                            <input class="seacrhsubmit rfloat" onclick="check();" />
							<input type="hidden" name="process" id="process" value="process" /><br />
							                        </form>
                    </div>
                    </div>
                              <div class="bclear"></div>
                    <div class="customerSay">
                    	<div class="customerSayheading">What Our Customer say</div>
						
                        <div class="customerSaycontent">
                        	Great delivery from Autokartz.com, got the product delivered within 2 days of ordering.....<strong>Raj</strong> 
                        </div>
                    </div>
                
                 
                    <div class="facelities">
                    	<div class="headingHolder">
                        	<div class="imagesx lfloat">
								<img src="images/securePayment.png" alt="">                            
                            </div>
                            <div class="headingx">
                            Secure Payment
                            </div>
                        </div>
                        <div class="content">
                        Use our hassle free Secure payment method. 100% safe transation.
                        </div>
                    </div>
                		  <div class="payment-secure">
              <img src="images/payu.png" width="175" />
            </div>
                    </div>
                    
                middle right start
      </div>
      footer2 start
      	
            footer2 end
         </div>
		 <div class="clear"></div>
		 <div style="width:72%; margin:0 auto;">
 
        <div class="facelities" style="width:100%;">
        <div class="headingHolder" style="width:100%;">
        <div class="imagesx lfloat" style="vertical-align:bottom; padding-right:5px; padding-top:5px;">
            <img src="images/star_PNG1587.png" alt="">                         
        </div>
        <div class="headingx" style="color:#900; font-size:10px;">
        Free delivery is for Delhi only, for everywhere else the delivery charges apply.
        </div>
        </div>
        
        </div>
        <div class="facelities" style="width:100%;">
        <div class="headingHolder" style="width:100%;">
        <div class="imagesx lfloat" style="vertical-align:bottom; padding-right:5px; padding-top:5px;">
            <img src="images/star_PNG1587.png" alt=""> <img src="images/star_PNG1587.png" alt="">                           
        </div>
        <div class="headingx" style="color:#900; font-size:10px;">
        For free installation please bring the vehicle to our service center.
        </div>
        </div>
        
        </div>
          </div>
         </div>
   

</section>
 -->
<div style="width: 100%">

	<%@ include file="Footer.jsp"%>
</div>