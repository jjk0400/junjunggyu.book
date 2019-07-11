<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8"/>
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
<title>main</title>
<style>

.container{
	width:850px;
}
#loginBar{
	float:right;
	font-size:10px;
}
#header{
	width:800px;
	margin-top:50px;
}
#logo{
	border:solid blue 1px;
	height:100px;
	text-align:center;
	margin:10px;
	margin-top:10px;
}
#searchBar{
	text-align:center;
	margin-bottom:10px;
}
input [type="text"]{
	display:inline;
	width:80px;
	height:25px;
}
#searchBar select{
	display:inline;
	width:100px;
	height:25px;
	padding:0;
	font-size:12px;
	position:relative;
	bottom:1px;
}

#searchBar .btn{
	width:60px;
	height:25px;
	padding:0;
	font-size:12px;
	font-weight:bold;
	bottom:2px;
}
#textP{
	display:inline;
	height:25px;
	width:230px;
}
#event{
	margin-top:10px;
	border:solid black 1px;
	height:150px;
	width:800px;
	float:center;
	background-color:pink;
}

.tab-content{
	margin-top:50px;
	margin-bottom:50px;	
	width:800px;
	height:auto;
	padding:10px;	
	border-left:solid gray 1px;
	border-right:solid gray 1px;		
}
.tab-content > div > div{
	padding:0 20px 0 20px;
	float:center;
}
.tab-content > div > div > div{
	display:inline-block;
	width:120px;
	text-align:center;
	margin:0 16.5px 0 43.5px;
}
.tab-content > div > div > div > div:first-child{
	width:120px;
	height:100px;
	border:1px solid black;
}
#contentT{
	font-size:10px;
	float:center;
}
/* #comLogo{
	height:100px;
	width:800px;
	text-align:center;
	
} */


#foot123{
	margin-top:0px;
	font-size:10px;
	text-align:center;
}

#lolto{
	font-size:50px;
	margin-bottom:0px;
}
#comSmalInfo{
	margin-top:0px;
}
#mainF{
	display:inline-block;
	float:left;
	margin-left:180px;
	
}
#comInfo{
	display:inline-block;
	margin-left:30px;
}

.carousel-control {
	background: none !important;
	
}
.left-carousel-control{
	margin-left:90%;
}

.glyphicon{
	color:gray;
}

