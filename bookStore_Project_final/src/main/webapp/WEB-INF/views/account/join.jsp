<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 가입</title>
<script type="text/javascript">
	function check(){
		var id = document.forms["joinform"]["bs_id"].value;
		var pass = document.forms["joinform"]["bs_pass"].value;
		var pass_check = document.forms["joinform"]["bs_pass_check"].value;
		var name = document.forms["joinform"]["bs_name"].value;
		var birth = document.forms["joinform"]["bs_birth"].value;
		var email1 = document.forms["joinform"]["bs_email1"].value;
		var email2 = document.forms["joinform"]["bs_email2"].value;
		var phone = document.forms["joinform"]["bs_phone"].value;
		var zipcode1 = document.forms["joinform"]["zipcode1"].value;
		var zipcode2 = document.forms["joinform"]["zipcode2"].value;
		var addr1 = document.forms["joinform"]["bs_addr1"].value;
		var addr2 = document.forms["joinform"]["bs_addr2"].value;
		
		if(!id){
			alert("아이디를 입력하세요.");
			document.joinform.bs_id.focus();
			return false;
		}
		if(!pass){
			alert("비밀번호를 입력하세요.");
			document.joinform.bs_pass.focus();
			return false;
		} 
		if(!pass_check){
			alert("비밀번호 확인창을 입력하세요.")
			document.joinform.bs_pass_check.focus();
			return false;
		}
		if(pass != pass_check){
			alert("비밀번호가 일치하지 않습니다.");
			document.joinform.bs_pass.focus();
			return false;
		}
		if ((!name)||(name.length<=1)){
			alert("이름을 제대로 입력해 주세요.");
			document.joinform.bs_name.focus();
	        return false;
		}
		if((!birth)||(birth.length<6)){
			alert("생년월일 6자리를 입력해 주세요.");
			document.joinform.bs_birth.focus();
	        return false;
	 	}
		if((!email1) || (!email2)){
			alert("이메일을 제대로 입력하세요.");
			document.joinform.bs_email1.focus();
			return false;
		}
		if(!phone){
			alert("연락처를 입력하세요.");
			document.joinform.bs_phone.focus();
			return false;
		} 
		if((zipcode1 == 0) && (zipcode2 == 0)){
			alert("우편 변호를 입력해 주세요.");
			document.joinform.zipcode1.focus();
	        return false;
	    }		
		if((zipcode1 == 0) || (zipcode1.length<3)){
			alert("우편번호 앞의 3자리를 입력해 주세요.");
			document.joinform.zipcode1.focus();
	        return false;
	 	}
		if((zipcode2 == 0) || (zipcode2.length<3)){
			alert("우편번호 뒤의 3자리를 입력해 주세요.");
			document.joinform.zipcode2.focus();
	        return false;
	 	}
		if(!addr1){
			alert("집 주소를 입력하세요.");
			document.joinform.bs_addr1.focus();
			return false;
		} 
		if(!addr2){
			alert("상세 주소를 입력하세요.");
			document.joinform.bs_addr2.focus();
			return false;
		} 
	}
	
	function openConfirmid(joinform){			
		var bs_id=joinform.bs_id.value;
		var url="PBI.mgt"
		
		/* ?bs_id="+joinform.bs_id.value; */
		
		if(bs_id.length == 0){
			alert("아이디를 입력하세요.");
			joinform.bs_id.focus();
			return false;
		}
		
		open(url, "confirm", "toolbar=no,location=no,status=no,menubar=no,"+
							 "scrollbars=no,resizable=no,width=400,height=200");
	}
	function openZipcode(joinform){			
		var url="serchzipcode.mgt"
		open(url, "confirm", "toolbar=no,location=no,"
							+"status=no,menubar=no,"
							+"scrollbars=yes,resizable=no,"
							+"width=410,height=400");
	}
	
	function gNumCheck(){
		if(event.keyCode >=48 && event.keyCode <=57) {
			return true;
		}else{
			event.returnValue=false;	
		}
	}		

	function email_change() {
		var target = document.joinform.adressBox;
		
		if (target.options[target.selectedIndex].text  == "직접입력") { // 직접입력
			document.joinform.bs_email2.disabled = false;
			document.joinform.bs_email2.value = "";
			document.joinform.bs_email2.focus();
		}else if(target.options[target.selectedIndex].text  == "선택"){ // 선택
			document.joinform.bs_email2.disabled = true;
			document.joinform.bs_email2.value = "";
		}else { // 그외
			document.joinform.bs_email2.disabled = false;
			document.joinform.bs_email2.value = target.options[target.selectedIndex].value;
		}
	}
