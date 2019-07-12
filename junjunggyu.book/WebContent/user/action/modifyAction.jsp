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
		
	String userName = request.getParameter("name");
	String userId = request.getParameter("id");
	String userPw = request.getParameter("pw");
	String userPhone = request.getParameter("tel");
	String userGender = request.getParameter("gender");
	
	String userPw2 = request.getParameter("pw2");
	
	user = userService.getUser(userId);
	
	if(userPw.equals(userPw2)){
		user = new User(userName, userId, userPw, userPhone, userGender);
		userService.modifyUser(user);
%>
		<c:redirect url="../modifyFinish.jsp"/>
<%		
	}else{
%>
		<c:redirect url="../modify.jsp?userId=${param.id}&msgId=52"/>
<%
	}
%>