<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "com.ellen.elly.*" %>
<%
	String no = request.getParameter("no");
	BoardVO vo = (BoardVO) request.getAttribute("data");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://fonts.googleapis.com/css2?family=Jua&display=swap">
<title>Insert title here</title>
<style>
	body {
		background-color: rgb(106, 190, 106);
	}
</style>
</head>
<body>
	<h1>글 수정</h1>
	<form action="/modify" method="post">
		<input type="hidden" name="no" value=<%=no %>>
		<div>
			제목 <input type="text" name="title" value=<%= vo.getTitle() %>>
		</div>
		<div>
			내용: <textarea cols=10 rows=10 name="content"><%= vo.getContent() %></textarea>
		</div>
		<div>
			<input type="submit" value="저장">
			<input type="reset" value="초기화">
		</div>
	</form>
</body>
</html>