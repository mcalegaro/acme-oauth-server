<html lang="en">
<meta name="viewport" content="width=device-width, initial-scale=1"></meta>
<head>
<!-- <link rel="stylesheet" href="../css/wro.css"/> -->
<script src="/uaa/webjars/jquery/jquery.min.js"></script>
<script src="/uaa/webjars/bootstrap/js/bootstrap.min.js"></script>
<link rel="stylesheet"
	href="/uaa/webjars/bootstrap/css/bootstrap.min.css" />
<link rel="stylesheet"
	href="/uaa/css/main.css" />
<link rel="stylesheet"
	href="/uaa/css/main.css" />
</head>
<body>
	<div class="container">
		<h2>Please Confirm</h2>

		<p>
			Do you authorize "${authorizationRequest.clientId}" at "${authorizationRequest.redirectUri}" to access your protected resources
			with scope ${authorizationRequest.scope?join(", ")}.
		</p>
		<form id="confirmationForm" name="confirmationForm"
			action="../oauth/authorize" method="post">
			<input name="user_oauth_approval" value="true" type="hidden" />
			<input type="hidden" id="csrf_token" name="${_csrf.parameterName}" value="${_csrf.token}"/>
			<button class="btn btn-primary" type="submit">Approve</button>
		</form>
		<form id="denyForm" name="confirmationForm"
			action="../oauth/authorize" method="post">
			<input name="user_oauth_approval" value="false" type="hidden" />
			<input type="hidden" id="csrf_token" name="${_csrf.parameterName}" value="${_csrf.token}"/>
			<button class="btn btn-primary" type="submit">Deny</button>
		</form>
	</div>
<!-- 	<script src="../js/wro.js"	type="text/javascript"></script> -->
</body>
</html>