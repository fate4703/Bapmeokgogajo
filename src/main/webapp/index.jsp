<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>밥먹고가조에 오신걸 환영합니다</title>
<script src="<%= request.getContextPath() %>/resources/js/jquery-3.5.1.min.js"></script>
</head>
<body>
<script>
	$(document).ready(function(){
		location.href='home.do';
	});
</script>
</html>