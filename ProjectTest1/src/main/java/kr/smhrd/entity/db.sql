create table tblBoard(
	idx int not null auto_increment, -- 번호(자동증가 컬럼)
	memId varchar(30) not null, -- 회원 아이디
	title varchar(100) not null, -- 제목
	content varchar(2000) not null, -- 내용
	writer varchar(30) not null, -- 작성자
	indate datetime default now(), -- 작성일
	count int default 0, -- 조회수
	primary key(idx)
);

drop table tblBoard;

insert into tblBoard(title, content, writer, memId)
values('게시글 1', '게시글 1', '관리자', 'smhrd01');

insert into tblBoard(title, content, writer, memId)
values('게시글 2', '게시글 2', '홍길동', 'smhrd02');

insert into tblBoard(title, content, writer, memId)
values('게시글 3', '게시글 3', '김길동', 'smhrd03');

select * from tblBoard;

create table tblMember(
	memId varchar(30) not null,
	memPwd varchar(30) not null,
	memName varchar(30) not null,
	primary key(memId)
);

insert into tblMember values('smhrd01','smhrd01','관리자');
insert into tblMember values('smhrd02','smhrd02','홍길동');
insert into tblMember values('smhrd03','smhrd03','김길동');

select  * from tblMember;