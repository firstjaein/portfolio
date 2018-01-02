<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Jaein's Custom Project</title>
<link rel="stylesheet" href="resources/css/style.css"/>
<link rel="shortcut icon" href="../favicon.ico">
<script src="resources/js/modernizr.custom.63321.js"></script>
<style>
@import url(http://fonts.googleapis.com/css?family=Ubuntu:400,700);
body {
	background: #563c55 url(resources/images/blurred.jpg) no-repeat center top;
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
			<form class="form-3" name="form" action="<%=request.getContextPath()%>/user/loginCheck" onsubmit="return checked()">
				<p class="clearfix">
					<label for="login">USERID</label> <input type="text" name="userid"
						id="uid" placeholder="ID" autofocus>
				</p>
				<p class="clearfix">
					<label for="password">PASSWORD</label> <input type="password"
						name="userpw" id="upw" placeholder="PW">
				</p>
				<p class="clearfix">
					<input type="submit" name="logIn" value="Log in">
				</p>
				<p class="clearfix" onclick="location='user/signUp'" method="POST">  
					<input type="button" style="font-weight:bold; height:34px; margin-top:1px; margin-bottom:2px; width: 100%; background-color:#38A6F0;"id="signUp" name="signUp" value="Sign Up" >
				</p>
			</form>
			
		</section>
	</div>

	<!-- 로그인 후 뒤로가기 금지-->
	<script type="text/javascript">
		window.history.forward();
		function noBack() {
			window.history.forward();
		}
	</script>
	<!-- 로그인 유효성 검사 -->
	<script type="text/javascript">
	
		function checked() {
			if (form.userid.value == "") {
				alert("아이디를 입력하세요.");
				form.userid.focus();
				return false;
			} else if (form.userpw.value == "") {
				alert("암호를 입력하세요.");
				form.userpw.focus();
				return false;
			} else
				return true;
		}
	</script>
</body>