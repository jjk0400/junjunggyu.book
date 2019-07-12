<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>정보수정</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.css" />
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.js"></script>
<script src="../res/js/alert.js"></script>

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
	margin-left: 400px;
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
</style>
</head>
<body>
<br>
<br>
<br>
<form>
	<div class="container">
		<div class="col2">
			<div id="bor" class="one">
				<p>
					<br>정보<br>수정
				<p>
			</div>
			<h2>
				<div id="one" class="glyphicon glyphicon-menu-down"></div>
			</h2>
			<div id="bor" class="one1">
				<p>
					<br>수정<br>완료
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


					<p class="right">*필수 작성</p>
					<table class="table">
						<thead>
							<tr>
								<td id="firt">*이름</td>
								<td id="snd"><input name="name" type="text" 
									maxlength="6"
								<% 	
									if(userName != null){
								%>
									value=<%=userName %>								
								<%		
									}
								%>	
									 readonly/></td>
								<td colspan="3">한글로 6글자 이내로 입력해 주세요.</td>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td id="firt">*아이디</td>
								<td id="firtt"><input name="id" type="text" 
									minlength="8"maxlength="10" 
								<% 	
									if(userId != null){
								%>
									value=<%=userId %>								
								<%		
									}
								%>	
									 readonly/></td>
								<td id="fon" colspan="2" >영문 숫자를 조합하여 8~10자 이내로 입력<br>(대소문자
									구별. 한글/특수문자 사용 불가)
								</td>
							</tr>
							<tr>
								<td id="firt">*비밀번호</td>
								<td><input name="pw" type="password" minlength="8" maxlength="10"
									placeholder="비밀번호 입력" required></td>
								<td><input name="pw2" type="password" minlength="8" maxlength="10"
									placeholder="비밀번호 입력 확인" required></td>
								<td id="fon" colspan="2">영문,숫자,특수문자를 조합하여 <br>8~10자
									이내로 입력
								</td>
							</tr>
							<tr>
								<td id="firt">*전화번호</td>
								<td colspan="3"><input name="tel" type="text" minlength="11"
									maxlength="11" placeholder="'-' 표시 없이 입력" required></td>
							</tr>
							<tr>
								<td id="firt">*성별</td>
								<td colspan="3"><input name="gender" type="radio" name="gender" value="남" required>남&nbsp;&nbsp;&nbsp;&nbsp;
									<input type="radio" name="gender" value="여">여</td>
							</tr>
						</tbody>
					</table>

					<div id="button">		
						<input class="btn btn-default" formaction="action/modifyAction.jsp" type="submit" value="수정" />
						<a href="userLogin.html"><input class="btn btn-default" type="button" value="취소"/></a>
					</div>
				</form>
			</div>
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
</form>

</body>
</html>
<%@ include file="action/msg.jsp" %>