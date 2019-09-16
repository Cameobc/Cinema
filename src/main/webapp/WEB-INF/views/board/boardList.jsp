<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>당신을 위한 Movie Theater 별모래 극장</title>
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
}
.main{
	widows: 100%;
	height: 1000px;
}

.btn-div{
	text-align: right;
}

#write{
	width: 100px;
	height: 50px;
	background-color: white;
	border: 1px solid #666;
	font-family: GyeonggiBatang;
	font-size: 1.2em;
	font-weight: bold;
	cursor: pointer;
}
</style>
</head>
<body>
<div class="container">
<c:import url="../temp/header.jsp" />
	<div class="main">
		<div class="btn-div">
			<button id="write">글쓰기</button>
		</div>
	</div>
<script type="text/javascript">
	document.getElementByID('write').onclick = function() {
		locaiton.href="./noticeWrite";
	}
</script>	
<c:import url="../temp/footer.jsp" />
</div>
</body>
</html>