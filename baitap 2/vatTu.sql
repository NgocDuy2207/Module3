-- create database baitap2;
create table PhieuXuat
(
SoPX int(11) primary key,
NgayXuat date
);
create table VatTu
(
MaVTU varchar(50) primary key,
TenVTu varchar(10)
);
-- 1:Chi tiết phiếu xuất;
create table quanlyxuatvtu
(
SoSanPham varchar(10) primary key ,
DGxuat float,
SLXuat float
);

create table PhieuNhap
(
SoPN int(11),
NgayNhap date
);
-- 2:chi tiết phiếu nhập;
create table QuanLyNhapVtu
(
SoSanPham varchar(10) primary key,
DGNhap float,
SLNhap float
);
create table dondh
(
SoDH int primary key,
NgayDH date
);
create table nhacc
(
MaNCC varchar(50) primary key,
TenNCC varchar(50),
DiaChi varchar(255)
);
-- 3: Chi tiet đơn đặt hàng;
create table chitietdondathang
(
SLMaVtu int
);
-- 4: Cung Cấp;

-- table SDT da tri
create table SDT

(
maNCC int,
foreign key (maNCC) REFERENCES nhacc,
SDT int 
);








