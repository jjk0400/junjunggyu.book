<%@page import="junjunggyu.book.user.service.UserServiceImpl"%>
<%@page import="junjunggyu.book.user.service.UserService"%>
<%@page import="junjunggyu.book.user.dao.UserDaoImpl"%>
<%@page import="junjunggyu.book.user.dao.UserDao"%>
<%@ page import="junjunggyu.book.user.domain.User" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%	
	UserService userService = new UserServiceImpl();
	User user = null;	
	
	String userPw = request.getParameter("pw1");
	String userPw2 = request.getParameter("pw2");
	
	String userId = (String)session.getAttribute("userId");
	
	user = userService.getUser(userId);
	
	String userName = null;
	String userPhone = null;
	String userGender = null;	
	
	if(userPw.equals(userPw2)){
		user = new User(userName, userId, userPw, userPhone, userGender);
		userService.changePw(user);
%>
		<c:redirect url="../pwfindFinish.html"/>
<%	
	}else{
%>
		<c:redirect url="../pwfind.jsp?userId=${param.id}&msgId=52"/>
<%
	}
%>	