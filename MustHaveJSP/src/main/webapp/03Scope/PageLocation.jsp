<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head><title>Page 영역</title></head>
<body>
	<h2>이동 후 page영역의 속성값 읽기</h2>
	<%
		Object pInteger = pageContext.getAttribute("pageInteger");
		Object pString = pageContext.getAttribute("pageString");
		Object pPerson = pageContext.getAttribute("pagePerson");
	%>
	
</body>
</html>