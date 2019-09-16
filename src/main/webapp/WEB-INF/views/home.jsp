<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<spring:eval expression="@movie['kofic.api']" var="a"/>  
<!DOCTYPE html>
<html>
<head>
<title>당신을 위한 Movie Theater 별모래 극장</title>
<!-- 브라우저에 관계없이 파비콘을 보여주려면 두개의 링크가 모두 필요하다 -->
<link rel="shortcut icon" type="image/x-icon" href="${pageContext.request.contextPath}/resources/images/favicon.ico">	
<link rel="icon" href="${pageContext.request.contextPath}/resources/images/favicon.ico">
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
		<button class="check">CLICK</button>
	</div>
<c:import url="./temp/footer.jsp" />

<script type="text/javascript">
		var key ='${a}';
	$('.check').click(function() {
		$.ajax({
			url:"http://www.kobis.or.kr/kobisopenapi/webservice/rest/boxoffice/searchDailyBoxOfficeList.json",
			type:"GET",
			data:{
				key:'${a}',
				targetDt:20190906
			},success: function(data) {
				console.log(data);
			}
		});
	});
</script>
</div>
</body>
</html>
