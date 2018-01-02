<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Jaein's Custom Project</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css" />
<script src="${pageContext.request.contextPath}/resources/js/modernizr.custom.63321.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

<style>
@import url(http://fonts.googleapis.com/css?family=Ubuntu:400,700);

body {
	background: #563c55 url(${pageContext.request.contextPath}/resources/images/blurred.jpg) no-repeat center top;
	-webkit-background-size: cover;
	-moz-background-size: cover;
	background-size: cover;
}

.container>header h1, .container>header h2 {
	color: #fff;
	text-shadow: 0 1px 1px rgba(0, 0, 0, 0.7);
}
</style>
</head>
<body>

	<div class="container">
		<header>
		<h1>
			Jaein's <strong>Custom Login Form</strong> Styling
		</h1>
		<h2>No sweat, No sweet!</h2>

		<div class="support-note">
			<span class="note-ie">Sorry, only modern browsers.</span>
		</div>
		</header>

		<section class="main">
		<form class="form-3">
			<p class="clearfix">
				<label for="login">USERID</label> <input type="text" name="userid"
					id="userid" placeholder="ID">
			</p>
			<p class="clearfix">
				<label for="password">PASSWORD</label> <input type="password"
					name="userpw" id="userpw" placeholder="PW">
			</p>
			<p class="clearfix">
				<input type="checkbox" name="remember" id="remember"> <label
					for="remember">Remember me</label>
			</p>
			<p class="clearfix">
				<input type="submit" name="logIn" value="Log in">
			</p>
			<p class="clearfix" onclick="location='user/signUp'" method="GET">
				<input type="button" id="signUp" name="signUp" value="Sign Up">
			</p>
		</form>
		</section>
	</div>
</body>
