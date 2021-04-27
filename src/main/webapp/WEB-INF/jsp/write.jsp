<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글 작성</title>
<style>
	body {
		background-color :  rgb(106, 190, 106);
	}
</style>
</head>
<body>
	<h1>글 작성</h1>
	<form action="/write" method="post">
		<div>
			제목 <input type="text" name="title">
		</div>
		<div>
			내용: <textarea cols=10 rows=10 name="content"></textarea>
		</div>
		<div>
			<input type="submit" value="저장">
		</div>
	</form>
</body>
</html>