<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>

<div class="navbar navbar-default">
	<div class="container">
		<div class="navbar-header">
			<button class="navbar-toggle" type="button" data-toggle="collapse"
				data-target="#navbar-main">
				<span class="icon-bar"></span>
			</button>
			<a class="navbar-brand"><%=session.getAttribute("id")%>님 환영합니다.</a>
		</div>
		<a href="/user/logout" style="float: right; margin: 15px -140px; text-weight:;">로그아웃</a>
	</div>
</div>