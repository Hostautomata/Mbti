<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
h2 {
	text-align: center;
}
#result_ok{
	border: 1px solid black;	
	width: 5%;
	margin: auto;
}
#result_ok > p{
	text-align: center;
	text-decoration: none;
	color: black;	
}
</style>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script type="text/javascript">
	$(function() {

		$("#mbti").keyup(function() {
			var k = $(this).val();
			if (k.length > 4) {
				alert("mbti검사 결과는 4자리 문자 입니다.");
			}
		});
	})
</script>
</head>
<body>
	<%@ include file="top.jsp"%>
	<div>
		<form action="">
			<h2>당신의 운명의 반려동물은 과연??</h2>
			<div>
				<img alt="" src="">
			</div>
			<p>
				mbti 유형 : <input type="text" id="mbti">
			</p>
			<a href="result.jsp"><div id="result_ok"><p>확인</p></div> </a>
		</form>
	</div>
</body>
</html>