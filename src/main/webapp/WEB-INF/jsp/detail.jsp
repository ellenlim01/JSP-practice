<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.ellen.elly.*" %>
<%
	String no = request.getParameter("no");
	BoardVO vo = (BoardVO) request.getAttribute("data");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글 내용</title>
<style>
body {
		background-color :  rgb(106, 190, 106);
	}
</style>
</head>
<body>
		<h1> <%= vo.getTitle() %> </h1>
		<div><%= vo.getContent() %></div>

		<form action="/delete" method="post">
			<input type="hidden" name="no" value="<%= no%>">
			<input type="submit" value="삭제"> 
		</form>

			<a href="/modify?no=<%=no %>"><button>수정</button></a> 
</body>
</html>