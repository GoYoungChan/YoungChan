<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이디 중복 사용가능</title>
<style type="text/css">
	table td {border: 1px solid black;}
	#content {background-color: orange;}
</style>
<script>
	function windowclose(){
		self.close();
	}
</script>

</head>
<body>
<%                                                                                       
     out.println(session);
     session.invalidate();
%>
	<table width="360" border="0" cellspacing="0" cellpadding="5">
		<tr>
			<td align="center" id="content">
				<font size="2">입력하신 ${IDcheck.bs_id}는 사용할 수 있는 아이디입니다.</font>
			</td>
		</tr>
		<tr>
			<td align="center">
				<input type="button" value="닫기" onclick="windowclose()" />
			</td>
		</tr>
	</table>
</body>
</html>