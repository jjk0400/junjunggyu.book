<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="junjunggyu.book.support.domain.Notice"%>
<%@page import="java.util.List"%>
<%@page import="junjunggyu.book.support.service.NoticeServiceImpl"%>
<%@page import="junjunggyu.book.support.service.NoticeService"%>
<%
	NoticeService boardService = new NoticeServiceImpl();
	List<Notice> notices = null;
	
	notices = boardService.getNotices();
	pageContext.setAttribute("notices", notices);
%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.css" />

<script
	src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.js"></script>

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>

<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

<script src="http://code.jquery.com/jquery-3.1.1.min.js"></script>
<style>
@import "../res/css/footer.css";
@import "../res/css/header.css";

th {
	text-align:center;
}
#tdC {
	text-align:center;
}
#btnP {
	margin-left:40%;
}
#btnA {
	float:right;
}
</style>
</head>
<body>
	<div class="container">
		<div id="header">
			<div id="title">

				<div id="loginBar">
					<a href="../user/04.html"><span>로그인&nbsp;|&nbsp;</span></a>
					<a href="../user/01.html"><span>회원가입&nbsp;|&nbsp;</span></a>
				</div>
				<br>

				<div id="logo">
					<a href="../main.html">로고입니다.</a>
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

				<div class= "btn-group btn-group-justified">
				
					<div class="btn-group">
						<a href="../buy/03.html" type="button" class="btn btn-default" type="button" >추천도서</a>	
					</div>
					
					<div class="btn-group">
						<a href="../buy/03.html" type="button" class="btn btn-default" type="button" >장르별도서</a>	
					</div>
					
					<div class="btn-group">
						<a href="../buy/03.html" type="button" class="btn btn-default" type="button" >이벤트</a>	
					</div>
					
					<div class="btn-group">
						<a href="../buy/03.html" type="button" class="btn btn-default" type="button" >고객지원</a>	
					</div>
					
				</div>
			</div>
		</div>
		
		<div>
			<h3>고객지원 > 공지</h3>
			
			<table class="table">
				<thead>
					<tr>
						<th>번호</th>
						<th colspan="2">내용</th>
						<th>날짜</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="notice" items="${notices}">
					<tr>
						<td id="tdC">${notice.noticeNum}</td>
						<td colspan="2"><a href="noticeIn.jsp?num=${notice.noticeNum}">${notice.noticeTitle}</a></td>
						<td id="tdC">${notice.noticeDate}</td>
					</tr>
				</c:forEach>
				</tbody>
			</table>
			
			<br>
			<div id="btnP"  class="btn-group">
				<button type="button" class="btn btn-default active">1</button>
				<button type="button" class="btn btn-default">2</button>
				<button type="button" class="btn btn-default">3</button>
				<button type="button" class="btn btn-default">4</button>
				<button type="button" class="btn btn-default">5</button>
			</div>
		</div>
		
		<div id="footer">
			<div id="footNab">
				<div id="foot123">
				<hr>
					<a><span>회사소개&nbsp;|&nbsp;</span></a>
					<a><span>이용약관&nbsp;|&nbsp;</span></a>
					<a><span>개인정보처리방침&nbsp;|&nbsp;</span></a>
					<a><span>고객센터</span></a>
				<hr>
				</div>
				
			</div>
			
				<div id="mainF">
					<span id=lolto>롤토&nbsp;체스</span>
					<br>
					<h3 id="comSmalInfo">Lolto</h3>
				</div>
				<div id="comInfo">
					<p><strong>|상호명:</strong><span>롤토체스</span></p>
					<p><strong>|사업자등록번호:</strong><span>000-00-0000</span></p>
					<p><strong>|대표자:</strong><span>전정규</span></p>
					<p><strong>|연락처:</strong><span>010-4143-6376</span></p>
				</div>
			<hr>	
		</div>
	</div>		
</body>
</html>