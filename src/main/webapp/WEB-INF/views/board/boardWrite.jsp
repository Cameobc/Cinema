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

.btn-div{
	margin-top: 20px;
	text-align: center;
}

.cancle{
	width: 100px;
	height: 50px;
	background-color: #DD4132;
	border: 0;
	font-family: GyeonggiBatang;
	font-size: 1.2em;
	font-weight: bold;
	cursor: pointer;
	color:white;
	margin-right: 10px;	
}

.write{
	width: 100px;
	height: 50px;
	background-color: white;
	border: 1px solid #666;
	font-family: GyeonggiBatang;
	font-size: 1.2em;
	font-weight: bold;
	cursor: pointer;
}
/* input file type */ 
.input-file { 
	display: inline-block; 
} 

.input-file [type="file"] { 
	position: absolute; 
	width: 1px; 
	height: 1px; 
	padding: 0; 
	margin: -1px; 
	overflow: hidden; 
	clip: rect(0, 0, 0, 0); 
	border: 0 none; 
} 

.input-file{
	display: block;
}

.input-file .file-label { 
	min-width: 53px; 
	height: 27px; 
	line-height: 24px; 
	padding: 0 10px; 
	border-radius: 2px; 
	font-size: 13px; 
	background-color: #333; 
	color: #fff; 
	text-align: center; 
} 

.file-label{
	display: inline-block;
	margin-left: 10px; 
}

.input-file .file-name { 
	width: 300px; 
	background: #f5f5f5; 
	height: 27px; 
	line-height: 26px; 
	text-indent: 5px; 
	border: 1px solid #bbb; 
} 

/* 접근성 탭 포커스 스타일 */ 
.file-focus { 
	outline: 1px dotted #d2310e; 
}

.form-type{
	margin-bottom:20px;
}

.input-text{
	width: 70%;
	height: 33px;
	padding: 10px;
}

.input-label{
	margin-right: 40px;
	font-size: 1.3em;
	font-family: GyeonggiBatang;
}

#add{
	width: 110px;
	height: 42px;
	background-color: #337ab7;
	color: white;
	border: 0;
	border-radius: 4px;
	margin-bottom: 10px;
}

</style>
</head>
<body>
<div class="container">
<c:import url="../temp/header.jsp" />
	<div class="main">
		<form id="frm" method="post" enctype="multipart/form-data">
			<div class="form-type">
				<label for="title" class="input-label">제목</label>
				<input type="text" name="title" id="title"  class="input-text check"/>
			</div>
			<div class="form-type">
				<input type="hidden" value="test" name="writer" id="writer" class="check"/>
			</div>
			<div class="textarea-div">
				<textarea name="contents" id="contents" class="check"></textarea>
			</div>
			<div>
				<input type="button" id="add" value="파일 첨부하기">
				<div id="files">
					
				</div>
			</div>
			<div class="btn-div">
				<input type="button" class="cancle" value="취소">
				<input type="button" class="write" value=글쓰기>
			</div>
		</form>
	</div>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/summer.js"></script>
<c:import url="../temp/footer.jsp" />
<script type="text/javascript">
	var count=0;
	var id=0;
	
	$('#add').click(function() {
		if(count>4){
			alert('파일 첨부는 최대 5개까지만 가능합니다.');
		}else{
			count++;
			$('#files').append('<div id="file-div'+id+'" class="input-file"><input type="text" readonly="readonly" class="file-name" title="file'+id+'"><label for="file'+id+'" class="file-label">파일 업로드</label><input type="file" class="files" name="files" id="file'+id+'"><span class="del">X</span></div>');
			id++;
		}
	});
	
	$('#files').on('click', '.del', function() {
		count--;
		var del=$(this).prev().attr('id');
		del = del.substring(4);
		console.log(del);
		$('#file-div'+del+'').remove();
	});
	
	$('#files').on('change', '.files', function() {
		var name=$(this).attr('id');
		var fname = $(this).val();
		$('input[title='+name+'').val(fname);
	});
	
	$('.cancle').click(function() {
		location.href="../";
	});
</script>
</div>
</body>
</html>