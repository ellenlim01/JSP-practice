<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
		<h1> ${data.title}</h1>
		<div>${data.content}</div>

		<form action="/delete" method="post">
			<input type="hidden" name="no" value="${param.no}">
			<input type="submit" value="삭제"> 
		</form>

			<a href="/modify?no=${param.no}"><button>수정</button></a> 
</body>
</html>