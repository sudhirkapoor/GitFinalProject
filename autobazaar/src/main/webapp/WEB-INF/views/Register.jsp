
<div>
	<%@ include file="Header.jsp"%>
</div>
</div>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>

<div class="container central">
				 <h2 class="add-user-heading">Sign Up</h2>
				 <c:url var="addAction" value="/insertDetail" />
				<form:form action="${addAction}" commandName="user">
			
		<div class="row">
			<div class=col-xs-6><form:label path="fname"><spring:message text="First NAME"/></form:label></div>
						<div class=col-xs-6><form:input class="form-control" path="fname"/></div>
						<div class=col-xs-6><form:label path="lname"><spring:message text="Last NAME"/></form:label></div>
						<div class=col-xs-6><form:input path="lname"/></div>
		</div>
		<div class="row">
			<div class=col-xs-6><form:label path="userid"><spring:message text="Email"/></form:label></div>
			<div class=col-xs-6><form:input path="userid"/></div>
		</div>
			<div class="row">
			<div class=col-xs-6><form:label path="password"><spring:message text="Password"/></form:label></div>
			<div class=col-xs-6><form:input path="password"/></div>
		</div>
			<div class="row">
			<div class=col-xs-6><form:label type="password" path="password"><spring:message text="Re-Password"/></form:label></div>
			<div class=col-xs-6><form:input type="password" path="password"/></div>
		</div>
			<div class="row">
			<div class=col-xs-6><form:label path="address"><spring:message text="Address"/></form:label></div>
			<div class=col-xs-6><form:input path="address"/></div>
		</div>
		<div class="row">
			<div class=col-xs-6><form:label path="state"><spring:message text="State"/></form:label></div>
			<div class=col-xs-6><form:input path="state"/></div>
		</div>
		<div class="row">
			<div class=col-xs-6><form:label path="city"><spring:message text="city"/></form:label></div>
			<div class=col-xs-6><form:input path="city"/></div>
		</div>
		<div class="row">
			<div class=col-xs-6><form:label path="zipcode"><spring:message text="Zipcode"/></form:label></div>
			<div class=col-xs-6><form:input path="zipcode"/></div>
		</div>
		<div class="row">
			<div class=col-xs-6><input type="submit" value="<spring:message text="Register"/>"></div>
			
		</div>
	
</form:form>
</div>




























<%-- 
<div class="wrapper">
    <form:form class="form-signin" action="/user/insertDetail" command="user">       
      <h2 class="form-signin-heading">Please login</h2>
      <form:input type="text" path="pname" class="form-control" placeholder="Name" />
      <form:input type="password" path="name" class="form-control" name="password" placeholder="Password"/>      
      <label class="checkbox">
        <form:input type="checkbox" path="name" value="remember-me" id="rememberMe" name="rememberMe"/> Remember me
      </label>
      <button class="btn btn-lg btn-primary btn-block" type="submit">Login</button>   
    </form:form>
  </div>

 --%>


<!-- 
<div class="row">
			<div class="col-md-5"></div>
			<div class="col-md-3">
				<form>
					<label style="font-size: 20px">Register</label>
					<div class="form-group">

						<label>Name</label> <input type="text" class="form-control"
							id="inputName" placeholder="Name">

					</div>
					<div class="form-group">
						<label>Choose Username</label> <input type="text"
							class="form-control" id="inputUName" placeholder="User Name">

					</div>

					<div class="form-group">
						<label> Password</label> <input type="password"
							class="form-control" id="inputPassword" placeholder="Password">

					</div>

					<div class="form-group">
						<label>Re-Password</label> <input type="password"
							class="form-control" id="inputPassword"
							placeholder="Confirm Password">

					</div>

					<div class="form-group">
						<label>Gender</label>

						<div class="dropdown">
							<button class="btn btn-default dropdown-toggle" role="menu"
								type="button" id="dropdownMenu1" data-toggle="dropdown"
								aria-haspopup="true" aria-expanded="false">
								Select Gender <span class="caret"></span>
							</button>
							<ul class="dropdown-menu" role="menu"
								aria-labelledby="dropdownMenu1">
								<li><a tabindex="-1" href="#">Male</a></li>
								<li><a tabindex="-1" href="#">Female</a></li>

							</ul>
						</div>
					</div>
					<div class="form-group">
						<label>Current Email Address</label> <input type="Email"
							class="form-control" id="inputCEmail" placeholder="Current Email">

					</div>
					<div>
						<button type="submit" class="btn btn-primary">Register</button>
					</div>
				</form>

			</div>
			<div class="col-md-4"></div>

		</div>

</div> -->
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<div>
</div>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<div>
</div>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<div>
</div>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<div>

<div>
	<%@ include file="Footer.jsp"%>
</div>