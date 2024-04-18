<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>CookieResult.jsp</title>
</head>
<body>

	<h2>쿠키값 확인하기(쿠키가 생성된 이후의 페이지)</h2>
	<%
		// 쿠키를 가지고 이 페이지로 옮
		Cookie[] cookies = request.getCookies();
		if(cookies !=null){
			for(int i = 0; i < cookies.length; i++){
				String cookieName = cookies[i].getName();
				String cookieValue = cookies[i].getValue();
				out.println(String.format("쿠키명 : %s - 쿠키값 : %s<br/>",cookieName,cookieValue));
				// 쿠키 맛나요 가 있다는 걸 확인할 수 있음
			}
		}
	%>
	
</body>
</html>