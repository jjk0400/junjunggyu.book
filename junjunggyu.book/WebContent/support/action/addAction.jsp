<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="junjunggyu.book.support.domain.Board"%>
<%@page import="java.util.List"%>
<%@page import="junjunggyu.book.support.service.BoardServiceImpl"%>
<%@page import="junjunggyu.book.support.service.BoardService"%>
<%
	BoardService boardService = new BoardServiceImpl();
	Board board = null;
	
	String title = request.getParameter("title");
	String content = request.getParameter("content");
	String userId = (String)session.getAttribute("userId");
	
	System.out.println(userId);
	board = new Board(title,content,userId);
	
	boardService.addBoard(board);
%>
<c:redirect url="../boardMain.jsp"/>