</script>
</head>
<body>

	<table width="auto" cellspacing="0" cellpadding="0" border="0" align="center">
		<tr>
		<td colspan=2>
		<!-- 회원가입 시작 -->
		<h1>회원 가입</h1>
		<form action="joinProc.mgt" name="joinform" onsubmit="return check()" method="post" >
			<p align="center">
			<table border="1" style="width: auto; height: auto;" cellpadding="0" cellspacing="0">
				<tr>
					<td bgcolor="#f5f5f5" style="text-align: center;">아이디</td>
					<td><input type="text" name="bs_id" size="10" maxlength="15">
						<input type="button" name="confirm_id" value="중복확인" onclick="openConfirmid(this.form)" >
					</td>
				</tr>
				<tr>
					<td bgcolor="#f5f5f5" style="text-align: center;">비밀번호</td>
					<td><input type="password" name="bs_pass" size="15"></td>
				</tr>
				<tr>
					<td bgcolor="#f5f5f5" style="text-align: center;">비밀번호 확인</td>
					<td><input type="password" name="bs_pass_check" size="15"></td>
				</tr>
				<tr>
					<td colspan="2" style="text-align: center;">
						<font size="2">
							(아이디와 비밀번호는 문자와 숫자를 조합하여 2~12자리로 만들어 주세요)
						</font>
					</td>
				</tr>
				<tr>
					<td style="text-align: center;" bgcolor="#f5f5f5">이름</td>
					<td><input type="text" name="bs_name" size="20" ></td>
				</tr>
				<tr>
					<td style="text-align: center;" bgcolor="#f5f5f5">생년월일</td>
					<td><input type="text" name="bs_birth" size="20" maxlength="6"></td>
				</tr>
				<tr>
					<td style="text-align: center;" bgcolor="#f5f5f5">이메일</td>
					<td>
						<input type="text" name="bs_email1"> @
                     	<input type="text" name="bs_email2" id="bs_email2" value="" disabled />
						<select name="adressBox" id="adressBox" onchange="email_change()">
                          <option>선택</option>
                          <option>직접입력</option>
                          <option value="naver.com">naver.com</option>
                          <option value="kakao.com">kakao.com</option>
                          <option value="daum.net">daum.net</option>
                          <option value="gmail.com">gmail.com</option>
                          <option value="nate.com">nate.com</option>
                        </select>
					</td>
				</tr>
				<tr>
					<td style="text-align: center;" bgcolor="#f5f5f5">메일 수신 여부</td>
					<td>
						<input type="radio" name="bs_email_get" value="yes" checked >
						<label for="yes">수신</label>
						<input type="radio" name="bs_email_get" value="no" >
						<label for="no">수신안함</label>
					</td>
				</tr>
				<tr>
					<td style="text-align: center;" bgcolor="#f5f5f5">연락처</td>	
					<td>
						<input type="text" name="bs_phone" siez="13" maxlength="11">
					</td>
				</tr>
				<tr>
					<td colspan="2" style="text-align: center;" bgcolor="#f5f5f5">
						(숫자만 입력해주세요)
					</td>
				</tr>
				<tr>
					<td bgcolor="#f5f5f5"  style="text-align: center;">
						<font size="2">우편번호</font>
					</td>
					<td>
					<input type="text" name="zipcode1" size="6" 
						onkeypress="gNumCheck()" maxlength="3"/> -
					<input type="text" name="zipcode2" size="6" 
						onkeypress="gNumCheck()" maxlength="3" />&nbsp;&nbsp;
					<input type="button" name="zipcode" value="우편번호 검색" 
						onclick="openZipcode(this.form)" />
					</td>
				</tr>
				<tr>
					<td style="text-align: center;" bgcolor="#f5f5f5">
						집주소
					</td>
					<td>
						<input type="text" name="bs_addr1" size="50">
					</td>
				</tr>
				<tr>	
					<td style="text-align: center;" bgcolor="#f5f5f5">
						상세주소
					</td>
					<td>
						<input type="text" name="bs_addr2" size="50">
					</td>
				</tr>
				<tr>
					<td align="center" colspan="2">
						<input type="submit" value="가입">
						&nbsp;&nbsp;
						<input type="button" value="취소" onclick="history.back(-1)">
						<a href="javascript:history.back(-1)"></a>
					</td>
				</tr>
			</table>
		</form>
		<!-- 회원가입 종료 -->
		</td>
		</tr>
	</table>
</body>
</html>