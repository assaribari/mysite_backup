<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>mysite</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8">
<link href="/mysite/assets/css/board.css" rel="stylesheet" type="text/css">
</head>
<body>
	<div id="container">
		<div id="header">
			<c:import url="/views/include/header.jsp" />
		</div>
		<div id="content">
		<h2>자유게시판</h2>
			
			<div id="board" class="board-form">
			
				<table class="tbl-ex">
				
					<tr>
						<th>제목</th>
						<th class="cont-title"> 회식합시다!!</th>
					</tr>
					
					<tr id="writerinfo">
						<td class="label">
							<em>이은호</em>
						</td>
						<td>
							<p>  조회 수 : 10</p>
						</td>
					</tr>
					
					<tr>
						<td class="label">내용</td>
						<td>
							<div class="view-content">
								회식장소 어디로할까요~?<br> 회식장소 어디로할까요~?<br> 회식장소 어디로할까요~?<br>
								회식장소 어디로할까요~?<br> 회식장소 어디로할까요~?<br>
							</div>
						</td>
					</tr>
				</table>
				
				
				<div class="bottom">
					<a href="">글목록</a>
					<a href="">글수정</a>
				</div>
			</div>
		</div>
		<div id="navigation">
			<c:import url="/views/include/navigation_board.jsp" />
		</div>
		<div id="footer">
			<c:import url="/views/include/footer.jsp" />
		</div>
	</div>
</body>
</html>