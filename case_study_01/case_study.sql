create database case_study_01;
use case_study_01;
create table loaiKhach(
idLoaiKhach int primary key auto_increment,
tenLoaiKhach varchar(45)
);
create table nhanVien(
idNhanVien int primary key auto_increment,
hoTen varchar(50) not null,
idViTri int,
idTrinhDo int,
idBoPhan int,
ngaySinh date not null,
cmnd varchar(20) not null,
luong double not null,
sdt varchar(20) not null,
email varchar(50) not null,
diaChi varchar(45) not null,
foreign key (idViTri) references viTri(idViTri),
foreign key (idTrinhDo) references trinhDo(idTrinhDo),
foreign key (idBoPhan) references boPhan(idBoPhan)
);
create table viTri(
idViTri int primary key auto_increment,
tenViTri varchar(45)
);
create table boPhan(
idBoPhan int primary key auto_increment,
tenBoPhan varchar(45)
);
create table trinhDo(
idTrinhDo int primary key auto_increment,
trinhDo varchar(45)
);
create table khachHang(
idKhachHang int primary key auto_increment,
idLoaiKhach int,
hoTen varchar(45),
ngaySinh date,
cmnd varchar(20),
sdt varchar(20),
email varchar(45),
diaChi varchar(45),
foreign key (idLoaiKhach) references loaiKhach(idLoaiKhach)
);
create table dichVu(
idDichVu int primary key auto_increment,
tenDichVu varchar(45) not null,
dienTich double not null,
soTang int not null,
soNguoiToiDa int not null,
chiPhiThue double,
idKieuThue int,
idLoaiDichVu int,
trangThai varchar(45) not null, 
foreign key (idKieuThue) references kieuThue(idKieuThue),
foreign key (idLoaiDichVu) references loaiDichVu(idLoaiDichVu)
);
create table kieuThue(
idKieuThue int primary key auto_increment,
tenKieuThue varchar(45),
gia double
);
create table loaiDichVu(
idLoaiDichVu int primary key auto_increment,
tenLoaiDichVu varchar(45)
);
create table dichVuDiKem(
idDichVuDiKem int primary key auto_increment,
tenDichVuDiKem varchar(45),
gia double,
donVi varchar(45),
trangThaiKhaDung varchar(45)
);
create table hopDong(
idHopDong int primary key auto_increment,
idNhanVien int,
idKhachHang int,
idDichVu int,
ngayLamHopDong date not null,
ngayKetThuc date not null,
tienDatCoc double not null,
tongTien double not null,
foreign key (idNhanVien) references nhanVien(idNhanVien),
foreign key (idKhachHang) references khachHang(idKhachHang),
foreign key (idDichVu) references dichVu(idDichVu)
);
create table hopDongChiTiet(
idHopDongChiTiet int primary key auto_increment,
idHopDong int,
idDichVuDiKem int,
soLuong int,
foreign key (idHopDong) references hopDong(idHopDong),
foreign key (idDichVuDiKem) references dichVuDiKem(idDichVuDiKem)
);
-- insert into nhanVien(idNhanVien,hoTen,idViTri,idTrinhDo,idBoPhan)
insert into loaiKhach(idLoaiKhach, tenLoaiKhach) values
(1,'Diamond'),
(2,'Platinium'),
(3,'Gold'),
(4,'Silver'),
(5,'Member');
insert into viTri(idViTri, tenViTri) values
(1,'Lễ tân'),
(2,'Phục vụ'),
(3,'Chuyên viên'),
(4,'Giám sát'),
(5,'Quản lý'),
(6,'Giám đốc');
insert into boPhan(idBoPhan, tenBoPhan) values
(1,'Sale'),
(2,'Marketing'),
(3,'Hành chính'),
(4,'Phục vụ'),
(5,'Quản lý');
insert into trinhDo(idTrinhDo, trinhDo) values
(1,'Trung cấp'),
(2,'Cao đẳng'),
(3,'Đại học'),
(4,'Sau đại học');
INSERT INTO `case_study_01`.`khachhang` (`idKhachHang`, `idLoaiKhach`, `hoTen`, `ngaySinh`, `cmnd`, `sdt`, `email`, `diaChi`) VALUES 
(1, 1, 'Tuyết Nhi', '1993/05/04', '201845342', '0909876743', 'nhi@gmail.com', 'Đà Nẵng'),
(2, 3, 'Văn Cường', '1958/11/14', '201845342', '0918784333', 'vancuong@gmail.com', 'Quảng Trị'),
(3, 1, 'Trần Lê', '1874/01/04', '201845342', '0906765655', 'xuanle@gmail.com', 'Huế'),
(4, 2, 'Xuân Khoác', '1988/07/28', '201845342', '0909231451', 'khoac@gmail.com', 'Đà Nẵng');
INSERT INTO `case_study_01`.`nhanvien` (`idNhanVien`, `hoTen`, `idViTri`, `idTrinhDo`, `idBoPhan`, `ngaySinh`, 
`cmnd`, `luong`, `sdt`, `email`, `diaChi`) 
VALUES (1, 'Hữu Hưng', 2, 2, 3, '1995/11/22', '201666868', 500, '0334904905', 'hung@gmail.com', 'Đà Nẵng'),
(2, 'Thùy Trang', 3, 1, 2, '1999/03/06', '201754985', 400, '0334905903', 'trang@gmail.com', 'Nghệ An'),
(3, 'Văn Hùng', 1, 4, 3, '1991/07/02', '236843854', 600, '0935353548', 'vanhung@gmail.com', 'Hội An'),
(4, 'Nguyễn Đình Khánh', 4, 3, 2, '1990/09/06', '201875972', 700, '0906687423', 'khanh@gmail.com', 'Quảng Nam'),
(5, 'Trần Thị Kim Chi', 3, 2, 1, '1989/12/30', '201485232', 500, '0901197832', 'chi@gmail.com', 'Đà Nẵng');
INSERT INTO `case_study_01`.`hopdong` (`idHopDong`, `idNhanVien`, `idKhachHang`, `idDichVu`, `ngayLamHopDong`, `ngayKetThuc`, `tienDatCoc`, `tongTien`) 
VALUES (1, 2, 1, 3, '2020/05/22', '2020/10/25', 200, 1000),
(2, 3, 3, 2, '2020/02/12', '2020/10/30', 150, 1100),
(3, 2, 2, 1, '2020/02/24', '2021/01/15', 300, 1500),
(4, 2, 1, 1, '2020/10/05', '2020/10/10', 100, 800);
INSERT INTO `case_study_01`.`dichvu` (`idDichVu`, `tenDichVu`, `dienTich`, `soTang`, `soNguoiToiDa`, `chiPhiThue`, `idKieuThue`, `idLoaiDichVu`, `trangThai`) VALUES 
(1, 'Villa', 100, 5, 15, 500, 1, 1, 'Còn phòng'),
(2, 'House', 80, 3, 10, 350, 2, 2, 'Còn phòng'),
(3, 'Room', 65, 3, 8, 200, 2, 1, 'Hết phòng');
-- task 2:
select * from nhanVien 
where (hoTen like 'H%' or hoTen like 'T%' or hoTen like 'K%') and hoTen < 16;
-- task 3:
select * from khachHang 
where ((year(now()) - year(khachHang.ngaySinh)) > 18 and (year(now()) - year(khachHang.ngaySinh)) < 50)
and (khachHang.diaChi = 'Đà Nẵng' or khachHang.diaChi = 'Quảng Trị');
-- task 4:
select khachHang.hoTen, count(hopdong.idKhachHang) from khachHang 
join hopDong on khachHang.idKhachHang = hopDong.idKhachHang
join loaiKhach on khachHang.idLoaiKhach = loaiKhach.idLoaiKhach
group by hopDong.idKhachHang
order by hopDong.idKhachHang;
-- task 5:
select khachHang.idKhachHang, khachHang.hoTen, loaiKhach.tenLoaiKhach, hopDong.idHopDong, dichVu.tenDichVu, hopDong.ngayLamHopDong,
hopDong.ngayKetThuc, (dichVu.chiPhiThue + (hopDongChiTiet.soLuong * dichVuDiKem.gia)) as 'tong tien' from khachHang
join loaiKhach on khachHang.idLoaiKhach = loaiKhach.idLoaiKhach 
join hopDong on hopDong.idKhachHang = khachHang.idKhachHang
join dichVu on dichVu.idDichVu = hopDong.idDichVu
join hopDongChiTiet on hopDongChiTiet.idHopDong = hopDong.idHopDong
join dichvudikem on dichvudikem.idDichVuDiKem = hopdongchitiet.idDichVuDiKem
group by khachhang.idKhachHang 
union
Select khachHang.idKhachHang, khachHang.hoTen, loaiKhach.tenLoaiKhach, 
hopDong.idHopDong, dichVu.tenDichVu, hopDong.ngayLamHopDong, hopDong.ngayKetThuc,
sum(dichVu.chiPhiThue) as 'tong tien'
from khachHang
join loaiKhach on khachHang.idLoaiKhach = loaiKhach.idLoaiKhach
join hopDong on khachHang.idKhachHang = hopDong.idKhachHang
join dichVu on hopDong.idDichVu = dichVu.idDichVu
group by khachHang.idKhachHang;

