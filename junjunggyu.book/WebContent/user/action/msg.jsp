<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:choose>
	<c:when test="${param.msgId==09}">
		<script>alert("아이디가 중복됩니다.","error");</script>
	</c:when>
	<c:when test="${param.msgId==10}">
		<script>alert("아이디가 없습니다.","error");</script>
	</c:when>
	<c:when test="${param.msgId==11}">
		<script>alert("비밀번호가 틀렸습니다.","error");</script>
	</c:when>
	<c:when test="${param.msgId==21}">
		<script>alert("수정 성공","success");</script>
	</c:when>
	<c:when test="${param.msgId==20}">
		<script>alert("수정 실패","error");</script>
	</c:when>
	<c:when test="${param.msgId==31}">
		<script>alert("탈퇴 성공","success");</script>
	</c:when>
	<c:when test="${param.msgId==30}">
		<script>alert("탈퇴 실패","error");</script>
	</c:when>
	
	<c:when test="${param.msgId==51}">
		<script>alert("홈으로 이동하여 로그인 해 주세요","succes");</script>
	</c:when>
	<c:when test="${param.msgId==50}">
		<script>alert("정보가 잘못 되었습니다.","error");</script>
	</c:when>
	<c:when test="${param.msgId==52}">
		<script>alert("비밀번호가 일치하지 않습니다.","error");</script>
	</c:when>
	
</c:choose>