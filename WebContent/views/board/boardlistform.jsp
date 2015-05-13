<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="fn"%> 
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>mysite</title>
<link href="/mysite/assets/css/board.css" rel="stylesheet"
	type="text/css">
<style type="text/css" media="screen">
*						{ margin:0; padding:0 }
body					{ font-family: '맑은 고딕' 돋움; font-size:0.75em; color:#333 }

.tbl-ex					{ margin-left:15px; margin-top:10px; margin-bottom:10px; border:1px solid #333; border-collapse:collapse; border-left-width:0; border-right-width:0 }

.tbl-ex th, .tbl-ex td	{ border:1px solid #333; padding:8px; border-left-width:0; border-right-width:0  } 

.tbl-ex th				{ margin:auto; background-color:#888; font-size:1.1em; color:#fff; border-top-width:2px; border-bottom-width:2px }
.tbl-ex td				{ border-style:dotted }
.tbl-ex tr.even			{ background-color:#E8ECF6  }

.tbl-ex tr:hover,
.tbl-ex tr.even:hover 	{ background-color:#fc6; cursor:pointer }
p { margin-left:12px; margin-top:10px;}

#title {
 	text-align:center; 
 	width:300px;
}
div div table tr{
 	text-align:center;
}

input[ type = 'image']{
	margin-right:20px;
	width:80px;

}


</style>
</head>

<body>

<div id="container">
		<div id="header">
		<c:import url="/views/include/header.jsp"></c:import>
		</div>
		<div id="content">
			<p>총 게시물 : 35개</p>
			<form id="board-form" method="get">
				<table class="tbl-ex">
					<tr>
						<th>번호</th>
						<th id="title">제목</th>
						<th>작성자</th>
						<th>작성일</th>
						<th>조회수</th>
					</tr>
					<tr>
						<td>1</td>
						<td>안녕하세요 가입인사 드려요~</td>
						<td>이은호</td>
						<td>2015-05-11</td>
						<td>0</td>
					</tr>
					<tr class="even">
						<td>2</td>
						<td>안녕하세요 가입인사 드려요~</td>
						<td>이은호</td>
						<td>2015-05-11</td>
						<td>3</td>
					</tr>
					<tr>
						<td>3</td>
						<td>안녕하세요 가입인사 드려요~</td>
						<td>이은호</td>
						<td>2015-05-11</td>
						<td>1</td>
					</tr>
					<tr class="even">
						<td>4</td>
						<td>안녕하세요 가입인사 드려요~</td>
						<td>이은호</td>
						<td>2015-05-11</td>
						<td>2</td>
					</tr>
					<tr>
						<td>5</td>
						<td>안녕하세요 가입인사 드려요~</td>
						<td>이은호</td>
						<td>2015-05-11</td>
						<td>7</td>
					</tr>
					<tr class="even">
						<td>6</td>
						<td>회식합시다!!</td>
						<td>이은호</td>
						<td>2015-05-11</td>
						<td>100</td>
					</tr>
				</table>
				<div align="center">
				<p><strong>[1] [2] [3]</strong></p>
				</div>
				<div align="right">
				<input type="image" src="/mysite/assets/images/write.png" value="글쓰기">
				</div>
			</form>
		</div>
		<div id="navigation">
			<c:import url="/views/include/navigation.jsp"></c:import>
		</div>
		<div id="footer">
			<c:import url="/views/include/footer.jsp"></c:import>
		</div>

	</div>

</body>
</html>