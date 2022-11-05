<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.io.File"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상점 신고</title>
<link href="//fonts.googleapis.com/css2?family=Dosis:wght@700&family=Gugi&display=swap" rel="stylesheet">
<script src="//kit.fontawesome.com/7293f5b137.js" crossorigin="anonymous"></script>
<style>

	#body{
		align:center;
		font-family: 'Gugi';
	}

	#cancle {
   background-color: white;
   color: gray;
   font-weight: bold;
   border: 1px solid black;
   border-radius: 5px;
   width: 100px;
   height: 40px;
   position: relative;
   right: 100px;
   font-size :large;
}

#send {
   background-color: #F42B03;
   color: white;
   font-weight: bold;
   border: 1px solid white;
   border-radius: 5px;
   width: 100px;
   height: 40px;
   position: relative;
   left:100px;
   
   font-size :large;
}
	#file[type="file"] {
  position: absolute;
  width: 1px;
  height: 1px;
  padding: 0;
  margin: -1px;
  overflow: hidden;
  clip: rect(0, 0, 0, 0);
  border: 0;
		
	}
    
</style>
</head>
<body>
	<c:import url="../common/menubar.jsp"/>
	<br><br>
	<div id="body">
		<h1 align="center"><b>식당 신고></b></h1>
		<br><br>
		<form action="declare.do" align="center">

			 <input type="hidden" name="memberId" value="${loginUser.memberId}"> 
			 <input type="hidden" name="shopNo" value="${shopNo}"> 
			  <input type="hidden" name="shopName" value="${shopName}"> 
			<div id="reviewran"><h2><b>${shopName}</b> 에 신고내용을 써주세요</h2></div>
			<br><br>
			<textarea rows="15" cols="120" name="shopDeclareComment"></textarea><br><br>
			<div>
			</div>
			<div class="btn">
				<input type="button" id="cancle" value="취소">
				<input type="submit" id="send" value="등록">
			</div>
		</form>
			
			<script>
		$(document).ready(function(){
			$("#cancle").click(function(){
				window.history.back();
			});
		});
		</script>

	</div>
	<c:import url="../common/footer.jsp"/>

</body>
</html>