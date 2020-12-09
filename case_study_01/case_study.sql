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
where (hoTen like 'H%' or hoTen like 'T%' or hoTen like 'K%') and length(hoTen) < 16;
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
select khachhang.idkhachhang, khachhang.hoten, loaikhach.tenloaikhach, hopdong.idhopdong, 
dichvu.tendichvu, hopdong.ngaylamhopdong, hopdong.ngayKetThuc, hopdongchitiet.soLuong, dichvu.chiPhiThue, dichvudikem.gia, 
sum(dichvu.chiphithue + (hopdongchitiet.soLuong * dichvudikem.gia))
as 'tong tien' from khachhang
left join loaikhach on khachhang.idLoaiKhach = loaikhach.idLoaiKhach 
left join hopdong on hopdong.idKhachHang = khachhang.idKhachHang 
left join dichvu on dichvu.idDichVu = hopdong.idDichVu
left join hopdongchitiet on hopdongchitiet.idHopDong = hopdong.idHopDong 
left join dichvudikem on dichvudikem.idDichVuDiKem = hopdongchitiet.idDichVuDiKem
group by hopdong.idhopdong;

-- task 6
select dichVu.iddichvu, dichvu.tendichvu, dichvu.dientich, dichvu.chiphithue, loaidichvu.tenloaidichvu, hopdong.ngayLamHopDong 
from dichvu
join loaidichvu on dichvu.idLoaiDichVu = loaidichvu.idLoaiDichVu
join hopdong on dichvu.idDichVu = hopdong.iddichvu 
where not (month(hopdong.ngaylamhopdong) in (1,2,3) and year(hopdong.ngaylamhopdong) = 2019);

-- task 7
select dichvu.iddichvu, dichvu.tendichvu, dichvu.dientich, dichvu.soNguoiToiDa, dichvu.chiphithue, 
loaidichvu.tenloaidichvu from dichvu
join loaidichvu on loaidichvu.idLoaiDichVu = dichvu.idLoaiDichVu 
where exists(select hopdong.idhopdong from hopdong where year(hopdong.ngaylamhopdong) = '2018' and hopdong.iddichvu = dichvu.idDichVu)
and not exists(select hopdong.idhopdong from hopdong where year(hopdong.ngaylamhopdong) = '2019' and hopdong.iddichvu = dichvu.idDichVu);

