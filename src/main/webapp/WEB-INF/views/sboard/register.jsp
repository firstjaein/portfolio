<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/cssregister.css" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<script
	src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
<meta name="viewport" content="width=device-width, initial-scale=1.0">

</head>
<body>
	<div class="form-style-6">
		<h1>새로운 글을 등록합니다.</h1>
		<form name="reg" method="post" onsubmit="return checked();">
			<div class="form-group">
				<input type="text" name="writer"
					value=<%=session.getAttribute("id")%> readonly=readonly>
			</div>
			<div class="form-group">
				<input type="text" name="title" placeholder="제목을 입력하세요." autofocus />
			</div>
			<div class="form-group">
				<textarea name="content" placeholder="내용을 입력하세요."></textarea>
			</div>
			<input type="submit" value="등록" style="font-size: x-large;" />
		</form>
	</div>
	<!--유효성 검사-->
	<script type="text/javascript">
		function checked() {

			if (reg.title.value == "") {
				alert("제목을 입력하세요.");
				reg.title.focus();
				return false;
			} else if (reg.content.value == "") {
				alert("내용을 입력하세요.");
				reg.content.focus();
				return false;
			} else
				return true;
		}
	</script>
</body>
</html>