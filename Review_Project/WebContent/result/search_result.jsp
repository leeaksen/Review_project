<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <%@ page import = "review.vo.ReviewVO" %>
    <%@ page import = "java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>리뷰 나라 리뷰 검색</title>
<style>
@import url('https://fonts.googleapis.com/css2?family=Nanum+Gothic+Coding&display=swap');
@import url('https://fonts.googleapis.com/css2?family=Jua&display=swap');
@import url('https://fonts.googleapis.com/css2?family=Black+Han+Sans&display=swap');

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
padding : 20px;
}

#home {
font-family: 'Black Han Sans', sans-serif;
text-align : center;
font-size : 30px;
padding : 20px;
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
	<div id = "title2">
	<%
		String result = (String) request.getAttribute("result");
		if ( result != null ) {
			 out.print(result);
		} else { 

	%>
				${review.id }님 ${review.date } ${review.title } ${review.content }
	<% } %>
	</div>
	<h3><b>검색 결과입니다!</b></h3>
	<br>
	</div>
	<div id = "home">
<a href = "review_home.jsp"> 홈으로 가기 </a>
</div>
	
</body>
</html>