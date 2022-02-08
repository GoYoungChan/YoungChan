drop table reqBoard purge;

//문의게시판(requsetboard) 관리용
create table reqBoard (
	req_seq			number(5)		primary key,
	req_title		varchar2(30),
	req_content 	varchar2(2000),
	req_date	date	default sysdate
);

select * from reqBoard;

INSERT INTO reqBoard(req_seq, req_title, req_content) 
	VALUES ((select nvl(max(req_seq), 0)+1 from reqBoard),'테스트','테스트입니다');

select nvl(max(req_seq), 0)+1 from reqBoard; 


insert into reqBoard(req_seq, req_title, req_content) values ((select nvl(max(req_seq), 0)+1 from reqBoard), 'test입니다', '회원정보 서비스');
insert into reqBoard(req_seq, req_title, req_content) values ((select nvl(max(req_seq), 0)+1 from reqBoard), 'test입니다2', '테스트입니다.');



