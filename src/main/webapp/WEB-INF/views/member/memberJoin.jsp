<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>당신을 위한 Movie Theater 별모래 극장</title>
<!-- 브라우저에 관계없이 파비콘을 보여주려면 두개의 링크가 모두 필요하다 -->
<link rel="shortcut icon" type="image/x-icon" href="${pageContext.request.contextPath}/resources/images/favicon.ico">	
<link rel="icon" href="${pageContext.request.contextPath}/resources/images/favicon.ico">
<c:import url="../temp/font.jsp" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/memberJoin.css">
</head>
<body>
<div class="container">
<c:import url="../temp/header.jsp" />
	<div class="main">
	<form:form id="memberFrm" modelAttribute="MemberVO"	enctype="multipart/form-data">
		<div class="member_thumbnail">
			<img id="thumbnail" src="${pageContext.request.contextPath}/resources/images/profile.png" width="100" height="100">
			<span class="mask"></span>
			<input type="file" id="photo" name="photo" accept="image/*">
		</div>	
		<div class="mask-result">프로필 이미지</div>
		<div class="member-form">
			<span class="label-css">아이디</span>
			<form:input path="id" cssClass="member-input" id="id"/>
			<div id="id-result"></div>
		</div>
		<div class="member-form">
			<span class="label-css">비밀번호</span>
			<form:input path="pw" cssClass="member-input" id="pw"/>
		</div>
		<div class="member-form">
			<span class="label-css">비밀번호 확인</span>
			<form:input path="pw2" cssClass="member-input" id="pw2"/>
			<div id="pw-result"></div>
		</div>
		<div class="member-form">
			<span class="label-css">성함</span>
			<form:input path="name" cssClass="member-input" id="name"/>
			<div id="name-result"></div>
		</div>
		<div class="member-form">
			<span class="label-css">별명</span>
			<form:input path="nickname" cssClass="member-input" id="nickname"/>
			<div id="nickname-result"></div>
		</div>
		<div class="member-form">
			<span class="label-css">핸드폰</span>
			<form:input path="phone" cssClass="member-input" id="phone"/>
			<div id="phone-result"></div>
		</div>
		<div class="member-form">
			<span class="label-css">이메일</span>
			<form:input path="email" cssClass="member-input" id="email"/>
			<div id="email-result"></div>
		</div>
		<div class="member-form">
			<span class="label-css">나이</span>
			<form:input path="age" cssClass="member-input" id="age"/>
			<div id="age-result"></div>
		</div>
		<div class="member-form">
			<span class="label-css">성별</span>
			<div class="member-input" id="ex">
				<div class="radio-div">
					<form:radiobutton path="gender" id="f" value="f"/>
					<label class="radio-box" for="f"><span>여성</span></label>
				</div>	
				<div class="radio-div">	
					<form:radiobutton path="gender" id="m" value="m"/>
					<label class="radio-box" for="m"><span>남성</span></label>
				</div>	
			</div>
		</div>
		<div class="btn-div">
			<input type="button" value="회원가입" id="btn">
		</div>
	</form:form>
	</div>
<script type="text/javascript">
	$('.mask').click(function() {
		$('#photo').click();
	});
	
	//JavaScript 로 작성한 업로드 파일 미리보기
	document.getElementById('photo').onchange = function() {
		//files는 photo에 업로드 된 파일들의 모음.
		//this란 photo를 가리킴.
		if(this.files && this.files[0]){
		
			//FileReader 객체를 생성함. FileReader는 비동기적인 방식으로 파일을 읽음
			var reader = new FileReader();
			//파일의 내용을 읽어 dataURL 형식의 문자열로 저장함.
			//읽어내기 전에는 null이, 로드 되기 전 읽어내면 공백이, 로드 후 읽어내면 업로드 된 파일의 주소가 뜬다.
			reader.readAsDataURL(this.files[0]);
			//result에는 읽어낸 파일의 주소가 들어감. 이를 src에 넣어 파일을 미리볼 수 있도록 만들어줌
			reader.onload = function() {
				document.getElementById("thumbnail").src=reader.result;
			}
		}
	}
</script>	
<c:import url="../temp/footer.jsp" />	
</div>
</body>
</html>