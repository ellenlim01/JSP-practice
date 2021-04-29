<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <!-- 인포트 해주기, 객체 생성 -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="preconnect" href="https://fonts.gstatic.com" />
<link href="https://fonts.googleapis.com/css2?family=Jua&display=swap"
rel="stylesheet"/>
<title>게시판</title>
<style>
	table, th, td {
	border: 1px solid black;
	border-collapse: collapse;
	}
	table {
		width:80%;
	}
	a{
		text-decoration: none;
	}
	body {
	background-color :  #b4d490;
	font-family: "Jua", sans-serif;
	}
	.container {
		align-content: center;
		margin: 0;
	}
	
</style>
</head>
<body>
<div id="container">
	<h1>여기는 게시판</h1>
	<div>
	<table>
		<tr>
			<th>숫자</th>
			<th>제목</th>
			<th>조회수</th>
		</tr>
		
		<c:forEach var="item" items="${data}" varStatus="status">
		<tr>
			<td>${status.index}</td>
			<td>
				<a href="/detail?no=${status.index}">${item.title}</a>
			</td>
			<td></td>
		</tr>
		</c:forEach>
		
	</table>
	</div>
	<div><a href = "/write">글 작성</a></div>
</div>
</body>
</html>