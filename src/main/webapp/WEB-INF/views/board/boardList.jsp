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
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<link href="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.css" rel="stylesheet">
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
		<div class="table-div">
			<table>
				<tr>
					<td>NO</td>
					<td>TITLE</td>
					<td>WRITER</td>
					<td>DATE</td>
					<td>HIT</td>
				</tr>
				<c:forEach items="${list}" var="dto">
					<tr>
						<td>${dto.num}</td>
						<td>${dto.title}</td>
						<td>${dto.writer}</td>
						<td>${dto.reg_date}</td>
						<td>${dto.hit}</td>
					</tr>
				</c:forEach>
			</table>
		</div>
		<div class="search-div">
			<form action="./${board}List">
				<select name="kind">
					<option value="t">글제목</option>
					<option value="w">작성자</option>
					<option value="c">글내용</option>
				</select>
				<input type="text" name="search">
				<button>검색</button>
			</form>
		</div>
		<div>
			<ul class="pagination">
				<li></li>
			
				<c:forEach begin="${page.startNum}" end="${page.lastNum}" var="i">
					<li>${i}</li>
				</c:forEach>
				
				
				<li></li>
			</ul>
		</div>
		<div class="btn-div">
			<button id="write">글쓰기</button>
		</div>
	</div>
<script type="text/javascript">
document.getElementById("write").onclick = function() {
		window.location.href="./noticeWrite";
	}
</script>	
<c:import url="../temp/footer.jsp" />
</div>
</body>
</html>