-- task 8: hien thi thong tin hotenkhachhang khong trung nhau theo 3 cach
-- cach 1:
select khachhang.idkhachhang, khachhang.hoTen from khachhang group by khachhang.hoTen;
-- cach 2:
select distinct khachhang.hoten from khachhang;
-- cach3:
select khachhang.hoten from khachhang 
union
select khachhang.hoten from khachhang;
-- task 9
select month(hopdong.ngaylamhopdong) as 'thang', count(month(hopdong.ngaylamhopdong)) as 'so nguoi dat phong', 
sum(tongtien) as 'doanh thu thang'
from hopdong where year(hopdong.ngaylamhopdong) = 2019
group by month(hopdong.ngaylamhopdong)
order by month(hopdong.ngaylamhopdong);
-- task 10
select hopdong.idhopdong, hopdong.ngaylamhopdong, hopdong.ngayKetThuc, hopdong.tienDatCoc, 
count(hopdongchitiet.idDichVuDiKem) as SoLuongDichVuDiKem from hopdong
inner join hopdongchitiet on hopdong.idhopdong = hopdongchitiet.idhopdong 
group by hopdongchitiet.idhopdong;
-- task 11
-- select khachhang.idkhachhang, khachhang.hoten, dichvudikem.tendichvudikem from khachhang 
-- join hopdong on hopdong.idkhachhang = hopdong.idkhachhang
-- join hopdongchitiet on hopdongchitiet.idhopdong = hopdong.idHopDong
-- join dichvudikem on dichvudikem.idDichVuDiKem = hopdongchitiet.idDichVuDiKem 
-- join loaiKhach on loaikhach.idLoaiKhach = khachhang.idLoaiKhach 
-- where loaikhach.tenloaikhach = 'Diamond' and khachhang.diaChi in ('Vinh', 'Quảng Ngãi')
-- group by khachhang.idKhachHang;
select khachhang.idkhachhang, khachhang.hoten, dichvudikem.tendichvudikem from dichvudikem 
join hopdongchitiet on hopdongchitiet.idDichVuDiKem = dichvudikem.idDichVuDiKem 
join hopdong on hopdong.idHopDong = hopdongchitiet.idhopdong
join khachhang on khachhang.idkhachhang = hopdong.idkhachhang
join loaikhach on loaikhach.idLoaiKhach = khachhang.idloaikhach 
where loaikhach.tenloaikhach = 'Diamond' and (khachhang.diaChi = 'Vinh' or khachhang.diaChi = 'Quảng Ngãi');
-- task 12
Select hopdong.idhopdong, khachhang.hoten as tenKH, nhanvien.hoten as tenNV, khachhang.sdt, dichvu.tendichvu,
count(hopdongchitiet.iddichvudikem), hopdong.tiendatcoc from hopdong
left join nhanvien on nhanvien.idnhanvien = hopdong.idnhanvien
left join khachhang on khachhang.idkhachhang = hopdong.idkhachhang
left join dichvu on dichvu.iddichvu = hopdong.iddichvu
left join hopdongchitiet on hopdongchitiet.idhopdong = hopdong.idhopdong
left join dichvudikem on dichvudikem.iddichvudikem = hopdongchitiet.iddichvudikem 
where month(hopdong.ngaylamhopdong) in (10,11,12) and year(hopdong.ngaylamhopdong) = 2019
and khachhang.idkhachhang not in 
(select hopdong.idkhachhang from hopdong where month(hopdong.ngaylamhopdong) in(1,2,3,4,5,6))
group by khachhang.hoten;
-- task 13
-- Create view dichvudikem_max
-- as (select dichvudikem.tendichvudikem as ten, (sum(hopdongchitiet.soluong)) as tongtien from dichvudikem
-- join hopdongchitiet on hopdongchitiet.iddichvudikem = dichvudikem.idDichVuDiKem 
-- group by hopdongchitiet.idDichVuDiKem);
-- drop view dichvudikem_max;
-- select ten, max(tongtien) as tongtien from dichvudikem_max
-- group by ten
-- having (tongtien) in (select max(tongtien) from dichvudikem_max);
create temporary table bangtam
select dichvudikem.tendichvudikem as ten_dich_vu_di_kem, count(hopdongchitiet.iddichvudikem) as so_lan_su_dung from hopdongchitiet
inner join dichvudikem on dichvudikem.iddichvudikem = hopdongchitiet.iddichvudikem 
group by dichvudikem.tendichvudikem;
select * from bangtam;
create temporary table bangtam1 
select max(bangtam.so_lan_su_dung) as max_so_lan_su_dung from bangtam;
select * from bangtam1;
select bangtam.ten_dich_vu_di_kem, bangtam.so_lan_su_dung from bangtam 
inner join bangtam1 on bangtam.so_lan_su_dung = bangtam1.max_so_lan_su_dung;
drop temporary table bangtam;
drop temporary table bangtam1; 
-- task 14
select hopdong.idHopDong, loaidichvu.tenloaidichvu, dichvudikem.tendichvudikem, count(hopdongchitiet.iddichvudikem) as soLanSuDung 
from hopdong 
join dichvu on hopdong.iddichvu = dichvu.idDichVu 
join loaidichvu on loaidichvu.idLoaiDichVu = dichvu.idLoaiDichVu 
join hopdongchitiet on hopdongchitiet.idHopDong = hopdong.idHopDong 
join dichvudikem on dichvudikem.idDichVuDiKem = hopdongchitiet.idDichVuDiKem 
group by hopdongchitiet.idDichVuDiKem 
having solansudung = 1;
select hopdong.idhopdong, loaidichvu.tenloaidichvu, dichvudikem.tendichvudikem, count(hopdongchitiet.idDichVuDiKem) as so_lan_su_dung 
from hopdong 
inner join dichvu on hopdong.idhopdong = dichvu.idDichVu 
inner join loaidichvu on loaidichvu.idLoaiDichVu = dichvu.idloaidichvu 
inner join hopdongchitiet on hopdongchitiet.idhopdong = hopdong.idhopdong 
inner join dichvudikem on dichvudikem.idDichVuDiKem = hopdongchitiet.idDichVuDiKem 
group by dichvudikem.tendichvudikem having so_lan_su_dung = 1;
-- task 15
select nhanvien.idnhanvien, nhanvien.hoten, trinhdo.trinhdo, bophan.tenbophan, nhanvien.sdt, nhanvien.diachi, count(hopdong.idnhanvien) 
as soLanLamHopDong from nhanvien 
join trinhdo on trinhdo.idTrinhDo = nhanvien.idTrinhDo 
join bophan on bophan.idBoPhan = nhanvien.idBoPhan 
join hopdong on hopdong.idNhanVien = nhanvien.idNhanVien 
where year(hopdong.ngaylamhopdong) between 2018 and 2019 
group by hopdong.idNhanVien 
having solanlamhopdong < 4 order by nhanvien.idNhanVien;
-- task 16
SET SQL_SAFE_UPDATES = 0;
delete from nhanvien where not exists (select nhanvien.idNhanVien from hopdong 
where hopdong.ngaylamhopdong between '2017-01-01' and '2019-12-31' and hopdong.idnhanvien = nhanvien.idnhanvien); 
-- task 17
update khachhang set khachhang.idLoaiKhach = 1 where khachhang.idLoaiKhach = 2 and khachhang.idKhachHang in 
(select a from (select khachhang.idkhachhang as a from khachhang
join hopdong on khachhang.idKhachHang = hopdong.idKhachHang
where tongtien > 500 and year(ngaylamhopdong) = 2019
group by khachhang.idKhachHang) as view_tam);
update khachhang, (select hopdong.idKhachHang as id, sum(hopdong.tongtien) as tong_tien from hopdong 
where year(hopdong.ngaylamhopdong) = 2019 
group by hopdong.idkhachhang 
having tong_Tien > 500) as bangtam set khachhang.idloaikhach = (select loaikhach.idloaikhach from loaikhach 
where loaikhach.tenloaikhach = 'Diamond') where khachhang.idloaikhach = (select loaikhach.idloaikhach from loaikhach 
where loaikhach.tenloaikhach = 'Platinum') 
and bangtam.id = khachhang.idkhachhang;
-- task 18
delete khachhang, hopdong, hopdongchitiet from khachhang 
inner join hopdong on khachhang.idKhachHang = hopdong.idkhachhang 
inner join hopdongchitiet on hopdongchitiet.idHopDong = hopdong.idHopDong 
where not exists(select hopdong.idHopDong where year(hopdong.ngaylamhopdong) > '2016' and khachhang.idkhachhang = hopdong.idkhachhang);
-- task 19
update dichvudikem inner join (select dichvudikem.tendichvudikem as ten_dich_vu_di_kem 
from hopdongchitiet inner join dichvudikem on dichvudikem.idDichVuDiKem = hopdongchitiet.idDichVuDiKem 
group by dichvudikem.iddichvudikem 
having count(hopdongchitiet.idDichVuDiKem) > 3) as bangtam set dichvudikem.gia = dichvudikem.gia * 2 
where dichvudikem.tendichvudikem = bangtam.ten_dich_vu_di_kem;
-- task 20
select nhanvien.idnhanvien as id, nhanvien.hoten, nhanvien.email, nhanvien.sdt, nhanvien.ngaysinh, nhanvien.diachi, 'nhanvien' as tu_bang 
from nhanvien 
union all
select khachhang.idkhachhang as id, khachhang.hoten, khachhang.email, khachhang.sdt, khachhang.ngaySinh, khachhang.diaChi, 'khachhang' as fromtable 
from khachhang;
-- task 21
create view v_nhanvien as
select distinct nhanvien.* from nhanvien 
join hopdong on nhanvien.idNhanVien = hopdong.idNhanVien 
where nhanvien.diaChi = "Hải Châu" and hopdong.ngaylamhopdong = "2019-12-12";
SET SQL_SAFE_UPDATES = 0;
-- task22
update nhanvien set nhanvien.diachi = "Liên Chiểu" where idNhanVien in (select idNhanVien from v_nhanvien); 
-- task23
DELIMiTER //
create procedure sp_1(in idKhachHang int) 
BEGIN
	delete khachhang from khachhang where khachhang.idKhachHang = idKhachHang;
