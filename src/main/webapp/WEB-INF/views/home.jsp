<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<title>당신을 위한 Movie Theater</title>
<!-- 브라우저에 관계없이 파비콘을 보여주려면 두개의 링크가 모두 필요하다 -->
<link rel="shortcut icon" type="image/x-icon" href="resources/images/favicon (1).ico">	
<link rel="icon" href="resources/images/favicon (1).ico">
<style type="text/css">
@import 
url(//fonts.googleapis.com/earlyaccess/jejumyeongjo.css); 
.jejumyeongjo * { 
font-family: 'Jeju Myeongjo', serif; 
}

@font-face { 
	font-family: 'KBIZHanmaumGothic'; 
	src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_one@1.0/KBIZHanmaumGothic.woff') format('woff'); 
	font-weight: normal; 
	font-style: normal; 
}

*{
	margin: 0;
	padding: 0;
	
}

.container{
	width: 100%;
	font-family: Jeju Myeongjo;
}

.header{
	width: 100%;
	height: 100px;
	margin-top: 10px;
	vertical-align: bottom;
}

.header-top{
	height: 30px;
	width: 100%;
}

.boundary{
	color: #999999;
}

.menu-top{
	list-style: none;
	display: inline-block;
	float: right;
	margin-right: 5%;
	font-family: KBIZHanmaumGothic;
}

.menu-top li {
	display: inline-block;
	font-weight: 599;
	padding-right: 3px;
}

.menu-top li a{
	text-decoration: none;
	color: black;
}

.header-main{
	width: 100%;
	height:150px;
	background-color: white;
}

.main-movie{
	width: 100%;
	list-style: none;
	float: left;
	text-align: center;
	font-family: KBIZHanmaumGothic;
	font-size: 1.5em;
	line-height: 100px;
}

.logo{
	display: inline-block;
}

.main-movie li {
	display: inline-block;
	font-weight: 599;
	padding-right: 65px;
}

.main-movie li a{
	text-decoration: none;
	color: black;
}

</style>
</head>
<body>
<div class="container">
	<div class="header">
		<div class="header-top">
			<ul class="menu-top">
				<li><a href="#">로그인 </a></li>
				<li class="boundary"> | </li>
				<li ><a href="#">회원 가입</a> </li>
				<li><a href="#">마이 페이지</a></li>
				<li class="boundary"> | </li>
				<li><a href="#">로그 아웃</a></li>
			</ul>
		</div>
		<div class="header-main">
			<ul class="main-movie">
				<li><a href="#"><img src="resources/images/logo.png" style="width: 100px; height: 100px; vertical-align: middle;" class="logo"></a></li>
				<li><a href="#">영화</a></li>
				<li><a href="#">예매</a></li>
				<li><a href="#">스토어</a></li>
				<li><a href="#">이벤트</a></li>
			</ul>
		</div>
	</div>
	<div class="main">
	
	</div>
	<div class="footer">
	
	</div>
</div>
</body>
</html>
