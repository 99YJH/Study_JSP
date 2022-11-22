use aidev;
select * from tb_member;
select * from tb_point;
select * from tb_profile;
desc tb_member;

# SHA2
# 대표적인 단방향 암호화 해시함수
select sha2('Dbwogur123!', 256);
select sha2('angel1004!))$', 256);
# tb_member의 비밀번호 저장 크기를 변경
# 회원가입시 비밀번호를 SHA2를 이용하여 저장
# 로그인시 비밀번호를 SHA2로 체크하여 로그인
# insert into 테이블명 (필드..) values (?, sha2(?, 256), ?, ?)
# 서블릿으로 변화해서 작업
delete from tb_point;
delete from tb_member;
delete from tb_profile;
alter table tb_member modify mem_userpw varchar(255);