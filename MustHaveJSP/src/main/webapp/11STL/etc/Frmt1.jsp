<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "jakarta.tags.core" %>
<%@ taglib prefix = "fmt" uri = "jakarta.tags.fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL - fmt 1</title>
</head>
<body>
	<h4>숫자 포맷 설정</h4>
	<c:set var = "number1" value="12345"/>
	콤마 o : <fmt:formatNumber value = "${number1}" pattern="#,####"/><br/>
	콤마 x : <fmt:formatNumber value = "${number1}" groupingUsed = "false"/><br/>
	<fmt:formatNumber value="${number1}" type="currency" var = "printNum1"/>
	통화기호 : ${printNum1 } <br/>
	<fmt:formatNumber value = "0.03" type="percent" var = "printNumb2"/>
	퍼센트 : ${printNum2}<br/>
</body>
</html>