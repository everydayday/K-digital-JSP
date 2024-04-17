<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	초기화 매개변수 : <%= application.getInitParameter("INIT_PARAM") %>
	
	application 내장 객체 : <%= application.getRealPath("/02ImplicitObject")%>
	
	<%!
	public String useImplicitObject(){
		return this.getServletContext().getRealPath("/02ImplicitObject");
	}
	public String useImplicitObject(ServletContext app){
		return app.getRealPath("/02ImplicitObject");
	}
	
	
	%>
</body>
</html>