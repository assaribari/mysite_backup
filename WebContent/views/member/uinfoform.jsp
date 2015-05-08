<%@page import="com.sds.icto.mysite.vo.MemberVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	HttpSession sess = request.getSession( false );
	MemberVo authMember = (MemberVo) session.getAttribute("authMember");
%>
<!doctype html>
<html>
<head>
<title>mysite</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8">
<link href="/mysite/assets/css/user.css" rel="stylesheet" type="text/css">
</head>
<body>
	<div id="container">
		<div id="header">
		<jsp:include page="/views/include/header.jsp" flush="false"/>
		</div>
		<div id="content">
			<div id="user">

				<form id="uinfo-form" name="uinfoForm" method="post" action="/mysite/main">
					<input type="hidden" name="a" value="uinfo">
					<label class="block-label" for="name">이름</label>
					<input id="name" name="name" type="text" value="<%=authMember.getName() %>">

					<label class="block-label" for="email">이메일</label>
					<input id="email" name="email" type="text" value="<%=authMember.getEmail() %>">

					<label class="block-label">성별</label>
					<input name="gender" type="text" value="<%=authMember.getGender() %>">

	
					<input type="submit" value="수정하기">
					
				</form>
			</div>
		</div>
		<div id="navigation">
			<jsp:include page="/views/include/navigation.jsp"/>
		</div>
		<div id="footer">
			<jsp:include page="/views/include/footer.jsp"/>
		</div>
	</div>
</body>
</html>