<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>Sign Up Form with live validation</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/newsign.css">
<style>
body {
	background: #563c55 url(${pageContext.request.contextPath}/resources/images/blurred.jpg) no-repeat center top;
	-webkit-background-size: cover;
	-moz-background-size: cover;
	background-size: cover;
}
</style>
</head>
<body>
	<form class="signUp" method="post">
		<h2>회 원 가 입</h2>
		<p>
			<label for="id" class="floatLabel">ID</label> 
			<input id="uid"	name="userid" type="text" placeholder="아이디를 입력하세요" autofocus>
		</p>
		<p>
			<label for="username" class="floatLabel">NAME</label> 
			<input id="uname" name="username" type="text" placeholder="이름을 입력하세요" >
		</p>
		<p>
			<label for="email" class="floatLabel">EMAIL</label> 
			<input id="uemail"  name="useremail" type="text" placeholder="이메일을 입력하세요" >
		</p>
		<p>
			<label for="pw" class="floatLabel">PW</label> 
			<input id="upw" name="userpw" type="password" placeholder="비밀번호를 입력하세요"> 
		</p>
		<p>
			<input type="submit" value="새로운 계정 생성">
		</p>
	</form>
</body>
</html>