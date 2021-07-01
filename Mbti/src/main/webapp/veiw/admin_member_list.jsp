<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style type="text/css">
#bbs table {
	width: 800px;
	margin: 0 auto;
	margin-top: 20px;
	border: 1px solid black;
	border-collapse: collapse;
	font-size: 14px;
}

#bbs table caption {
	font-size: 20px;
	font-weight: bold;
	margin-bottom: 10px;
}

#bbs table th, #bbs table td {
	text-align: center;
	border: 1px solid black;
	padding: 4px 10px;
}

.no {
	width: 15%
}

.subject {
	width: 30%
}

.writer {
	width: 20%
}

.reg {
	width: 20%
}

.hit {
	width: 15%
}


.odd {
	background: silver
}
/* paging */
table tfoot ol.paging {
	list-style: none;
	align-items: center;
	
}
table tfoot ol.paging li {
	float: left;
	margin-right: 8px;
}

table tfoot ol.paging li a {
	display: block;
	padding: 3px 7px;
	border: 1px solid #00B3DC;
	color: #2f313e;
	font-weight: bold;
}

/* *{
	border: 1px solid green;
} */

table tfoot ol.paging li a:hover {
	background: #00B3DC;
	color: white;
	font-weight: bold;
}

.disable {
	padding: 3px 7px;
	border: 1px solid silver;
	color: silver;
}

.now {
	padding: 3px 7px;
	border: 1px solid #ff4aa5;
	background: #ff4aa5;
	color: white;
	font-weight: bold;
}
</style>
<script type="text/javascript">
	 function write_go() {
/* 	location.href = "${pageContext.request.contextPath}/MyController?cmd=admin_member_write&cPage=${pvo.nowPage}"; */	
		location.href = "admin_member_join.jsp";

	 }
	 function sel_del() {
		
	}
</script>
</head>
<body>
	<%@ include file="admin_top.jsp" %>
		<div id="bbs" align="center">
		<h1>회원 관리</h1>
		<table summary="회원관리">
			<thead>
				<tr id="board">
					<th class="board_title"><input type="checkbox"name = "selectbox"></th>
					<th class="board_title">권한</th>
					<th class="board_title">이름</th>
					<th class="board_title">전화번호</th>
					<th class="board_title">등록일</th>
				</tr>
			</thead>
			<tbody>
				<c:choose>
					<c:when test="${empty list}">
						<tr>
							<td colspan="5"><h2>원하는 정보가 존재하지 않습니다.</h2></td>
						</tr>
					</c:when>
					<c:otherwise>
						<c:forEach var="k" items="${list}" varStatus="vs">
							<tr>
								<td><input type="checkbox" name="selectboxes"> </td>
								<td>${k.type }</td>
								<td><a href="/MyController?cmd=admin_member_onelist&b_idx=${k.b_idx}&cPage=${pvo.nowPage}">${k.name }</a></td>
								<td>${k.call }</td>
								<td>${k.join_date }</td>
							</tr>
						</c:forEach>
					</c:otherwise>
				</c:choose>
			</tbody>

			<!-- 마지막줄 -->
			<tfoot>
				<tr class="buttonline">
					<td class="buttonline"><button onclick="sel_del()">선택삭제</button></td>
					<td colspan="3" class="buttonline">
						<ol class="paging" >
							<!-- 이전 -->
							<c:choose>
								<c:when test="${pvo.beginBlock <= pvo.pagePerBlock}">
									<li class="disable">이전으로</li>
								</c:when>
								<c:otherwise>
									<li><a
										href="/MyController?cmd=admin_member_list&cPage=${pvo.beginBlock-pvo.pagePerBlock}">이전으로</a></li>
								</c:otherwise>
							</c:choose>
							<!-- 블록안에 들어간 페이지번호들 -->
							<c:forEach begin="${pvo.beginBlock }" end="${pvo.endBlock }"
								step="1" var="k">
								<!-- 현재 페이지와 현재 페이지가 아닌 것을 구분 -->
								<c:choose>
									<c:when test="${k==pvo.nowPage}">
										<li class="now">${k}</li>
									</c:when>
									<c:otherwise>
										<li><a
											href="/MyController?cmd=admin_member_list&cPage=${k}">${k}</a></li>
									</c:otherwise>
								</c:choose>
							</c:forEach>
							<!-- 다음 -->
							<c:choose>
								<c:when test="${pvo.endBlock >= pvo.totalPage}">
									<li class="disable">다음으로</li>
								</c:when>
								<c:otherwise>
									<li><a
										href="/MyController?cmd=admin_member_list&cPage=${pvo.beginBlock+pvo.pagePerBlock}">다음으로</a></li>
								</c:otherwise>
							</c:choose>
						</ol>
					</td>
					<td class="buttonline">
						<button onclick="write_go()">회원추가</button>
					</td>
				</tr>
			</tfoot>
		</table>
	</div>
</body>
</body>
</html>