<style>
/* *, *:before, *:after {
	-moz-box-sizing: border-box;
	-webkit-box-sizing: border-box;
	box-sizing: border-box;
} */
body {
	background: #eee !important;
}
/*  form {
	max-width: 500px;
	margin: 10px auto;
	padding: 10px 20px;
	background: #f4f7f8;
	border-radius: 8px;
} */
h1 {
	margin: 0 0 30px 0;
	text-align: center;
}

.wrapper {
	margin-top: 80px;
	margin-bottom: 80px;
}

.form-signin {
	background: #f4f7f8;
	max-width: 580px;
	/* padding: 15px 35px 45px;
	margin: 0 auto; */
	background-color: #fff;
	border: 1px solid rgba(0, 0, 0, 0.1);
}

.form-signin-heading {
	margin-bottom: 30px;
}

input[type="text"], input[type="password"], input[type="date"], input[type="datetime"],
	input[type="email"], input[type="number"], input[type="search"], input[type="tel"],
	input[type="time"], input[type="url"], textarea, select {
	background: rgba(255, 255, 255, 0.1);
	background-color: #e8eeef;
	color: #8a97a0;
	box-shadow: 0 1px 0 rgba(0, 0, 0, 0.03) inset;
	margin-bottom: 10px;
}
/* 
input[type="radio"], input[type="checkbox"] {
	margin: 0 4px 8px 0;
}

select {
	padding: 6px;
	height: 32px;
	border-radius: 2px;
}
 */

/* 
fieldset {
	margin-bottom: 30px;
	border: none;
}

legend {
	font-size: 1.4em;
	margin-bottom: 10px;
}

label {
	display: block;
	margin-bottom: 8px;
}

label.light {
	font-weight: 300;
	display: inline;
}

.number {
	background-color: #5fcf80;
	color: #fff;
	height: 30px;
	width: 30px;
	display: inline-block;
	font-size: 0.8em;
	margin-right: 4px;
	line-height: 30px;
	text-align: center;
	text-shadow: 0 1px 0 rgba(255, 255, 255, 0.2);
	border-radius: 100%;
}
*/
/* @media screen and (min-width: 480px) {
	form {
		max-width: 480px;
	}  */
}
</style>


<div>
	<%@ include file="Header.jsp"%>
</div>
</div>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>

<div class="container central">

	<c:url var="addAction" value="/insertDetail" />


	<div class="row">
		<div class="col-md-2"></div>
		<div class="col-md-8">


			<form:form action="${addAction }" class="form-signin"
				commandName="user" method="post">

				<h1>Sign Up</h1>
				<div class="container-fluid">
					<div class="row">

						<div class="col-md-2"></div>
						<div class="col-md-8">
							<table>
								<tr>
									<td><form:label path="name">Name:</form:label></td>
									<td><form:input class="form-control" required=""
											style="width:150px;" type="text" id="name" path="name"
											name="name"></form:input></td>
									<td>
									<td><form:errors path="name" style="color:red;" /></td>
								</tr>

								<tr>
									<td><form:label path="email">Email:</form:label></td>
									<td><form:input class="form-control col-xs-4"
											style="width:150px;" type="email" id="mail" path="email"
											name="email"></form:input></td>
									<td>
									<td><form:errors path="email"  style="color:red;" /></td>
									</td>
								</tr>


								<tr>
									<td><form:label path="password">Password:</form:label></td>
									<td><form:input type="password" id="password"
											path="password" class="form-control col-xs-4"
											style="width:150px;" name="password"></form:input></td>
									<td>
									<td><form:errors path="password" style="color:red;" /></td>
								</tr>

								<%-- <tr>
									<td><form:label path="address">Address:</form:label></td>
									<td><form:input class="form-control col-xs-4"
											style="width:150px;" type="text" id="address" path="address"
											name="address"></form:input></td>
									<td>
									<td><form:errors style="color:red;" path="address" /></td>
								</tr> --%>

								<tr>
									<td><form:label path="zipcode">Zipcode:</form:label></td>
									<td><form:input class="form-control"
											style="width:150px;" type="text" id="zipcode" path="zipcode"
											name="zipcode"></form:input></td>
									<td>
									<td><form:errors path="zipcode" /></td>
									</td>
								</tr>
<%-- 
								<tr>
									<td><form:label path="phone">Phone:</form:label></td>
									<td><form:input class="form-control col-xs-4"
											style="width:150px;" type="text" id="phone" path="phone"
											name="phone"></form:input></td>

									<td>
									<td><form:errors  path="phone" /></td>
								</tr>
 --%>

							</table>
						</div>

					</div>
					<div class="row">
					<div class="col-md-4"></div>
					<div class="col-md-4"></div>
					<div class="col-md-4"><button type="submit" class="btn btn-info">Sign Up</button></div>
					</div>

				</div>

				
			</form:form>
		</div>
		<div class="col-md-2"></div>
	</div>
</div>
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
<div></div>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<div></div>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<div></div>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<div>

	<div>
		<%@ include file="Footer.jsp"%>
	</div>