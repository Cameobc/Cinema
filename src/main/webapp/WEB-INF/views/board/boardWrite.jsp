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
		<form:form commandName="noticeVO" enctype="multipart/form-data">
			<div class="form-type">
				<label for="title">제목</label>
				<form:input path="title" id="title"/>
			</div>
			<div class="form-type">
				<label for="wirter">작성자</label>
				<form:input path="writer" id="writer"/>
			</div>
			<div class="form-type">
				<form:textarea path="contents" id="contents"/>
			</div>
			<div class="form-type">
				<input type="button" class="btn" id="add" value="Add File">
				<div id="files"></div>
			</div>
			<div class="form-type">
				<input type="button" class="write" value=글쓰기>
			</div>
		</form:form>
	</div>
<c:import url="../temp/footer.jsp" />
<script type="text/javascript">
$('#contents').summernote({
	height : 600,
	callbacks:{
		onImageUpload: function(files){
			var formData = new FormData();
			formData.append('file', files[0]);
			$.ajax({
				type:"POST",
				url:"../ajax/summerFileUpload",
				data:formData,
				enctype:"multipart/form-data",
				cache:false,
				contentType:false,
				processData:false,
				success:function(data){
					$('#contents').summernote('editor.insertImage', data);
				}
			});
		},
		//OnImageUpload End
		onMediaDelete:function(files){
			var fileName = $(files[0]).attr('src');
			$.ajax({
				type:"POST",
				url:"../ajax/summerFileDelete",
				data:{fileName:fileName},
				success:function(data){
				}
			});
		}
	}
});
</script>
</div>
</body>
</html>