<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
       <%@ page import = "review.vo.ReviewVO" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>리뷰 나라 리뷰 삭제</title>
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

#deletebox{
font-family: 'Nanum Gothic Coding', monospace;
font-size : 20px;
text-align : center;
}
</style>
</head>
<%
request.setCharacterEncoding("UTF-8");
%>
<body style="background-color: #FFCBD2">
<div id = "title1">
<h4>리뷰나라</h4>
</div>
<div id = "title2">
<h4>리뷰 삭제</h4>
</div>
<div id = "deletebox">
	${error }
	<form action = "search.do" method = "post">
	아 이 디 : <input type = "text" name = "id"> <br>
	<input type = "hidden" name = "job" value = "delete">
	<br>
	<input type = "submit" value = "검색">
	</form>
	
	<% ReviewVO review = (ReviewVO)request.getAttribute("review");
		if (review != null) { %>
		<h3> 검색 정보 결과 </h3>
		${review.id }님 ${review.date } ${review.title } ${review.content } <p>
		
		<form action = "delete.do" method = "post"> <br>
		<input type = "hidden" name = "title" value = "${review.id }" >
		<br>
		<input type = "submit" value = "삭제">
		</form>
		
		<%} else{ %>
			${result } <p>
			
			<%} %>
</div>
</body>
</html>