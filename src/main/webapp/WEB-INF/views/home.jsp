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

.footer{
	width: 100%;
	height: 400px;
}

.footer-top, .footer-check{
	width: 67%;
	margin: 0 auto;
}

.f-logo{
	display: inline-block;
}


.footer-text{
	padding-left: 3.4%;
	float: left;
	width: 50%;
	margin-right: 30%;
}

.text{
	padding-bottom: 3px;
	font-size: 1.3em;
}


</style>
</head>
<body>
<div class="container">
<c:import url="./temp/header.jsp" />
	<div class="main">
	
	</div>
	<div class="footer">
		<div class="footer-top">
			<img class="f-logo" alt="logo" src="./resources/images/Untitled.jpg" style="width: 200px; height: 200px; vertical-align: middle; position: ab">
		</div>
		<div class="footer-check">
			<div class="footer-text">
				<div class="text">(04377)서울특별시 용산구 한강대로 23길 55</div>
				<div class="text">대표자 : 박민지 </div>
				<div class="text">고객센터 : 114</div>
			</div>
		</div>
		<div class="footer-sns">
			<a href="#"><img src="resources/images/facebook.jpg" style="height: 55px; width: 55px; margin-left: 15px;"></a>
			<a href="#"><img src="resources/images/instagram.jpg" style="height: 58px; width: 58px; margin-left: 15px;"></a>
			<a href="#"><img src="resources/images/twitter.png" style="height: 60px; width: 60px; margin-left: 15px;"></a>
		</div>
	</div>
</div>
</body>
</html>
