<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>리뷰 나라 로그인 성공</title>
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
font-size : 40px;
text-align : center;
color : #5D5D5D;
padding : 70px;
}


#write {
font-family: 'Black Han Sans', sans-serif;
text-align : center;
font-size : 30px;
}

#list {
font-family: 'Black Han Sans', sans-serif;
text-align : center;
font-size : 30px;
}

#search{
font-family: 'Black Han Sans', sans-serif;
text-align : center;
font-size : 30px;
}

#delete {
font-family: 'Black Han Sans', sans-serif;
text-align : center;
font-size : 30px;
}

#logout {
font-family: 'Black Han Sans', sans-serif;
text-align : center;
font-size : 30px;
}

#alllist{
font-family: 'Black Han Sans', sans-serif;
text-align : center;
font-size : 30px;
}
</style>
</head>
<body style="background-color: #FFCBD2">
<div id = "title1">
<h4>리뷰나라</h4>
</div>
<div id = "title2">
<h3><b>로그인 성공!</b></h3>
</div>
<div id = "write">
<a href = "review_write.jsp"> 리뷰 작성하러 가기 </a>
</div>
<br>
<div id = "list">
<a href = "list.do"> 리뷰 목록 보러 가기</a>
</div>
<br>
<div id = "alllist">
<a href = "alllist.do"> 전체 리뷰 목록 보러 가기 </a>
</div>
<br>
<div id = "search">
<a href = "review_search.jsp"> 리뷰 검색하러 가기 </a>
</div>
<br>
<div id = "delete">
<a href = "review_delete.jsp"> 리뷰 삭제하러 가기 </a>
</div>
<br>
<div id = "logout">
<a href = "result/logout_result.jsp"> 로그 아웃 하러 가기 </a>
</div>
</body>
</html>