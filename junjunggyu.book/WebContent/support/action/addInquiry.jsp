<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="junjunggyu.book.support.domain.Inquiry"%>
<%@page import="java.util.List"%>
<%@page import="junjunggyu.book.support.service.InquiryServiceImpl"%>
<%@page import="junjunggyu.book.support.service.InquiryService"%>
<%
	InquiryService inquiryService = new InquiryServiceImpl();
	Inquiry inquiry = null;
	
	String title = request.getParameter("title");
	String content = request.getParameter("content");
	String userId = (String)session.getAttribute("userId");
	
	System.out.println(userId);
	inquiry = new Inquiry(title,content,userId);
	
	inquiryService.addInquiry(inquiry);
%>
<c:redirect url="../inquiryMain.jsp"/>