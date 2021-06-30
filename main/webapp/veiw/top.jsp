<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
body{
	background-color: whitesmoke;
}
	p{
		text-align: center;
		font-weight: bold;
	}
	#top_main{
		width:100%; 
	}
	#main_img{
		width:100%;
		height: 300px;
		background-image: url("../images/pet.jpg");
		background-size: contain;
		background-repeat: repeat-x;
	}

	#main_text{
	}
	#main_img > p{
		font-size: 4em;
		color: white;
		font-weight: bold;
		align-content: center;
	}
	.menu{
		width: 20%;
		background-color: chocolate;
		float: left;
		width: 25%;
		color:white;
		border-left : 1px white solid;
        box-sizing:border-box;
	}
	#menubar{
		clear:both;
		width:100%;
		margin-bottom: 70px;
	}
	#menubar>div:hover{
        background-color: darkorange;
        opacity: 0.5;
		
	}
	
	#sign{
		text-decoration: none;
		text-align: right;
		margin-right: 10px;
	}
	a{
		text-decoration: none;
	}
	
</style>
</head>
<body>
		<div id="top_main">
			<div id="main_img"><p>나는 뭐키우지?</p></div>
		</div>
		<p id="sign">
			<a href="login.jsp">로그인</a> | 
			<a href="join.jsp">회원가입</a>
		</p>
		<div id="menubar">
			<div class="menu"><a href="main.jsp"><p>검사하기</p></a></div>
			<div class="menu"><a href="community_list.jsp"><p>커뮤니티</p></a></div>
			<div class="menu"><a href="othersite_list.jsp"><p>관련사이트</p></a></div>
			<div class="menu"><a href="board_list.jsp"><p>공지사항</p></a></div>
		</div>
</body>
</html>