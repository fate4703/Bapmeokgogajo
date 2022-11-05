<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>비밀번호 찾기</title>
<!-- 부트 스트랩 -->
<link
	href="//cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1"
	crossorigin="anonymous">
<script
	src="//cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW"
	crossorigin="anonymous"></script>
<script
	src="//cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"
	integrity="sha384-q2kxQ16AaE6UbzuKqyBE9/u/KzioAlnx2maXQHiDX9d4/zp8Ok3f+M7DPm+Ib6IU"
	crossorigin="anonymous"></script>
<script
	src="//cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.min.js"
	integrity="sha384-pQQkAEnwaBkjpqZ8RU1fF1AKtTcHJwFl3pblpTlHXybJjHpMYo79HY3hIi4NKxyj"
	crossorigin="anonymous"></script>
<!-- jQuery -->
<script src="${ contextPath }/js/jquery-3.5.1.min.js"></script>
<!-- 폰트 -->
<script src="//kit.fontawesome.com/7293f5b137.js" crossorigin="anonymous"></script>
<style>
#loginArea {
/* 	border: 1px solid lightgray; */
/* 	width: 60%; */
	height: 800px;
	position: relative;
	margin: 0 auto;
	margin-top: 50px;
}

.inputTilte {
/* 	border: 1px solid lightgray !important; */
	display: inline-block !important;
	width: 15% !important;
	position: relative !important;
	
}

.inputForm {
/* 	border: 1px solid lightgray !important; */
	display: inline-block !important;
	width: 250px !important;
	position: relative !important;
}

.hidden {
	width: 5% !important;
}

.mb-4 {
	text-align: center !important;
}

.loginBtn {
	display: block !important;
	margin: 0 auto !important;
	background: #F42B03 !important;
	border: 0px !important;
	width: 250px !important;
	height: 50px;
}

.aForm {
	color: black;
}

 .snsBtn {
 	display: block !important;
	margin: 0 auto !important;
	border: none; 
    width: 250px;
    height: 50px;
	margin: 0 auto !important;
 } 

</style>
</head>
<body style="font-family: 'Gugi'; ">
	<jsp:include page="../common/menubar.jsp" />

	<div id="loginArea">
		<form action="${ contextPath }/findPwd.me" method="post">
			<br><br><br>
			<h1 style="text-align: center;">비밀번호 찾기 ></h1>
			<br><br>
			<div class="mb-4">
				<label class="form-label inputTilte">아이디</label> 
				<input type="text" class="form-control inputForm" id="inputEmail" name="memberId"placeholder="아이디를 입력해주세요">
				<label class="hidden"></label>
			</div>
			<div class="mb-4">
				<label class="form-label inputTilte">이메일</label>
				<input type="email" class="form-control inputForm" id="inputEmail" name="email" placeholder="이메일을 입력해주세요">
				<label class="hidden"></label>
			</div>
			<br>
			<button type="submit" class="btn btn-primary loginBtn"> 비밀번호 찾기 </button>
		</form>
	</div>
	
	<jsp:include page="../common/footer.jsp"/>
</body>
</html>