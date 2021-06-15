<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>리뷰 나라 리뷰 작성</title>
<style>
@import url('https://fonts.googleapis.com/css2?family=Nanum+Gothic+Coding&display=swap');
@import url('https://fonts.googleapis.com/css2?family=Jua&display=swap');

#title1 {
font-size : 32px;
font-family: 'Jua', sans-serif;
text-align : left;
color : #BDFF12;
text-shadow : 1px 1px #1B6200;
padding : 0 0 0 10px;
}

#title2 {
font-family: 'Nanum Gothic Coding', monospace;
font-size : 32px;
text-align : center;
color : #5D5D5D;
}

#writebox {
font-family: 'Nanum Gothic Coding', monospace;
font-size : 20px;
text-align : center;
}

#tag {
font-family: 'Nanum Gothic Coding', monospace;
font-size : 16px;
text-align : center;
}

</style>
</head>
<%
request.setCharacterEncoding("UTF-8");
%>
<body>
<body style="background-color: #FFCBD2">
<div id = "title1">
<h4>리뷰나라</h4>
</div>
<div id = "title2">
<h4>리뷰 작성</h4>
</div>
<div id = "writebox">
<form action = "write.do" method = "post">
	 아 이 디 : <input type = "text" name = "id" style="width:150px; height:25px; font-size:15px;"/> <br> <br>
	 제 목 : <input type = "text" name = "title" style="width:1200px; height:25px; font-size:15px;"/> <br>
	<br>
	 종 류 : <input type = "text" name = "category" style="width:300px; height:25px; font-size:15px;"/> <br> <br>
	<div id ="tag"> <i> (문구, 생활용품, 여가용품, 옷, 유아용품, 음식, 이동수단, 인테리어, 장난감, 전자제품, 화장품, 기타 중 적어주세요.) </i></div><br>
	 <br>
	 내 용 : <input type = "text" name = "content" style="width:1200px; height:400px; font-size:15px;"/> <br>
	<br>
	<input type = "submit" value = "올리기" />
</form>
</div>
</html>