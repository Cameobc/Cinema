<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<title>당신을 위한 Movie Theater</title>
<!-- 브라우저에 관계없이 파비콘을 보여주려면 두개의 링크가 모두 필요하다 -->
<link rel="shortcut icon" type="image/x-icon" href="resources/images/favicon (1).ico">	
<link rel="icon" href="resources/images/favicon (1).ico">
<c:import url="./temp/font.jsp" />
<style type="text/css">
*{
	margin: 0;
	padding: 0;
	
}

.container{
	width: 100%;
	font-family: Jeju Myeongjo;
}
.main{
	widows: 100%;
	height: 1000px;
}




</style>
</head>
<body>
<div class="container">
<c:import url="./temp/header.jsp" />
	<div class="main">
	
	</div>
<c:import url="./temp/footer.jsp" />
</div>
</body>
</html>
