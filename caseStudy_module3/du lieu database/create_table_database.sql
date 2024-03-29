CREATE DATABASE QuanLynghiduongFurama;
USE QuanLynghiduongFurama;



CREATE TABLE vi_tri (
ma_vi_tri INT PRIMARY KEY AUTO_INCREMENT,
ten_vi_tri VARCHAR(45)
);

CREATE TABLE trinh_do (
ma_trinh_do INT PRIMARY KEY AUTO_INCREMENT,
ten_trinh_do VARCHAR(45) default null
);

CREATE TABLE bo_phan (
ma_bo_phan INT PRIMARY KEY AUTO_INCREMENT,
ten_bo_phan VARCHAR(45) default null
);

CREATE TABLE nhan_vien (
ma_nhan_vien INT PRIMARY KEY AUTO_INCREMENT,
ho_ten VARCHAR(45) default null,
ngay_sinh DATE default null,
so_cmnd VARCHAR(45) default null,
luong DOUBLE default null,
so_dien_thoai VARCHAR(45) default null,
email VARCHAR(45) default null,
dia_chi VARCHAR(45) default null,
ma_vi_tri INT default null,
ma_trinh_do INT default null,
ma_bo_phan INT default null,
FOREIGN KEY (ma_vi_tri) REFERENCES vi_tri(ma_vi_tri),
FOREIGN KEY (ma_trinh_do) REFERENCES trinh_do(ma_trinh_do),
FOREIGN KEY (ma_bo_phan) REFERENCES bo_phan(ma_bo_phan)
);

CREATE TABLE loai_khach (
ma_loai_khach INT PRIMARY KEY AUTO_INCREMENT,
ten_loai_khach VARCHAR(45) default null
);

CREATE TABLE khach_hang (
ma_khach_hang INT PRIMARY KEY AUTO_INCREMENT,
ma_loai_khach INT default null,
ho_ten VARCHAR(45) default null,
ngay_sinh DATE default null,
gioi_tinh BIT(1) default null,
so_cmnd VARCHAR(45) default null,
so_dien_thoai VARCHAR(45) default null,
email VARCHAR(45) default null,
dia_chi VARCHAR(45) default null,
FOREIGN KEY (ma_loai_khach) REFERENCES loai_khach(ma_loai_khach)
);

CREATE TABLE kieu_thue (
ma_kieu_thue INT PRIMARY KEY AUTO_INCREMENT,
ten_kieu_thue VARCHAR(45) default null
);

CREATE TABLE loai_dich_vu (
ma_loai_dich_vu INT PRIMARY KEY AUTO_INCREMENT,
ten_loai_dich_vu VARCHAR(45) default null
);

CREATE TABLE dich_vu (
ma_dich_vu INT PRIMARY KEY AUTO_INCREMENT,
ten_dich_vu VARCHAR(45) default null,
dien_tich INT default null,
chi_phi_thue DOUBLE default null,
so_nguoi_toi_da INT default null,
ma_kieu_thue INT default null,
ma_loai_dich_vu INT default null,
tieu_chuan_phong VARCHAR(45) default null,
mo_ta_tien_nghi_khac VARCHAR(45) default null,
dien_tich_ho_boi DOUBLE default null,
so_tang INT default null,
FOREIGN KEY (ma_kieu_thue) REFERENCES kieu_thue(ma_kieu_thue),
FOREIGN KEY (ma_loai_dich_vu) REFERENCES loai_dich_vu(ma_loai_dich_vu)
);

CREATE TABLE dich_vu_di_kem (
ma_dich_vu_di_kem INT PRIMARY KEY AUTO_INCREMENT,
ten_dich_vu_di_kem VARCHAR(45) default null,
gia DOUBLE default null,
don_vi VARCHAR(10) default null,
trang_thai VARCHAR(45) default null
);

CREATE TABLE hop_dong (
ma_hop_dong INT PRIMARY KEY AUTO_INCREMENT,
ngay_lam_hop_dong DATETIME default null,
ngay_ket_thuc DATETIME default null,
tien_dat_coc DOUBLE default null,
ma_nhan_vien INT default null,
ma_khach_hang INT default null,
ma_dich_vu INT default null,
FOREIGN KEY (ma_nhan_vien) REFERENCES nhan_vien(ma_nhan_vien),
FOREIGN KEY (ma_khach_hang) REFERENCES khach_hang(ma_khach_hang),
FOREIGN KEY (ma_dich_vu) REFERENCES dich_vu(ma_dich_vu)
);

CREATE TABLE hop_dong_chi_tiet (
ma_hop_dong_chi_tiet INT PRIMARY KEY AUTO_INCREMENT,
ma_hop_dong INT default null,
ma_dich_vu_di_kem INT default null,
so_luong INT default null,
FOREIGN KEY (ma_hop_dong) REFERENCES hop_dong(ma_hop_dong),
FOREIGN KEY (ma_dich_vu_di_kem) REFERENCES dich_vu_di_kem(ma_dich_vu_di_kem)
);
