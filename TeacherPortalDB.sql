create database sample;
use sample;
create table ausers(auname varchar(10) primary key,apwd varchar(10));
insert into ausers values('admin','admin');
select * from ausers;
create table susers(suid varchar(10) primary key,spwd varchar(10),suname varchar(10),saddr varchar(10),scno varchar(10));
select * from susers;

delete from susers where suid = 'sai';

create table Lecturer(LTuid varchar(10) primary key,LTpwd varchar(10),LTuname varchar(10),
LTaddr varchar(10),LTcno varchar(10),LTdno varchar(10), LTdname varchar(20));

insert into Lecturer values('a1','a2', 'a3', 'a4', 'a5');

#drop table lecturer;

select * from Lecturer;
update Lecturer set LTdname= 'computers' where LTuid= 'sameera';

create table CourseSub(Cid varchar(10),Cname varchar(50),Sno varchar(10),
Sname varchar(50),Stype varchar(50), PRIMARY KEY(Cid,Sno), LTuid varchar(10), FOREIGN KEY (LTuid) references Lecturer(LTuid));

Insert into CourseSub values('33', 'MSc ComputerScience', 'CS201', 'InternetTechnology', 'Theory/practical', 'pooja');
Insert into CourseSub values('33', 'MSc ComputerScience', 'CS202', 'OperatingSystem', 'Theory/practical', 'sai');

select * from CourseSub;

drop table CourseSub;