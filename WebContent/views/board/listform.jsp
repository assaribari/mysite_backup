<%@ page import="java.util.List"%>
<%@ page import="com.sds.icto.board.dao.BoardDao"%>
<%@ page import="com.sds.icto.board.vo.BoardVo"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%> 
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	BoardDao dao = new BoardDao();
	List<BoardVo> list = dao.fetchList();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>mysite</title>
<link href="/mysite/assets/css/board.css" rel="stylesheet"
	type="text/css">
</head>

<body>

<div id="container">
		<div id="header">
		<c:import url="/views/include/header.jsp"></c:import>
		</div>
		<div id="content">
			<h2>자유게시판</h2>
			
			<div id="board">
				
			
				<p class="totalcont">총 게시물 : 35개
				<a href="/mysite/views/board/writeform.jsp" class = "write">글쓰기</a></p>
				
				
				<table class="tbl-ex">
					<tr>
						<th>번호</th>
						<th id="title">제목</th>
						<th>작성자</th>
						<th>작성일</th>
						<th>조회수</th>
						<th>&nbsp;</th>
					</tr>
					
				<%
					for (BoardVo vo : list) {
				%>	

					<tr>
						<td><%=vo.getNo() %></td>
						<td><%=vo.getTitle() %></td>
						<td><%=vo.getName() %></td>
						<td><%=vo.getSysdate() %></td>
						<td><%=vo.getViewcount() %></td>
						<td>
							<a href="" class="del">삭제</a>
						</td>
					</tr>
				<%
					}
				%>
					
				</table>
			
				<form id="search_form" action="" method="post">
					<input type="text" id="kwd" name="kwd" value="">
					<input type="submit" value="찾기">
				</form>
				

			</div>
			
		</div>
		
		<div id="navigation">
			<c:import url="/views/include/navigation_board.jsp"></c:import>
		</div>
		<div id="footer">
			<c:import url="/views/include/footer.jsp"></c:import>
		</div>

	</div>

</body>
</html>