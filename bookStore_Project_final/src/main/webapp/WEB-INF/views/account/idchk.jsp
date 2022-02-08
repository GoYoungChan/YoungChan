<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<title>아이디 중복</title>
</head>
<body bgcolor="#f5f5f5">
	<table width="360" border="0" cellspacing="0" cellpadding="5">
		<tr align="center">
		<td height="30">
			<font size="2">${IDcheck.bs_id}는 이미 사용 중인 아이디입니다.</font>
		</td>
		</tr>
	</table>
	
	<form action="idcheck.mgt" method="get" name="bs_id" >
	<table width="360" border="0" cellspacing="0" cellpadding="5">
		<tr>
		<td align="center">
			<font size="2">다른 아이디를 선택하세요.</font><p>
			<input type="text" size="10" maxlength="12" name="bs_id" id="bs_id"/>
			<input type="submit" value="중복확인" />
		</td>					
		</tr>
	</table>
	</form>
</body>
</html>
