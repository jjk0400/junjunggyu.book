<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="junjunggyu.book.user.service.UserServiceImpl" %> 
<%@page import="junjunggyu.book.user.service.UserService"%>
<%@page import="junjunggyu.book.user.dao.UserDaoImpl"%>
<%@page import="junjunggyu.book.user.dao.UserDao"%>
<%@ page import="junjunggyu.book.user.domain.User" %>
<%
	UserService userService = new UserServiceImpl();
	User user = null;

	String userId = (String)session.getAttribute("userId");
	
	user = userService.getUser(userId);
	
	String userName = user.getUserName();
	
%>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>회원탈퇴</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.css" />
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.js"></script>
<script>
	function alert4() {
		swal({
			title : "탈퇴취소",
			text : "탈퇴를 취소하시겠습니까?",
			type : "warning",
			showCancelButton : true,
			cancelButtonText : "아니오",
			confirmButtonText : "네",
			closeOnConfirm : false
		}, function() {
			swal("성공", "탈퇴가 취소되었습니다.", "success");
		});
	}
</script>
<style>
div.col2 {
	float: left;
}

.right {
	text-align: right;
}

table {
	border-top: 1px solid black;
	border-collapse: collapse;
	line-height: 2;
}

td#firt {
	width: 100px;
	border-top: 1px solid black;
	border-right: 1px solid black;
}

td#snd {
	border-top: 1px solid black;
	width: 150px;
}

td#bu {
	border-top: 1px solid black;
	width: 150px;
}

td#gol {
	width: 10px;
}

td {
	border-top: 1px solid black;
	border-bottom: 1px solid black;
	height: 25px;
}

td#fon {
	font-size: 10px;
	
}

div#gon {
	height: 100px;
}

div#gon1 {
	border-top: 1px solid black;
	width: 930px;
	margin: 10px;
	height: 100px;
}

div.jumbotron {
	
}

div#bor {
	border: 2px solid black;
	width: 80px;
	height: 80px;
	margin: 30px;
}

div.one {
	background-color: gray;
	border-radius: 80px;
}

div.one1 {
	
	border-radius: 80px;
}

div#one {
	margin-left: 50px;
}

p {
	text-align: center;
}

#button {
	margin-left: 370px;
}

#loginBar {
	float: right;
	font-size: 10px;
}

#logo {
	border: solid blue 1px;
	height: 70px;
	width: 110px;
	text-align: center;
	margin: 20px;
	margin-top: 10px;
	margin-right: 30px;
	float: left;
}

#searchBar {
	text-align: center;
	margin-top: 30px;
	float: left;
}

input [type="text"] {
	display: inline;
	width: 80px;
	height: 35px;
}

#searchBar select {
	display: inline;
	width: 100px;
	height: 34.5px;
	padding: 0;
	font-size: 12px;
	position: relative;
	bottom: 0px;
}

#searchBar .btn {
	width: 60px;
	height: 35px;
	padding: 0;
	font-size: 12px;
	font-weight: bold;
	bottom: 2px;
}

#textP {
	display: inline;
	height: 35px;
	width: 350px;
}

#btn_nav {
	width: 800px;
}

#foot123 {
	margin: 10px;
	font-size: 10px;
	text-align: center;
}

#lolto {
	font-size: 50px;
	margin-bottom: 0px;
}

#comSmalInfo {
	margin-top: 0px;
}

#mainF {
	display: inline-block;
	float: left;
	margin-left: 180px;
}

#comInfo {
	display: inline-block;
	margin-left: 40px;
	text-align: left;
}

#up1{
	text-align:center;
}



</style>
</head>
<body>
<br>
<br>
<br>
	<div class="container">
		<div class="col2">
			<div id="bor" class="one">
				<p>
					<br>회원<br>탈퇴
				<p>
			</div>
			<h2>
				<div id="one" class="glyphicon glyphicon-menu-down"></div>
			</h2>
			<div id="bor" class="one1">
				<p>
					<br>탈퇴<br>완료
				<p>
			</div>
		</div>

		<div class="col2">
			<div>
				<form>
					<div id="loginBar">
						<a href="../main.jsp"><span>로그아웃&nbsp;|&nbsp;</span></a> 
						<a><span>장바구니&nbsp;|&nbsp;</span></a>
						<a href="modify.jsp"><span>정보수정&nbsp;|&nbsp;</span></a> 
						<a href="secede.jsp"><span>회원탈퇴</span></a>
					</div>
					<br>
					<div id="logo">
						<a href="userLogin.html">로고입니다.</a>
					</div>

					<div id="searchBar">
						<select class="form-control">
							<option>전체검색</option>
							<option>저자검색</option>
							<option>책제목검색</option>
							<option>출판사?</option>
						</select> <input type="text" id="textP" class="form-control"
							placeholder="검색어를 입력하세요" />
						<button type="button" class="btn btn-default">검색</button>
					</div>

					<br>
					<div class="btn-group btn-group-justified" id="btn_nav">
						<div class="btn-group">
							<a href="" type="button" class="btn btn-default" type="button" >추천도서</a>	
						</div>
					
						<div class="btn-group">
							<a href="" type="button" class="btn btn-default" type="button" >장르별도서</a>	
						</div>
						
						<div class="btn-group">
							<a href="" type="button" class="btn btn-default" type="button" >이벤트</a>	
						</div>
					
						<div class="btn-group">
							<a href="" type="button" class="btn btn-default" type="button" >고객지원</a>	
						</div>
					
					</div>
					<br>
									
						<br>
						
				
						
					<h2 id="firt" style="text-align:right">비밀번호확인 :
						<input name ="pw3" type="password" minlength="8" maxlength="10" 
						placeholder="비밀번호 확인" required>
					</h2>
					<br>
						
					<div id="button">	
									
						<input formaction="action/secedeAction.jsp" class="btn btn-default" type="submit" value="탈퇴" />			
							
						<a type="button" class="btn btn-default" href ="userLogin.html">취소</a>
										
					</div>
					
				</form>
			</div>
			
			<br>
			
			<div id="footer">
				<div id="footNab">
					<div id="foot123">
						<a><span>회사소개&nbsp;|&nbsp;</span></a> <a><span>이용약관&nbsp;|&nbsp;</span></a>
						<a><span>개인정보처리방침&nbsp;|&nbsp;</span></a> <a><span>고객센터</span></a>
					</div>
				</div>
				<div>
					<div id="mainF">
						<span id=lolto>롤토&nbsp;체스</span> <br>
						<h3 id="comSmalInfo">Lolto</h3>
					</div>
					<div id="comInfo">
						<p>
							<strong>|상호명:</strong><span>롤토체스</span>
						</p>
						<p>
							<strong>|사업자등록번호:</strong><span>000-00-0000</span>
						</p>
						<p>
							<strong>|대표자:</strong><span>전정규</span>
						</p>
						<p>
							<strong>|연락처:</strong><span>010-4143-6376</span>
						</p>
					</div>
				</div>
				<hr>
			</div>
			<!-- end footer -->
		</div>
	</div>


</body>
</html>
<%@ include file="action/msg.jsp" %>