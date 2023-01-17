<%@page import="com.douzone.guestbook.dao.GuestbookDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%
	request.setCharacterEncoding("utf-8");
String no = request.getParameter("no");
String password = request.getParameter("password");

GuestbookDao dao = new GuestbookDao();

if(dao.findByNo(no).getPassword().equals(password)){
dao.deleteByNo(no);
response.sendRedirect("/guestbook01");
}else{
%>
	<h1>오답!</h1>
	<a href="/guestbook01">메인으로 돌아가기</a>
	<%} %>
</body>
</html>