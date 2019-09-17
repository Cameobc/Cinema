<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>    
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
	clear: both;
	width: 65%;
	height: 1100px;
	margin: 0 auto;
	margin-top: 120px;
}

</style>
</head>
<body>
<div class="container">
<c:import url="../temp/header.jsp" />
	<div class="main">
		<form:form id="frm" commandName="noticeVO" enctype="multipart/form-data">
			<div class="form-type">
				<label for="title">제목</label>
				<form:input path="title" id="title" class="check"/>
			</div>
			<div class="form-type">
				<label for="wirter">작성자</label>
				<form:input path="writer" id="writer" class="check"/>
			</div>
			<div class="form-type">
				<form:textarea path="contents" id="contents" class="check"/>
			</div>
			<div class="form-type">
				<input type="button" class="btn" id="add" value="Add File">
				<div id="files">
					
				</div>
			</div>
			<div class="form-type">
				<input type="button" class="write" value=글쓰기>
			</div>
		</form:form>
	</div>
<c:import url="../temp/footer.jsp" />
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/summer.js"></script>
<script type="text/javascript">
	var count=0;
	
	$('#add').click(function() {
		count++;
		if(count>5){
			alert('파일 첨부는 최대 5개까지만 가능합니다.');
		}else{
			$('#files').append('<input type="file" class="if"><span class="del">X</span>');
		}
	});
</script>
</div>
</body>
</html>