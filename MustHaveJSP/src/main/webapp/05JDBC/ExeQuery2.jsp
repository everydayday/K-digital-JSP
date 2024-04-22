<%@ page import = "java.sql.ResultSet" %>
<%@ page import = "java.sql.Statement" %>
<%@ page import = "java.sql.Connection" %>
<%@ page import = "common.JDBConnect" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	String loginErr = request.getParameter("id");
	if(loginErr == null) out.print("로그인 실패");
	else{
		JDBConnect jdbc = new JDBConnect();
		
		String sql = "SELECT b.num, b.title, b.content, m.name, b.postdate, b.visitcount " +
		"from board b, member m " + 
		"where b.id = \'"+ loginErr + "\' " + 
			"and b.id = m.id;";
			
		Statement stmt = jdbc.con.createStatement();
		
		ResultSet rs = stmt.executeQuery(sql);
		/* out.println("┌───<br/>"); */
		
		out.println("<table>");
		while(rs.next()){
			out.println("<tr>");
			int num = rs.getInt(1);
			String title = rs.getString(2);
			String content = rs.getString(3);
			String name = rs.getString(4);
			java.sql.Date regidate = rs.getDate("b.postdate");
			int visitcount = rs.getInt("b.visitcount");
			
			out.println(String.format("<td>%d</td> <td>%s</td> <td>%s</td> <td>%s</td> <td>%s</td> <td>%d</td>",num,title,content,name,regidate,visitcount));
			out.println("</tr>");
		}
		out.println("</table>");
		
		jdbc.close();
	}
	
	
	 %>
</body>
</html>