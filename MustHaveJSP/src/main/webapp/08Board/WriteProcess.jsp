<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "board.BoardDAO" %>
<%@ page import = "board.BoardDTO" %>
<%@ include file = "./IsLoggedIn.jsp" %>
<%
String title = request.getParameter("title");
String content = request.getParameter("content");

BoardDTO dto = new BoardDTO();
dto.setTitle(title);
dto.setContent(content);
dto.setId(session.getAttribute("UserId").toString());

// DAO 객체를 통해 DB에 DTO 저장
BoardDAO dao = new BoardDAO(application);
int isResult = dao.insertWrite(dto);
dao.close();

// 성공 or 실패?
if(isResult == 1){
	response.sendRedirect("List.jsp");
}else {
	JSFunction.alertBack("글쓰기에 실패하였습니다. ", out);
}
%> 