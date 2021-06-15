<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>리뷰 나라 로그인</title>
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
font-size : 35px;
text-align : center;
color : #5D5D5D;
}

#loginbox {
font-family: 'Nanum Gothic Coding', monospace;
font-size : 20px;
text-align : center;
}
</style>
</head>
<body style="background-color: #FFCBD2">
<div id = "title1">
<h4>리뷰나라</h4>
</div>
<div id = "title2">
<h4>로그인</h4>
</div>
<div id = "loginbox">
	<form action = "login.do" method = "put">
	아 이 디 : <input type = "text" name = "id" /> <br>
	<br>
	비밀번호 : <input type = "password" name = "pwd" /> <br>
	<br>
	<input type = "submit" value = "로그인" />
	</form>
	</div>
</body>
</html>