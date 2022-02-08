<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>우편 번호 검색</title>
<script type="text/javascript">
function setZipcode(zip1,zip2,addr){
	opener.document.forms[0].zipcode1.value=zip1;
	opener.document.forms[0].zipcode2.value=zip2;
	opener.document.forms[0].addr1.value=addr;
	self.close();
}
</script>
</head>
<body>

	<table width="370" border="0" cellspacing="0" cellpadding="5">
		<tr>
			<td>
				우편번호 검색
			</td>		
		</tr>
	</table>
	<form action="serchzipcodeProc.mgt" name="zipcodeform" method="post">
		<table width="370" border="0" cellspacing="0" cellpadding="5">
			<tr align="center">
				<td align="center">
					<font size="2">지역명 : </font>
					<input type="text" name="dong"/>
					<input type="submit" value="검색"><br>
					<font size="2">동을 입력하세요.(예:방배, 원천, 2글자 이상입력)</font>
				</td>
			</tr>
		</table>
	</form>
</body>
</html>