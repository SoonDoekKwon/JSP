<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>입력 처리 결과.</title>
</head>
<body>
	<%
	  Object obj = request.getAttribute("message"); // Object 타입
	  String result = (String) obj;
	  String id = (String) request.getAttribute("id"); //String
	%>
	<p>처리결과: <%=result %></p>
	<p><%=id %> 님의 가입을 환영합니다!</p>
	
	<p>회원목록 이동</p>
	<a href="memberList.do">목록이동</a>
</body>
</html>