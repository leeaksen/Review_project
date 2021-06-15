<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>리뷰 나라 회원가입</title>
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

#joinbox {
font-family: 'Nanum Gothic Coding', monospace;
font-size : 20px;
padding : 0 0 0 300px;
}

</style>
<script>
    window.onload = function () {
            var input_1 = document.querySelectorAll('input')[0];
            input_1.onkeydown = function (event) {
                var event = event || window.event;
                if (event.keyCode == 15 && input_1.value.length == 0) {
                    input_1.focus();
                }
            };
    };
        </script>
    <script>
    window.onload = function () {
            var input_2 = document.querySelectorAll('input')[1];
            input_2.onkeydown = function (event) {
                var event = event || window.event;
                if (event.keyCode == 14 && input_2.value.length == 0) {
                    input_2.focus();
                }
            };
        };
    </script>
</head>
<%
request.setCharacterEncoding("UTF-8");
%>
<body style="background-color: #FFCBD2">
<div id = "title1">
<h4>리뷰나라</h4>
</div>
<div id = "title2">
<h4>회원가입</h4>
</div>
<div id = "joinbox">
<form action = "join.do" method = "post">
	이   름 : <input type = "text" name = "name" style="width:300px; height:20px; font-size:15px;"/> <br>
	<br>
    주민번호 : <input type = "text" maxlength = "14" name = "number" autofocus placeholder="하이픈(-)을 넣어주세요!" required style="width:300px; height:20px; font-size:15px;"/> <br>
    <br>
    아 이 디 : <input type = "text" name = "id" autofocus placeholder="영문과 숫자를 반드시 포함하여 주세요!" required style="width:300px; height:20px; font-size:15px;"/> <br>
    <br>
	비밀번호 : <input type = "password" name = "pwd" autofocus placeholder="영문이나 숫자를 반드시 포함하여 주세요!" required style="width:300px; height:20px; font-size:15px;"/> <br>
	<br>
	전화번호 : <input type = "text" maxlength = "13" name = "phonenumber" autofocus placeholder="하이픈(-)을 넣어주세요!" required style="width:300px; height:20px; font-size:15px;"/> <br>
    <br>
	<input type = "submit" value = "회원가입" />
	</form>
	</div>
</body>
</html>