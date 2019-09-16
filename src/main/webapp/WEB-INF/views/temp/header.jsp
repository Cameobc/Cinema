<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/header.css">
</head>
<body>
	<div class="header">
		<div class="header-top">
			<ul class="menu-top">
			<c:choose>
				<c:when test="${not empty login }">		
					<li><a href="#">마이 페이지</a></li>
					<li class="boundary"> | </li>
					<li><a href="#">로그 아웃</a></li>
				</c:when>	
				<c:otherwise>
					<li><a href="#">로그인 </a></li>
					<li class="boundary"> | </li>
					<li ><a href="${pageContext.request.contextPath}/member/memberTerm">회원 가입</a> </li>
				</c:otherwise>
			</c:choose>
			</ul>
		</div>
		<div class="header-main">
			<ul class="main-movie">
				<li><a href="${pageContext.request.contextPath}"><img src="resources/images/black_logo.png" style="width: 100px; height: 100px; vertical-align: middle; margin-top: 20px;" class="logo"></a></li>
				<li><a href="${pageContext.request.contextPath}/notice/noticeList">공지사항</a></li>
				<li><a href="#">영화</a></li>
				<li><a href="#">예매</a></li>
				<li><a href="#">스토어</a></li>
				<li><a href="#">이벤트</a></li>
			</ul>
		</div>
	</div>
</body>
</html>