END //
DELIMITER ;
call sp_1(5);    
-- task 24
DELIMITER //
drop procedure if exists sp_2 //
create procedure sp_2(in idHopDong int, in idNhanVien int, in idKhachHang int, in idDichVu int, in ngaylamhopdong date, 
in ngayketthuc date, in tiendatcoc double, in tongtien double)
BEGIN
	set @x = (select count(idHopDong) from hopdong where hopdong.idHopDong = idHopDong group by hopdong.idHopDong);
    IF((@x is null))
	and (select idNhanVien from nhanvien where nhanvien.idNhanVien = idNhanVien) 
	and (select idKhachHang from khachhang where khachhang.idkhachhang = idKhachHang)
	and (select idDichVu from dichvu where dichvu.iddichvu = idDichVu) then 
    insert into hopDong values (idHopDong, idNhanVien, idKhachHang, idDichVu, ngaylamhopdong, ngayketthuc, tiendatcoc, tongtien);
    else 
    signal sqlstate '45000' set message_text = 'Du lieu sai';
    end if;
END //
DELIMITER ;
-- task 25
DELIMITER //
drop trigger if exists tr_1 //
create trigger tr_1 after delete on hopdong for each row
begin
	set @x = (select count(*) as count from hopdong);
end ; //
DELIMITER ;
set @x = 0;
delete from hopdong where hopdong.idhopdong = 10;
select @x as 'total amount deleted';
-- task 26 
DELIMITER //
drop trigger if exists tr_2 //
create trigger tr_2 after update on hopdong for each row 
begin 
	if datediff(new.ngayketthuc, old.ngaylamhopdong) < 2 then
    signal sqlstate '45000' set message_text = 'Ngay ket thuc phai lon hon ngay lam hop dong it nhat 2 ngay';
    end if;
end; //
DELIMITER //
update hopdong set ngayketthuc = '2018-02-20' where (idHopDong = '3');

