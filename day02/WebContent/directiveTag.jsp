<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage="./myErrorPage.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>디렉티브 태그 연습</h2>
	Today is : <%=new Date() %>
	<%
		String str = null;
		str.length();
	%>
</body>
</html>