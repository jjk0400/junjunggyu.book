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
	
	String userId = request.getParameter("id");
	String userPhone = request.getParameter("tel");
	String UserId = null;
	String UserPhone = null; 
	
	user = userService.getUser(userId);
	
	if(user != null) {
		UserId = user.getUserId();
		UserPhone = user.getUserPhone();
	}
	
	if(UserId != null && UserPhone != null){
		if(userId.equals(UserId) && userPhone.equals(UserPhone)){
			session.setAttribute("userId", userId);
%>
			<c:redirect url="../pwchange.jsp"/>
<%		
		}else {
%>
			<c:redirect url="../pwfind.jsp?userId=${param.id}&msgId=50"/>
<%			
		}
	}else{
%>
		<c:redirect url="../pwfind.jsp?userId=${param.id}&msgId=50"/>
<%
	}	
%>