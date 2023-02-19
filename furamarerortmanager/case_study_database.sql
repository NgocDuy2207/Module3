use furamaresortmanager;
-- cau 2:
select*from nhan_vien;
select*from nhan_vien
where substring_index(ho_ten, ' ', 1) regexp '^[HTKN]'
and char_length(ho_ten) <= 15;
-- cau 3: 
select*from khach_hang;
select*from khach_hang
where timestampdiff(year, ngay_sinh, now()) between 8 and 50
and(dia_chi like '%Quang Tri' or dia_chi like '%Da Nang%');
-- cau 4:








