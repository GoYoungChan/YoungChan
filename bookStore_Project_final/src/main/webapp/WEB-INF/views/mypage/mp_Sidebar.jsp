<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지 | Sidebar</title>
<style type="text/css">
	ul {list-style: none;}
	#top {border-right: 1px dashed black;}
</style>
</head>

<body>   
	<!-- <input type="checkbox" id="sidebar"> -->
	<table id="top">
		<tr>
			<td>
				<table>
					<tr>
						<th>나의 정보</th>
					</tr>
					<tr>
						<td>
							<jsp:include page="../account/loginok.jsp" flush="true" />
						</td>
					</tr>
					<tr>
						<td>
						<div class="sidebar_content">주문내역
							<ul>
								<li><a href="mp_OrderSearch.mp">주문 조회/변경/취소</a></li>
								<li><a href="mp_ExcangeReturn.mp">반품/교환</a></li>
								<li><a href="mp_OrderCancle.mp">주문취소내역</a></li>
							</ul>
						</div>
					</td>
					</tr>
					<tr>
						<td>
						<div class="sidebar_content">커뮤니티
							<ul>
								<li><a href="mp_Request.mp">익명 게시판 작성</a></li>
								<li><a href="mp_RequestBoard.mp">익명 게시판 목록</a></li>
							</ul>
						</div>
						</td>
					</tr>
					<tr>
					<td>
						<div class="sidebar_content">회원정보
							<ul>
								<li><a href="userinfo.mgt?bs_id=${userID}">회원정보 수정</a></li>
								<li><a href="OutUser.mgt?bs_id=${userID}">회원탈퇴</a></li>
							</ul>
						</div>
					</td>
					</tr>
				</table>
			</td>
		</tr>
	</table>
</body>
</html>