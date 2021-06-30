<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	*{text-align: center;}
	#main > div{
		width: 600px;
		margin: auto;
	}
	button{
		margin: auto;
		padding:20px;
	}
	#footer{
		width: 600px;
		margin: auto;
	}
	#share{
		float: left;
	}
	#site{
		float: right;
	}
</style>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script type="text/javascript">
	$(function() {
		result=${result};
		$("#ISTJ, ISFJ, INTJ, ISTP, ISFJ, INFP, ESTP, ESFP, ENFP, ENTP, ESTJ, ESFJ, ENFJ, ENTJ").hide();
		switch (result){
		
		case "ISTJ":
			$("#ISTJ").show();
			break;
		}
		case "ISFJ":
			$("#ISFJ").show();
			break;
		}
		case "INTJ":
			$("#INTJ").show();
			break;
		}
		case "INTJ":
			$("#INTJ").show();
			break;
		}
		case "ISTP":
			$("#ISTP").show();
			break;
		}
		case "ISFJ":
			$("#ISFJ").show();
			break;
		}
		case "INFP":
			$("#INTP").show();
			break;
		}
		case "ESTP":
			$("#ESTP").show();
			break;
		}
		case "ESFP":
			$("#ESFP").show();
			break;
		}
		case "ENFP":
			$("#ENFP").show();
			break;
		}
		case "ENTP":
			$("#ENTP").show();
			break;
		}
		case "ESTJ":
			$("#ESTJ").show();
			break;
		}
		case "ESFJ":
			$("#ESFJ").show();
			break;
		}
		case "ENFJ":
			$("#ENFJ").show();
			break;
		}
		case "ENTJ":
			$("#ENTJ").show();
			break;
		}
		
	});
</script>
</head>
<body>
	<%@ include file="top.jsp"%>
	<div id="main">
		<div id="ISTJ">
			<form>
				<h2>당신의 운명의 반려동물은 거북이입니다.</h2>
				<img alt="거북이 사진" src="">
				<p>거북이의 특징은 오~래 산다는 것인데요 한번 시작한 일은 끝까지 해내는 책임감 있는 당신에게 평생을 함께하는
					반려동물이 되어 줄 거북이는 천생연분입니다. 종류는</p>

			</form>

		</div>
	</div>
	<div id="footer">
		<button id="share">공유하기</button>
		<a href="othersite_list.jsp"><button id="site">관련사이트</button></a>
	</div>
</body>
</html>