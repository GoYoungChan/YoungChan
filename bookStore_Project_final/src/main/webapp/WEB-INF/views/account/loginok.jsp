<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 중</title>
<style type="text/css">
	a {text-decoration: none;}
	#lo {border: 1px solid black;}
	#nam {border-bottom: 1px solid black;}
</style>
</head>
<body>
		<form action="logout.mgt" method="post" name="loginform" onsubmit="return check()">
			<table id="lo" cellpadding="0" cellspacing="0" style="width: auto; height: auto;">
				<tr>
					<td id="nam" bgcolor="#3E7C17" style=font:inherit;color:white;" colspan="2">${userName}님 어서오세요</td>
					<td rowspan="2" align="center">
						<input type="submit" value="로그아웃" style="width: 100%; height: 70px;" >
					</td>
				</tr>
				<tr>
					<td><a href="userinfo.mgt?bs_id=${userID}">회원 정보 수정</a>
					<td><a href="mp_OrderSearch.mp?bs_id=${userID}">주문조회</a></td>
				</tr>
			</table>
		</form>
</body>
</html>