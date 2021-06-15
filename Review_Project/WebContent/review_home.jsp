<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width">  
<title>리뷰 나라</title>
</head>
<style>
@import url('https://fonts.googleapis.com/css2?family=Jua&display=swap');
@import url('https://fonts.googleapis.com/css2?family=Sunflower:wght@300&display=swap');
@import url('https://fonts.googleapis.com/css2?family=Nanum+Gothic+Coding&display=swap');

#title {
font-size : 55px;
font-family: 'Jua', sans-serif;
text-align : center;
color : #BDFF12;
text-shadow : 2px 2px #1B6200;
}

#box_1 {
font-size : 25px;
font-family: 'Sunflower', sans-serif;
height : 20px;
color : #595959;
float : right;
padding : 0 20px 0 10px;
}

#box_2 {
font-size : 15px;
font-family: 'Nanum Gothic Coding', monospace;
float : right;
color : black;
background-color : #BDBDBD;
width : 600px;
height : 400px;
margin : 0 100px 0 0;
padding : 0 0 0 20px;
}

#left-button {
	box-sizing: border-box;
		height: 25px;
		width: 28px;
		border: solid 1px;
		border-radius: 5px;
		background-color: #BDBDBD;
		font-size: 15px;
		text-align : center;
		}

#right-button {
	box-sizing: border-box;
		height: 25px;
		width: 28px;
		border: solid 1px;
		border-radius: 5px;
		background-color: #BDBDBD;
		font-size: 15px;
		text-align : center;
		}
		
 		div.item:nth-child(1) { background-color: #FFFAD2; }
        div.item:nth-child(2) { background-color: #CBCCFA; }
        div.item:nth-child(3) { background-color: #CBFAD2; }
</style>
<script src="https://code.jquery.com/jquery-3.1.0.js"></script>
<script>
$(document).ready(function () {
var width = $('[data-role="slider"]').attr('data-width');
var height = $('[data-role="slider"]').attr('data-height');
var count = $('[data-role="slider"] div.item').length;
         
$('[data-role="slider"]').css({
position: 'relative',
overflow: 'hidden',
width: width,
height: height
}).find('.container').css({
position: 'absolute',
width: count * width,
overflow: 'hidden'
}).find('.item').css({
width: width,
height: height,
float: 'left'
});
var currentPage = 0;
var changePage = function () {
$('[data-role="slider"] > .container').animate({
   left: -currentPage * width
}, 500);
};
$('#left-button').click(function () {
if (currentPage > 0) {
currentPage = currentPage - 1;
changePage();
}
});
$('#right-button').click(function () {
if (currentPage < count - 1) {
currentPage = currentPage + 1;
changePage();
}
});
});
</script>
</head>
<body style="background-color: #FFCBD2">
<div id = "title">
<h4>리뷰나라</h4>
</div>
<div id = "box_1">
<a href = "review_login.jsp"> 로그인  </a> <br>
<a href = "review_join.jsp"> 회원가입 </a>
</div>
<form action = "review_write.jsp" method="post">
<div id = "box_2">
<h2>공지사항</h2>
<h3><b>리뷰 작성 방법</b></h3>
<p>
제목은 "제품명/구매가격/구매처/제조업체/사용기간" 을 적어주세요.<br>
내용은 물건의 경우 "디자인/성능/효과"<br>
음식의 경우 "맛/식감/음식의 외형이나 음식의 효과" 를 꼭 포함하여 적어주세요.<br>
<br>
<br>
←왼쪽의 글들은 예시 작성법 입니다.
</p>
</div>
</form>
<div data-role="slider" data-width="600" data-height="400">
<div class = "container">
<div class = "item">
<h2>시원에어컨/2000000/한국전자서비스센터/한국전자/15일</h2>
<p>올해 여름이 덥다고 하길래 새로 장만했어요. 디자인은 긴 스탠드 모양이고 색깔은 흰색만 있어요. 스마트폰을 연동할 수 있어서 리모컨 대신 스마트폰 음성 인식으로 어디에서나 제어할 수 있어서 좋아요. 무풍 기능 에어컨이라 피부에 닫는 자극이 적어서 좋아요. 아기들 키우는 집에서 사용하면 좋을 거 같아요. 이 회사의 이전 모델보다 전기 효율이 3분의 2정도로 좋아요. 출시 기념으로 1달 동안 무풍 선풍기도 사은품으로 줍니다.</p>
</div>
<div class = "item">
<h2>순한토너/15000/용용마켓/자연생각/30일</h2>
<p>여드름 때문에 성분이 좋은 제품을 찾다가 어느 유튜버의 추천으로 사봤어요. 향도 없고 색도 투명해서 물 같아요. 아침 저녁으로 세안 후 솜에 묻혀서 사용하고 있는데 여드름이 줄고 진정되었어요.</p>
</div>
<div class = "item">
<h2>맛나젤리/1000/동네슈퍼/해피제과/1일</h2>
<p>사과 향 나는 젤리에요. 모양은 곰 모양입니다. 식감이 부드러워서 애기들도 잘 먹을 수 있을 것 같아요. 15개 정도 들어있어요.</p></div>
</div>
</div>
<button id="left-button">←</button>
<button id="right-button">→</button>
</body>
</html>
