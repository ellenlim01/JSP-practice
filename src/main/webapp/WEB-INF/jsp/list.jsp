<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <!-- 인포트 해주기, 객체 생성 -->

<%@ page import="java.util.*" %> 
<%@ page import="com.ellen.elly.*" %>
    
<% List<BoardVO> list = (List<BoardVO> request.getAttribute("data");%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판</title>
</head>
<body>
	<h1>여기는 게시판</h1>
	<table>
		<tr>
			<th>숫자</th>
			<th>제목</th>
			<th>조회수</th>
		</tr>
		<tr>
			<% for(int i=0; i<) %>
		</tr>
		
		<!-- 반복문 돌려주기 -->
	</table>

</body>
</html>