<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 폼</title>
<script>
function check(){
	var id=loginform.bs_id.value;
	var pass=loginform.bs_pass.value;
	
	if(id.length == 0){
		alert("아이디를 입력하세요.");
		loginForm.bs_id.focus();
		return false;
	}
	if(pass.length == 0){
		alert("비밀번호를 입력하세요.");
		loginForm.bs_pass.focus();
		return false;
	}
	
	return true;
}

function openConfirmId(){	
	var url="findID.mgt";
	open(url, "confirm", "toolbar=no,location=no,status=no,menubar=no,"+
						 "scrollbars=no,resizable=no,width=500px,height=300");
}

function openConfirmpw(){	
	var url="findPW.mgt";
	open(url, "confirm", "toolbar=no,location=no,status=no,menubar=no,"+
						 "scrollbars=no,resizable=no,width=500px,height=300");
}

</script>
</head>
<body>
	<center>
		<h1>로그인</h1>
		<hr>
		<form action="login.mgt" method="post" name="loginform" onsubmit="return check()">
			<table border="1" cellpadding="0" cellspacing="0" style="width: auto; height: auto;">
				<tr>
					<td bgcolor="orange">아이디</td>
					<td><input type="text" name="bs_id" value="${usr.bs_id}"></td>
					<td rowspan="3" align="center">
						<input type="submit" value="로그인" style="width: 90px; height: 75px;" >
					</td>
				</tr>
				<tr>
					<td bgcolor="orange">비밀번호</td>
					<td><input type="password" name="bs_pass" value="${usr.bs_pass}"></td>

				</tr>
				<tr>
					<td height=35 colspan=2 align="center">
						<input type="button" value="회원가입" onclick="javascript:window.location='join.mgt'"
							style="width: auto;; height: auto;;">
						<input type="button" value="아이디 찾기" onclick="openConfirmId(this.form)"
							style="width: auto;; height: auto;;">
						<input type="button" value="비밀번호 찾기" onclick="openConfirmpw(this.form)"
							style="width: auto;; height: auto;;">
					</td>
				</tr>
				<tr>
					<td colspan="3"  style="padding: 15 0 15 70;">
					<table width="400" border="0" cellspacing="0" cellpadding="0">
						<tr>
							<td width="8"><img src="#" width="8" height="7"></td>
							<td width="392">
								<font size=2 color="565656">
								아이디가 없을 경우 '회원가입'을 클릭하십시오.
								</font>
							</td>
						</tr>
						<tr>
							<td><img src="#" width="8" height="7"></td>
							<td>
								<font size=2 color="565656">
								아이디 또는 비밀번호를 잊어버렸을 경우 '아이디/비밀번호 찾기'를 클릭하십시오.
								</font>
							</td>
						</tr>
					</table>
					</td>
				</tr>
			</table>
		</form>
	</center>
</body>
</html>