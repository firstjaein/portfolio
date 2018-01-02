<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Untitled</title>
</head>
<body>
	<%
		session.invalidate();
	%>
	<!-- 로그아웃 완료 후 로그인페이지로 이동 -->
	<script type="text/javascript">
		self.location = "/"
	</script>
</body>
</html>