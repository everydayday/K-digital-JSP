<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%!
// String str1 = "JSP";
String str2 = "안녕하세요!! ";
String getMessage(String str1){
	if(str1 == null){
		return "null null 입니다.";
	}
	else if(str1.equals("jsp"))
		return "열공합시다.";
	return "빡세게 합시다.";
}


%>
<%
	String str1 = request.getParameter("lang");	
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>HelloJSP</title>
</head>
<body> 	
	<h2>처음 만들어보는 <%= str1 %></h2>
	<p>
		<%									
				out.println(getMessage(str1) + "입니다. 열공합시다^^*!!!!!!");
			
		%>
	</p>
</body>
</html>


