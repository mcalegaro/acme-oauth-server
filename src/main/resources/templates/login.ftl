<!DOCTYPE html>
<html lang="en">
<meta name="viewport" content="width=device-width, initial-scale=1"></meta>
<head>
<script src="./webjars/jquery/jquery.min.js"></script>
<script src="./webjars/bootstrap/js/bootstrap.min.js"></script>
<link rel="stylesheet"
	href="./webjars/bootstrap/css/bootstrap.min.css" />
<link rel="stylesheet"
	href="./css/main.css" />
</head>
<body class="container">
	<#if RequestParameters['error']??>
		<div class="alert alert-danger">
			There was a problem logging in. Please try again.
		</div>
	</#if>
	<div>
			<p>
				<h1>
				<span class="glyphicon glyphicon-log-in"></span>
				</h1>
			</p>
			<p>
				<a href="/uaa/slogin/facebook" class="btn btn-primary btn-lg btn-block">Facebook</a>
			</p>
			<p>
				<a href="/uaa/slogin/google" class="btn btn-danger btn-lg btn-block">Google</a>
			</p>
				<form role="form" action="login" method="post">
		<!-- 			<div class="form-group"> -->
		<!-- 				<label for="username">Username:</label> <input type="text" -->
		<!-- 					class="form-control" id="username" name="username" /> -->
		<!-- 			</div> -->
		<!-- 			<div class="form-group"> -->
		<!-- 				<label for="password">Password:</label> <input type="password" -->
		<!-- 					class="form-control" id="password" name="password" /> -->
		<!-- 			</div> -->
					<input type="hidden" id="csrf_token" name="${_csrf.parameterName}"
						value="${_csrf.token}" />
		<!-- 			<button type="submit" class="btn btn-primary">Submit</button> -->
				</form>
	</div>
	<!-- 	<script src="js/wro.js" type="text/javascript"></script> -->
</body>
</html>