<style>
*, *:before, *:after {
  -moz-box-sizing: border-box;
  -webkit-box-sizing: border-box;
  box-sizing: border-box;
}

body {
  font-family: 'Nunito', sans-serif;
  color: #384047;
}

form {
  max-width: 300px;
  margin: 10px auto;
  padding: 10px 20px;
  background: #f4f7f8;
  border-radius: 8px;
}

h1 {
  margin: 0 0 30px 0;
  text-align: center;
}

input[type="text"],
input[type="password"],
input[type="date"],
input[type="datetime"],
input[type="email"],
input[type="number"],
input[type="search"],
input[type="tel"],
input[type="time"],
input[type="url"],
textarea,
select {
  background: rgba(255,255,255,0.1);
  border: none;
  font-size: 16px;
  height: auto;
  margin: 0;
  outline: 0;
  padding: 15px;
  width: 100%;
  background-color: #e8eeef;
  color: #8a97a0;
  box-shadow: 0 1px 0 rgba(0,0,0,0.03) inset;
  margin-bottom: 30px;
}

input[type="radio"],
input[type="checkbox"] {
  margin: 0 4px 8px 0;
}

select {
  padding: 6px;
  height: 32px;
  border-radius: 2px;
}

button {
  padding: 19px 39px 18px 39px;
  color: #FFF;
  background-color: #4bc970;
  font-size: 18px;
  text-align: center;
  font-style: normal;
  border-radius: 5px;
  width: 100%;
  border: 1px solid #3ac162;
  border-width: 1px 1px 3px;
  box-shadow: 0 -1px 0 rgba(255,255,255,0.1) inset;
  margin-bottom: 10px;
}

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
  text-shadow: 0 1px 0 rgba(255,255,255,0.2);
  border-radius: 100%;
}

@media screen and (min-width: 480px) {

  form {
    max-width: 480px;
  }

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
	<h2 class="add-user-heading">Sign Up</h2>
	<c:url var="addAction" value="/insertDetail" />



















	<form:form action="${addAction }" commandName="user" method="post">

		<h1>Sign Up</h1>

		<fieldset>
			<legend>
				<span class="number">1</span>Your basic info
			</legend>
			<form:label path="name">Name:</form:label>
			<form:input type="text" id="name" path="name" name="name"></form:input>

			<form:label path="email">Email:</form:label>
			<form:input type="email" id="mail" path="email" name="email"></form:input>


			<form:label path="password">Password:</form:label>
			<form:input type="password" path="password" id="password" name="password"></form:input>

			<form:label path="repassword">Confirm:</form:label>
			<form:input path="repassword" type="password" id="repassword" name="repassword"></form:input>


			<form:label path="address">address:</form:label>
			<%-- <form:input type="text" id="address" name="address"></form:input> --%>
			<form:textarea path="address" id="address" name="address"></form:textarea>


			<!-- <label for="bio">Biography:</label>
			<textarea id="bio" name="user_bio"></textarea> -->

			<form:label path="state">State:</form:label>
			<form:input path="state" type="text" id="state" name="state"></form:input>
			
			<form:label path="city">City:</form:label>
			<form:input path="city" type="text" id="city" name="city"></form:input>
			
			<form:label path="mobile">Mobile:</form:label>
			<form:input path="Mobile" type="text" id="mobile" name="mobile"></form:input>
			
			<form:label path="zipcode">ZipCode:</form:label>
			<form:input path="zipcode" type="text" id="zipcode" name="zipcode"></form:input>
			

		<!-- 	<label for="job">Job Role:</label> <select id="job" name="user_job">
				<optgroup label="Web">
					<option value="frontend_developer">Front-End Developer</option>
					<option value="php_developor">PHP Developer</option>
					<option value="python_developer">Python Developer</option>
					<option value="rails_developer">Rails Developer</option>
					<option value="web_designer">Web Designer</option>
					<option value="WordPress_developer">WordPress Developer</option>
				</optgroup>
				<optgroup label="Mobile">
					<option value="Android_developer">Androild Developer</option>
					<option value="iOS_developer">iOS Developer</option>
					<option value="mobile_designer">Mobile Designer</option>
				</optgroup>
				<optgroup label="Business">
					<option value="business_owner">Business Owner</option>
					<option value="freelancer">Freelancer</option>
				</optgroup>
				<optgroup label="Other">
					<option value="secretary">Secretary</option>
					<option value="maintenance">Maintenance</option>
				</optgroup>
			</select> <label>Interests:</label> <input type="checkbox" id="development"
				value="interest_development" name="user_interest"><label
				class="light" for="development">Development</label><br> <input
				type="checkbox" id="design" value="interest_design"
				name="user_interest"><label class="light" for="design">Design</label><br>
			<input type="checkbox" id="business" value="interest_business"
				name="user_interest"><label class="light" for="business">Business</label>

		</fieldset>
 -->
 
 		<button type="submit">Sign Up</button>
	</form:form>

















<%-- 
	<form:form action="${addAction}" commandName="user">

		<div class="row">
			<div class=col-xs-6>
				<form:label path="fname">
					<spring:message text="First NAME" />
				</form:label>
			</div>
			<div class=col-xs-6>
				<form:input class="form-control" path="fname" />
			</div>
			<div class=col-xs-6>
				<form:label path="lname">
					<spring:message text="Last NAME" />
				</form:label>
			</div>
			<div class=col-xs-6>
				<form:input path="lname" />
			</div>
		</div>
		<div class="row">
			<div class=col-xs-6>
				<form:label path="userid">
					<spring:message text="Email" />
				</form:label>
			</div>
			<div class=col-xs-6>
				<form:input path="userid" />
			</div>
		</div>
		<div class="row">
			<div class=col-xs-6>
				<form:label path="password">
					<spring:message text="Password" />
				</form:label>
			</div>
			<div class=col-xs-6>
				<form:input path="password" />
			</div>
		</div>
		<div class="row">
			<div class=col-xs-6>
				<form:label type="password" path="password">
					<spring:message text="Re-Password" />
				</form:label>
			</div>
			<div class=col-xs-6>
				<form:input type="password" path="password" />
			</div>
		</div>
		<div class="row">
			<div class=col-xs-6>
				<form:label path="address">
					<spring:message text="Address" />
				</form:label>
			</div>
			<div class=col-xs-6>
				<form:input path="address" />
			</div>
		</div>
		<div class="row">
			<div class=col-xs-6>
				<form:label path="state">
					<spring:message text="State" />
				</form:label>
			</div>
			<div class=col-xs-6>
				<form:input path="state" />
			</div>
		</div>
		<div class="row">
			<div class=col-xs-6>
				<form:label path="city">
					<spring:message text="city" />
				</form:label>
			</div>
			<div class=col-xs-6>
				<form:input path="city" />
			</div>
		</div>
		<div class="row">
			<div class=col-xs-6>
				<form:label path="zipcode">
					<spring:message text="Zipcode" />
				</form:label>
			</div>
			<div class=col-xs-6>
				<form:input path="zipcode" />
			</div>
		</div>
		<div class="row">
			<div class=col-xs-6>
				<input type="submit" value="<spring:message text="Register"/>">
			</div>

		</div>

	</form:form> --%>
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