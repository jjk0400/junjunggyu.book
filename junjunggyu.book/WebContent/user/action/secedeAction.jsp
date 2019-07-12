<%@page import="junjunggyu.book.user.service.UserServiceImpl"%>
<%@page import="junjunggyu.book.user.service.UserService"%>
<%@page import="junjunggyu.book.user.dao.UserDaoImpl"%>
<%@page import="junjunggyu.book.user.dao.UserDao"%>
<%@ page import="junjunggyu.book.user.domain.User" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%	
	String userId = (String)session.getAttribute("userId");
	
	UserService userService = new UserServiceImpl();
	User user = null;	
	
	user = userService.getUser(userId);
	
	String userName = user.getUserName();
	String userPw = user.getUserPw();
	String userPhone = user.getUserPhone();
	String userGender = user.getUserGender();
	
	String userPw3 = request.getParameter("pw3");
		
	if(userPw.equals(userPw3)){
		userService.secedeUser(userId);
%>
		<c:redirect url="../secedeFinish.html"/>
<%		
	}else{
%>
		<c:redirect url="../secede.jsp?userId=${param.id}&msgId=52"/>
<%
	}
%>