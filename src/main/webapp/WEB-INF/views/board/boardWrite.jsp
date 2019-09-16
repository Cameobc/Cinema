<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>당신을 위한 Movie Theater 별모래 극장</title>
<c:import url="../temp/summernote.jsp" />
<link rel="shortcut icon" type="image/x-icon" href="${pageContext.request.contextPath}/resources/images/favicon.ico">	
<link rel="icon" href="${pageContext.request.contextPath}/resources/images/favicon.ico">
<c:import url="../temp/font.jsp" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/memberJoin.css">
<style type="text/css">
*{
	margin: 0;
	padding: 0;
}

.container{
	width: 100%;
	margin: 0;
	padding: 0;
}
.main{
	widows: 100%;
	height: 1000px;
}

</style>
</head>
<body>
<div class="container">
<c:import url="../temp/header.jsp" />
	<div class="main">
		<form action="">
		<div class="form-type">
			<label for="title">제목</label>
			<input type="text" id="title" name="title">
		</div>
		<div class="form-type">
			<label for="wirter">작성자</label>
			<input type="text" id="wirter" name="wirter">
		</div>
		<div class="form-type">
			<textarea id="contents" name="contents"></textarea>
		</div>
		<div class="form-type">
		</div>
		</form>
	</div>
<c:import url="../temp/footer.jsp" />
<script type="text/javascript">
	$('#contents').summernote({
		height:600,
		callback:{
			onImageUpload: function(files) {
				var formData = new FormData();
				fromData.append('file', files[0]);
			}
		}
	});
</script>
</div>
</body>
</html>