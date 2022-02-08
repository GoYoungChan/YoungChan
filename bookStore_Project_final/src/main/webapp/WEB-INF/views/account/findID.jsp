<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<!DOCTYPE html>
<html>
<head>
<script>
function formSubmit(){
	var forms = document.getElementById("findform");
	
	if ((forms.bs_name.value=="") ||
		(forms.bs_name.value.length<=1)){
		alert("이름을 정확히 입력해 주십시오.");
		forms.bs_name.focus();
        return false;
	}else if((forms.bs_email.value=="") ||
			(forms.bs_email.value.length<6)){
		alert("이메일을 정확히 입력해 주십시오.");
   		forms.bs_email.focus();
        return false;
 	}
	return true;
}

function windowclose(){
	self.close();
}
</script>
</head>
<body>
	<table width="450px" height="20px">
		<tr>
			<td align="left">
				<b>아이디 찾기</b>
			</td>
		</tr>
	</table>	
	<form action="findProc.mgt" method="post" name="findform" 
		onSubmit="return formSubmit();">
		<table width="450px" cellspacing="0" cellpadding="0" border="0">
			<thead>
				<font size="2">				
				&nbsp;&nbsp;&nbsp;&nbsp;
				이름과 이메일을 정확히 입력해주세요.
				<br/><br/><br/><br/></font>
			</thead>
			<tr>
				<td height="29" bgcolor="#F3F3F3">
					<font size="2">이름</font>
				</td>
				<td>
					&nbsp;
					<input type="text" name="bs_name" maxlength="12" size="14">
				</td>
			</tr>
			<tr>
				<td colspan="2" height="1"></td>
			</tr>
			<tr>
				<td height="29" bgcolor="#F3F3F3">
					<font size="2">이메일</font>
				</td>
				<td>
					&nbsp;
					<input type="text" name="bs_email" size="12" >
				</td>
			</tr>
			<tr>
				<td colspan="2" style="padding:10px 0 20px 0" align="center">
					<input type="submit" value="찾기">&nbsp;&nbsp;
					<input type="button" value="취소" onclick="windowclose()">
				</td>
			</tr>				
		</table>
	</form>	
</body>
</html>
