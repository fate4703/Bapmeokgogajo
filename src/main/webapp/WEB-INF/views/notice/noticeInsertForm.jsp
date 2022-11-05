﻿<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="preconnect" href="//fonts.gstatic.com">
<link href="//fonts.googleapis.com/css2?family=Dosis:wght@700&family=Gugi&display=swap" rel="stylesheet">
<title>밥먹고가조 공지사항 등록</title>
<script src="//code.jquery.com/jquery-3.3.1.min.js"></script>
<style>
  
  	/*사이브 메뉴바 높이*/
	#sideBar{ margin-top:  -650px; text-align: center; color: white;
       width: 200px;  height: 300px; background: white;}
    
    /*테이블관련*/   
	table{ width: 500px; font-family: 'Gugi'; }
	#noticeTable {text-align: left;  margin: auto; width: 500px;  margin-top: 45px; }
	#noticeTable th{border-bottom: 3px solid #1D3557;}
	#noticeTable td{border-bottom: 1px solid #1D3557;}
	 #content_text {display: block; margin-right: auto; width: 500px;
		height: 250px; resize: none; outline: none; border: none;  font-family: 'Gugi'; } 
	

	#titleInput {
		outline: none;
		width: 87%;
		border: 0px solid lightgray;
	}
	
	/*글쓰기 버튼*/
	.btn1{ width: 100px; height: 30px; border: none; border-radius: 50px;  background: #F42B03; color:white; margin-left: 310px; margin-top: 40px;} 
	.btn2{ width: 100px; height: 30px; border: none; border-radius: 50px;  background: #F42B03; color:white; margin-left: 200px; margin-top: 40px;}
	/*푸터 높이 조절*/
	footer{margin-top: 300px;}
</style>
</head>
<body>
	<c:import url="../common/menubar.jsp"/>
	<h1 align="center" style="margin-top: 110px; font-family: 'Gugi';">공지사항 등록 ></h1>
	<form action="nInsert.no" method="post" encType="multipart/form-data"> 
			<table id="noticeTable">
				<th></th><th></th><th></th>
				<tr>
					<th>&nbsp&nbsp제목&nbsp&nbsp&nbsp&nbsp
					<input type="text" id="titleInput" name="bTitle"></th>
					<th></th>
					<th></th>
				</tr>
				<tr>
					<div id="fileArea">
					<th><input type="file" id="thumbnailImg1"  name="uploadFile" onchange="LoadImg(this,1)" style="border: none;"></th>
					</div>
					<br>
					    <tr> 
							 <th colspan= "3">
								<div id="titleImgArea" style="width: 100%; height: 100%;">
									<img id="titleImg" width="100%" height="100%" >
								</div>
							</th>
						</tr> 
				</tr>
				<tr>  
					<th>
						<textarea id="content_text" name="bContents" placeholder="내용을 입력해주세요." style="font-family: 'Gugi; width: 100%;"></textarea>
					</th>
				</tr>
				<tr style="border: none;">
					<td colspan="2" align="center" style="border: none;">
					 <button type="submit" class="btn1"  style="position: absolute;">작성완료</button>
					 <button type="button" class="btn2" onclick="location.href= 'nList.no'">목록으로</button>
					</td style="border: none;"> 
				</tr style="border: none;">
			</table>
			
			<!-- 작성자 보내기 위함 -->
			<input type="hidden" name="mId" value='${loginUser.memberId}'>

	</form> 	  
   
    <c:import url="../common/footer.jsp"/>
	<script type="text/javascript" >
	 	// 내용 작성 부분의 공간을 클릭할 때 파일 첨부 창이 뜨도록 설정하는 함수
				$(function(){
						$("#fileArea").hide(); 
								
						$("#titleImgArea").click(function(){
							$("#thumbnailImg1").click();
						});
					});
						
				// 각각의 영역에 파일을 첨부 했을 경우 미리 보기가 가능하도록 하는 함수
				function LoadImg(value, num){
					if(value.files && value.files[0]){
						var reader = new FileReader();
								
						reader.onload = function(e){								
							switch(num){
							case 1: 
								$("#titleImg").attr("src", e.target.result);
								break;
							}
						}
								
						reader.readAsDataURL(value.files[0]);
					}
				}
	
	</script>  
</body>
</html>