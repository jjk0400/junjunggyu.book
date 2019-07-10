<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="junjunggyu.book.book.service.AdminServiceImpl"%>
<%@ page import="junjunggyu.book.book.service.AdminService"%>
<%@ page import="junjunggyu.book.book.domain.Admin"%>
<%@ page import="junjunggyu.book.user.service.UserServiceImpl"%>
<%@ page import="junjunggyu.book.user.service.UserService"%>
<%@ page import="junjunggyu.book.user.dao.UserDaoImpl"%>
<%@ page import="junjunggyu.book.user.dao.UserDao"%>
<%@ page import="junjunggyu.book.user.domain.User"%>
<%
	UserService userService = new UserServiceImpl();
	AdminService adminService = new AdminServiceImpl();
	User user = null;
	Admin admin = null;
	
	String userId = request.getParameter("userId");
	String userPw = request.getParameter("userPw");
	String adminId = request.getParameter("userId");
	String adminPw = request.getParameter("userPw");
	
	if(userId != null && !userId.equals("")) {
		user = userService.getUser(userId);
	}
	
	if(userId != null && !userId.equals("")) {
		admin = adminService.getAdmin(adminId);
	}
	
	if(user == null) {
		if(admin != null) {
			if(admin.getAdminPw().equals(adminPw)){
%>
				<c:redirect url="../../book/adminLogin.html"/>
<%
			}
		}
%>
		<c:redirect url="../login.jsp?msgId=10"/>
<% 		
	}else if (userPw.equals("")) {
%>
		<c:redirect url="../login.jsp?msgId=11"/>
<%		
	}else {
		if(user.getUserPw().equals(userPw)) {
%>
			<c:redirect url="../userLogin.html"/>
<% 
		}else {
%>
			<c:redirect url="../login.jsp?msgId=11"/>
<%			
		}
	}
%>
