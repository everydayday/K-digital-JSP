<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%!
	public int add(int num1, int num2){
	return num1 + num2;
}

%>

<%
	int num1;
	int num2;
	try{
		num1 = Integer.parseInt(request.getParameter("num1")); 
		num2 = Integer.parseInt(request.getParameter("num2"));
	}
	catch(Exception e){
		num1 = 45;
		num2 = 30;
	}
	 	 
%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>스크립트 요소</title>
</head>
<body>
	<%
		int result = add(10,20);
	%>
	덧셈 결과 1 : <%= result %> <br />
	덧셈 결과 2 : <%= add(30,40) %> <br />
	덧셈 결과 3 : <%= add(num1, num2)%>	
	
	
</body>
</html>