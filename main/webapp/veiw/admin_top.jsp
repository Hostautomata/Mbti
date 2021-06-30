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
	a{
		text-decoration: none;
		text-align: center;
		font-weight: bold;
		color:white;
	}
	.top_main{
		width:100%; 
	}
	.main_img{
		position: relative;
	}
	.main_text{
		position: absolute;
		top:40%;
		left:50%;
		transform: translate(-50%,-50%);
	}
	.title{
		font-size: 4em;
		color: white;
		font-weight: bold;
	}
	.menu{
		width: 20%;
		background-color: darkolivegreen;
		float: left;
		width: 25%;
		color:white;
		border-left : 1px white solid;
        box-sizing:border-box;
		margin:70px 0px;
	}
	.menubar{
		clear:both;
		width:100%;
	}
	.menubar>div:hover{
        background-color: darkkhaki;
        opacity: 0.5;
		
	}
	
	.sign{
		text-decoration: none;
		float: right;
		text-align: right;
		margin-right: 10px;
	}
</style>
</head>
<body>
	<div id = "navi">
		<div class="menubar">
			<div class="menu"><a href="admin_othersite_list.jsp"><p>사이트관리</p></a></div>
			<div class="menu"><a href="admin_community_list.jsp"><p>커뮤니티관리</p></a></div>
			<div class="menu"><a href="admin_member_list.jsp"><p>회원관리</p></a></div>
			<div class="menu"><a href="admin_board_list.jsp"><p>공지사항관리</p></a></div>
		</div>
	</div>
</body>
</html>