-- task 6
select dichVu.iddichvu, dichvu.tendichvu, dichvu.dientich, dichvu.chiphithue, loaidichvu.tenloaidichvu
from dichvu
left join loaidichvu on dichvu.idLoaiDichVu = loaidichvu.idLoaiDichVu
left join hopdong on dichvu.idDichVu = hopdong.iddichvu
where ((year(hopdong.ngaylamhopdong) < 2019))
group by dichvu.idDichVu
union
Select dichVu.iddichvu, dichvu.tendichvu, dichvu.dientich, dichvu.chiphithue, loaidichvu.tenloaidichvu 
from dichvu
left join loaidichvu on dichvu.idloaidichvu = loaidichvu.idLoaiDichVu
left join hopdong on dichvu.idDichVu = hopdong.iddichvu
where  hopdong.idHopDong = null;

select khachhang.idkhachhang, khachhang.hoten, loaikhach.tenloaikhach, hopdong.idhopdong, 
dichvu.tendichvu, hopdong.ngaylamhopdong, hopdong.ngayKetThuc, (dichvu.chiphithue + (hopdongchitiet.soLuong * dichvudikem.gia))
as 'tong tien' from khachhang
right join loaikhach on khachhang.idLoaiKhach = loaikhach.idLoaiKhach 
right join hopdong on hopdong.idKhachHang = khachhang.idKhachHang 
right join dichvu on dichvu.idDichVu = hopdong.idDichVu
right join hopdongchitiet on hopdongchitiet.idHopDong = hopdong.idHopDong 
right join dichvudikem on dichvudikem.idDichVuDiKem = hopdongchitiet.idDichVuDiKem
group by khachhang.idKhachHang
union
Select khachHang.idKhachHang, khachHang.hoTen, loaiKhach.tenLoaiKhach, 
hopDong.idHopDong, dichVu.tenDichVu, hopDong.ngayLamHopDong, hopDong.ngayKetThuc,
sum(dichVu.chiPhiThue) as 'tong tien'
from khachHang
right join loaiKhach on khachHang.idLoaiKhach = loaiKhach.idLoaiKhach
right join hopDong on khachHang.idKhachHang = hopDong.idKhachHang
right join dichVu on hopDong.idDichVu = dichVu.idDichVu
group by khachHang.idKhachHang;
