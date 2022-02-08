-- 회원 관리 테이블 
/* **********
 * 작성자 : 조승우
 * 작성일자 : 21년 10월 27일
 * *********
 * 아이디
 * 비밀번호
 * 이름
 * 생년월일
 * 이메일
 * 이메일 수신 동의
 * 휴대폰
 * 우편번호
 * 주소
 * 상세주소
 * 가입 시간
 * 회원 권한
 * **********/
create table bsUsers (
	bs_id 				varchar2(20) primary key,
	bs_pass				varchar2(15) not null,
	bs_name 			varchar2(20),
	bs_birth 			varchar2(20),
	bs_email 			varchar2(25),
	bs_email_get		varchar2(25),
	bs_phone 			varchar2(13),
	bs_zipcode 			varchar2(13),
	bs_addr1 			varchar2(70),
	bs_addr2 			varchar2(70),
	oder_member			number,
	join_date 			date	default sysdate,
	role 				varchar2(5)
);

select * from bsUsers;

-- 주소코드
/* *********
 * 주소 넘버
 * 우편번호
 * 시
 * 구
 * 동
 * 리
 * 번지
 * **********/

create table zipcode (
  id 		number,
  zipcode 	varchar2(7),
  sido 		varchar2(10),
  gugun 	varchar2(30),
  dong 		varchar2(36),
  ri 		varchar2(60),
  bunji 	varchar2(50),
  primary key (id)
);

select * from zipcode;





















