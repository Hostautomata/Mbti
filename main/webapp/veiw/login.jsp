
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	fieldset {
	width: 300px; margin: auto;
}
input {
	height: 30px;
}
#login{
	width:100%;
}
#join #find_member{
	font-weight: normal;
	color: black;
	
}
</style>
<script type="text/javascript">
	function join_go(f) {
		f.action="join.jsp";
		f.submit();
	}
</script>
</head>
<body>
	<div>
		<%@ include file="top.jsp" %>
		<form action="login.jsp" method="post">
		<fieldset>
				<p>아이디 : <input type="text" name="id" placeholder="id를 입력하세요" required></p>
				<p>패스워드 : <input type="password" name="pw" placeholder="pw를 입력하세요" required></p>
				<input type="submit" id = "login" value="로그인">
				<p><a id="find_member" href="find_member.jsp">ID/PW찾기</a> | <a id="join" href="join.jsp">회원가입</a></p>
		</fieldset>
		</form>
	</div>
</body>
</html>