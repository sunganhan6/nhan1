create database QLSV1;
use QLSV1
create table AMKHOA
(
makhoa char(10) not null primary key,
tenkhoa nvarchar(20)
)
go 
create table AMNGANH 
(
manganh char(10) not null primary key,
tennganh nvarchar(30),
makhoa char(10),
foreign key(makhoa) references AMKHOA(makhoa)
)
go
create table AMLOP
(
malop char(10) not null primary key,
tenlop nvarchar(15),
manganh char(10),
khoahoc int,
hedt nvarchar(15),
namnhaphoc int,
foreign key(manganh) references AMNGANH(manganh)
)
go
create table sinhvien
(
masv char(20) not null primary key,
hoten nvarchar(25),
malop char(10),
gioitinh bit,
ngaysinh datetime,
diachi nvarchar(30),
foreign key(malop) references AMLOP(malop)
)
go
create table DMHOCPHAN
(
mahp char(10) not null primary key,
tenhp nvarchar(15),
sodvht int,
manganh char(10),
hocky int
)
go
create table DIEMHP
(
masv char(20) not null,
malop char(10) not null,
diemhp numeric(4,1),
primary key(masv, mahp),
foreign key(mahp) references DMHOCPHAN(mahp),
foreign key(masv) references sinhvien(masv)
)