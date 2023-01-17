<%@page import="com.douzone.guestbook.dao.GuestbookDao"%>
<%@page import="com.douzone.guestbook.vo.GuestbookVo"%>
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
String name = request.getParameter("name");
String password = request.getParameter("password");
String message = request.getParameter("message");

GuestbookVo vo = new GuestbookVo();
vo.setName(name);
vo.setPassword(password);
vo.setMessage(message);
GuestbookDao dao = new GuestbookDao();
dao.insert(vo);

response.sendRedirect("/guestbook01");

%>
	입력완료!
	<a href="/guestbook01">메인으로 돌아가기</a>
</body>
</html>