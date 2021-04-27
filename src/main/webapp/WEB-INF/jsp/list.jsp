<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <!-- 인포트 해주기, 객체 생성 -->

<%@ page import="java.util.*" %> 
<%@ page import="com.ellen.elly.*" %>
    
<% List<BoardVO> list = (List<BoardVO>) request.getAttribute("data");%>
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
		<tr>
			<% for(int i=0; i<list.size(); i++) {%>
			<%		BoardVO vo = list.get(i); %>

			<td><%=i %></td>
			<td>
				<a href="/detail?no=<%=i %>"><%=vo.getTitle() %></a>
			</td>
			<td></td>
		</tr>
		<%} %>
		<!-- 반복문 돌려주기 -->
	</table>
	</div>
	<div><a href = "/write">글 작성</a></div>
</div>
</body>
</html>