</style>
</head>
<body>
	<div class="container">
		<div id="header">
			<div id="title">
				
				<div id="loginBar">
					<a href="user/login.jsp"><span>로그인&nbsp;|&nbsp;</span></a>
					<a href="user/sign.html"><span>회원가입&nbsp;|&nbsp;</span></a>
				</div>
				<br>
				
				<div id="logo">
					<a href="main.jsp">로고입니다.</a>		
				</div>
				
				<div id="searchBar">
					<select class="form-control">
						<option>전체검색</option>
						<option>저자검색</option>
						<option>책제목검색</option>
						<option>출판사?</option>
					</select>
					<input type="text" id="textP" class="form-control" placeholder = "검색어를 입력하세요"/>
					<button type="button" class="btn btn-default">검색</button>
				</div>
				
				<div class= "btn-group btn-group-justified">
				
					<div class="btn-group">
						<a href="buy/03.html" type="button" class="btn btn-default" type="button" >추천도서</a>	
					</div>
					
					<div class="btn-group">
						<a href="buy/03.html" type="button" class="btn btn-default" type="button" >장르별도서</a>	
					</div>
					
					<div class="btn-group">
						<a href="buy/03.html" type="button" class="btn btn-default" type="button" >이벤트</a>	
					</div>
					
					<div class="btn-group">
						<a href="support/boardMain.jsp" type="button" class="btn btn-default" type="button" >고객지원</a>	
					</div>
					
				</div>
				
			</div>
		</div>
		
		<div id="tbody">
			<div id="event" class="carousel slide" data-ride="carousel">
			
				<ol class="carousel-indicators">
					<li data-target="#event" data-slide-to="0" class="active"></li>
					<li data-target="#event" data-slide-to="1"></li>
					<li data-target="#event" data-slide-to="2"></li>	
				</ol>
				(Banner Image)
				<div class="carousel-inner">
					<div class="item active">
						<div>
							이미지1
						</div>				
					</div>
					
					<div class="item">
						<div>
							이미지2
						</div>
					</div>
					
					<div class="item">
						<div>
							이미지3
						</div>
					</div>
				</div>
			</div><!-- event -->
			<div id="bList" class="carousel slide" data-ride="carousel" data-interval="false">
			
	<!-- data-intervar="false" -->
				
			
				<div class="tab-content">
				<div class="carousel-inner">
					<div class="item active">
						<div>
							<div>
							
							</div>
							<div id="contentT">
								<span>도서명 : 김상형</span><br>
								<span>가격</span>
							</div>
						</div>
						
						<div onclick = "">
							<div>
							
							</div>
							<div id="contentT">
								<span>도서명</span><br>
								<span>가격</span>
							</div>
						</div>
						
						<div onclick = "">
							<div>
							
							</div>
							<div id="contentT">
								<span>도서명</span><br>
								<span>가격</span>
							</div>
						</div>
						
						<div onclick = "">
							<div>
							
							</div>
							<div id="contentT">
								<span>도서명</span><br>
								<span>가격</span>
							</div>
						</div> 
					
					<br>
						<div onclick = "">
							<div>
							
							</div>
							<div id="contentT">
								<span>도서명 : 전정규</span><br>
								<span>가격</span>
							</div>
						</div>
						
						<div onclick = "">
							<div>
							
							</div>
							<div id="contentT">
								<span>도서명</span><br>
								<span>가격</span>
							</div>
						</div>
						
						<div onclick = "">
							<div>
							
							</div>
							<div id="contentT">
								<span>도서명</span><br>
								<span>가격</span>
							</div>
						</div>
						
						<div onclick = "">
							<div>
							
							</div>
							<div id="contentT">
								<span>도서명 : 이대운</span><br>
								<span>가격</span>
							</div>
						</div> 
				</div>	
					<!--  -->
					<div class="item">
						<div>
							<div>
							
							</div>
							<div id="contentT">
								<span>도서명 : 이한희</span><br>
								<span>가격</span>
							</div>
						</div>
						
						<div onclick = "">
							<div>
							
							</div>
							<div id="contentT">
								<span>도서명</span><br>
								<span>가격</span>
							</div>
						</div>
						
						<div onclick = "">
							<div>
							
							</div>
							<div id="contentT">
								<span>도서명</span><br>
								<span>가격</span>
							</div>
						</div>
						
						<div onclick = "">
							<div>
							
							</div>
							<div id="contentT">
								<span>도서명</span><br>
								<span>가격</span>
							</div>
						</div> 
					
					<br>
						<div onclick = "">
							<div>
							
							</div>
							<div id="contentT">
								<span>도서명 : 전정규</span><br>
								<span>가격</span>
							</div>
						</div>
						
						<div onclick = "">
							<div>
							
							</div>
							<div id="contentT">
								<span>도서명</span><br>
								<span>가격</span>
							</div>
						</div>
						
						<div onclick = "">
							<div>
							
							</div>
							<div id="contentT">
								<span>도서명</span><br>
								<span>가격</span>
							</div>
						</div>
						
						<div onclick = "">
							<div>
							
							</div>
							<div id="contentT">
								<span>도서명 : 이한희</span><br>
								<span>가격</span>
							</div>
						</div> 
					</div>
				</div>
				<br>
		<a class="left-carousel-control" href="#bList" data-slide="prev">
		<span class="glyphicon glyphicon-chevron-left"></span></a>
		
		<a class="right-carousel-control" href="#bList" data-slide="next">
		<span class="glyphicon glyphicon-chevron-right"></span></a>
			</div>
				
			</div><!-- bList -->
			
		</div><!-- tbody -->
		
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