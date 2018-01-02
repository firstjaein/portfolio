<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>글 수정 화면 입니다.</title>
</head>
<section class="content">
	<div class="row">
		<div class="col-md-12">
			<div class="box box-primary">
				<div class="box-header">
					<h3 class="box-title">MODIFY BOARD</h3>
				</div>

				<form role="form" action="modifyPage" method="post">
					<input type='hidden' name='page' value="${cri.page}"> 
					<input type='hidden' name='perPageNum' value="${cri.perPageNum}">
					<input type='hidden' name='searchType' value="${cri.searchType}">
					<input type='hidden' name='keyword' value="${cri.keyword}">
					<div class="box-body">
						<div class="form-group">
							<label for="exampleInputEmail1">BNO</label> 
							<input type="text" name='bno' class="form-control" value="${boardVO.bno}"
								readonly="readonly">
						</div>
						<div class="form-group">
							<label for="exampleInputEmail1">Title</label> <input type="text"
								name='title' class="form-control" value="${boardVO.title}">
						</div>
						<div class="form-group">
							<label for="exampleInputPassword1">Content</label>
							<textarea class="form-control" name="content" rows="3">${boardVO.content}</textarea>
						</div>
						<div class="form-group">
							<label for="exampleInputEmail1">Writer</label> <input type="text"
								name="writer" class="form-control" value="${boardVO.writer}">
						</div>
					</div>
				</form>
				<div class="box-footer">
					<button type="submit" class="btn btn-primary">저장</button>
					<button type="submit" class="btn btn-warning">취소</button>
				</div>

				<script>
					$(document)
							.ready(
									function() {
										var formObj = $("form[role='form']");
										console.log(formObj);
										$(".btn-warning").on("click",function() {
								    		self.location = "/sboard/listPage?page=${cri.page}&perPageNum=${cri.perPageNum}"
							    			+ "&searchType=${cri.searchType}&keyword=${cri.keyword}";});
										$(".btn-primary").on("click",function() {
													formObj.submit();});
									});
				</script>
			</div>
		</div>
	</div>
</section>