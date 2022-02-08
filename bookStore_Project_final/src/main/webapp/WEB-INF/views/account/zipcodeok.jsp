<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>우편 변호 검색</title>
<script>
function setZipcode(zip1,zip2,addr){
	opener.document.forms[0].MEMBER_ZIPCODE1.value=zip1;
	opener.document.forms[0].MEMBER_ZIPCODE2.value=zip2;
	opener.document.forms[0].MEMBER_ADDR1.value=addr;
	self.close();
}
</script>
</head>
<body>
<table width="370" border="0" cellspacing="0" cellpadding="5">
	<tr height="35">
		<td align="center" colspan="2">-검색결과-</td>
	</tr>
	<tr>
		<td>우편 번호</td><td>시/도</td><td>구/군</td><td>동</td>리<td>번지</td>
		<td>
			${zipcode.zipcode} ${zipcode.sido} ${zipcode.gugun} ${zipcode.dong} ${zipcode.ri} ${zipcode.bunji}
		</td>
	</tr>
	<tr>
		<td width="20%">
		<a href="#"	onclick="setZipcode(${zip1},${zip2},'${addr}')">
			<font size="2">${zipcode}</font>
		</a>
		</td>
		<td width="80%"><font size="2">${addr}</font></td>
	</tr>
	<tr>
		<td colspan="2" align="center">검색 결과가 없습니다.</td>
	</tr>
	</table>
</body>
</html>