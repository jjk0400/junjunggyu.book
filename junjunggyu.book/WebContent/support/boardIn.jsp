<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="junjunggyu.book.support.domain.Board"%>
<%@page import="java.util.List"%>
<%@page import="junjunggyu.book.support.service.BoardServiceImpl"%>
<%@page import="junjunggyu.book.support.service.BoardService"%>
<%
	BoardService boardService = new BoardServiceImpl();
	Board board = null;
	int boardNum = Integer.parseInt(request.getParameter("num"));
	
	board = boardService.getBoard(boardNum);
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

#h4D {
	text-align:right;
	font-size:16px;
}

#divS {
	border-top: solid black 1px;
	border-bottom: solid black 1px;
	width:auto;
	height: 200px;
	margin-top:10px;
}

#left {
	float:left;
	font-size:16px;
}

#aBack {
	margin-left:90%;
	margin-top:20px;
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
			<h3>고객지원 > 게시판</h3>
			<hr>
			<div>
				<p id="left"><%= board.getBoardTitle() %></h4>
				<p id="h4D"><%= board.getBoardDate() %></p>
			</div>
			
			<div id="divS">
				<p><%= board.getBoardContent() %></p>
			</div>
			
			<div>
				<a id="aBack" type="button" class="btn btn-default" href="boardMain.jsp">목록으로</a>
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