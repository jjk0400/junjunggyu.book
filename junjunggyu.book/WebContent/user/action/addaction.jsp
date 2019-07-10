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
	
	request.setCharacterEncoding("UTF-8");
	response.setContentType("text/html;charset=UTF-8");
	
	String userName = request.getParameter("name");
	String userId = request.getParameter("id");
	String userPw = request.getParameter("pw");
	String userPhone = request.getParameter("tel");
	String userGender = request.getParameter("gender");
	
	if(userName != null && !userName.equals("")){
		user = userService.getUser(userId);
	}
	
	if(user == null){
		user = new User(userName, userId, userPw, userPhone, userGender);
		userService.addUser(user);
%>
		<c:redirect url="../addFinish.html"/>
<%		
	}else{
%>
		<c:redirect url="../add.jsp?userId=${param.id}&msgId=09"/>
<%
	}
%>
