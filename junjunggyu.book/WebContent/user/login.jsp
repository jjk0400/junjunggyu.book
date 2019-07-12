<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>로그인화면</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.css"/>
<script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.js"></script>
<script src="../res/js/alert.js"></script>
<style>

	.container{
		width:850px;
	}
	#header{
		width:800px;
		margin-top:50px;
	}
	#loginBar{
		float:right;
		font-size:10px;
	}	
	
	#logo{
		border:solid blue 1px;
		height:70px;
		width:110px;
		text-align:center;
		margin:20px;
		margin-top:10px;
		margin-right:30px;
		float:left;
	}
	
	#searchBar{
	text-align:center;
	margin-top:30px;
	float:left;
	}
	input [type="text"]{
		display:inline;
		width:80px;
		height:35px;
	}
	#searchBar select{
		display:inline;
		width:100px;
		height:34.5px;
		padding:0;
		font-size:12px;
		position:relative;
		bottom:0px;
	}

	#searchBar .btn{
		width:60px;
		height:35px;
		padding:0;
		font-size:12px;
		font-weight:bold;
		bottom:2px;
	}
	#textP{
		display:inline;
		height:35px;
		width:350px;
	}

	#btn_nav{
		width:800px;
	}
	
	#userId{
		margin-left:35px;
		margin-right:5px;
		float:left;
	}
	#login{
		margin-top:19.5px;
		width:110px;
		height:108px;
		font-size:24px;
	}
	
	#join{
		width:200px;
		font-size:24px;
		margin-left:20px;
	}
	
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

</style>
</head>
<body>
<div class="container">
		<div id="header">
			<div id="title">
				
				<div id="loginBar">
					<a href="login.jsp"><span>로그인&nbsp;|&nbsp;</span></a>
					<a href="sign.html"><span>회원가입&nbsp;|&nbsp;</span></a>
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
					</select>
					<input type="text" id="textP" class="form-control" placeholder = "검색어를 입력하세요"/>
					<button type="button" class="btn btn-default">검색</button>
				</div>
				
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
				<form>
				<div>
					<h2 style="text-align:center">LOGIN</h2>
					<h2 id="userId" style="text-align:right">&nbsp;&nbsp;&nbsp;&nbsp;아이디 : 
						<input name="userId"  type="text" value="">
					</h2>
					<h2 id="userId" style="text-align:right">비밀번호 : 
						<input name="userPw" type="password" value="">
					</h2>
				<button id="login" type="submit" class="btn btn-default" formaction="action/loginAction.jsp">로그인</button>	
				</div>
				</form>
				<div>
				<br>
					<button id="join" type="button" onclick="location.href ='sign.html'" class="btn btn-default">회원 가입</button>
					<button id="join" type="button" onclick="location.href ='05.html'" class="btn btn-default">아이디 찾기</button>
					<button id="join" type="button" onclick="location.href ='pwfind.jsp'" class="btn btn-default">비밀번호 찾기</button>
				</div>
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
<%@ include file="action/msg.jsp" %>