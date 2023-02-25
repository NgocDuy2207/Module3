use furamaresortmanager;
-- cau 2:
select*from nhan_vien;
select*from nhan_vien
where substring_index(ho_ten, ' ', 1) regexp '^[HTK]'
and char_length(ho_ten) <= 15;
-- cau 3: 
select*from khach_hang;
select*from khach_hang
where timestampdiff(year, ngay_sinh, now()) between 8 and 50
and(dia_chi like '%Quang Tri%' or dia_chi like '%Da Nang%');

-- cau 4:
-- cach 1
select kh.ma_khach_hang, kh.ho_ten, count(hd.ma_khach_hang) as `so lan dat`
from khach_hang kh
JOIN loai_khach lk USING(ma_loai_khach)
JOIN hop_dong hd USING (ma_khach_hang)
where lk.ten_loai_khach = 'Diamond'
group by hd.ma_khach_hang
order by count(hd.ma_khach_hang);
-- cach 2:
select kh.ma_khach_hang, kh.ho_ten, count(hd.ma_khach_hang) as `so lan dat`
from khach_hang kh inner join loai_khach lk on kh.ma_loai_khach = lk.ma_loai_khach
inner join hop_dong hd on kh.ma_khach_hang = hd.ma_khach_hang
where lk.ten_loai_khach = 'Diamond'
group by hd.ma_khach_hang
order by count(hd.ma_khach_hang);
-- cau 5
select * from khach_hang kh inner join hop_dong hd on kh.ma_khach_hang = hd.ma_khach_hang where kh.ho_ten = 'Dương Văn Quan';
select DISTINCT    kh.ma_khach_hang, kh.ho_ten, lk.ten_loai_khach, hd.ma_hop_dong, dv.ten_dich_vu, hd.ngay_lam_hop_dong, hd.ngay_ket_thuc, 
(dv.chi_phi_thue+ hdct.so_luong*dvdk.gia) as `Tổng Tiền`
from khach_hang kh 
inner join hop_dong hd on kh.ma_khach_hang = hd.ma_khach_hang 
inner join loai_khach lk on kh.ma_loai_khach = lk.ma_loai_khach
inner join dich_vu dv on hd.ma_dich_vu = dv.ma_dich_vu
left join hop_dong_chi_tiet hdct on hd.ma_hop_dong = hdct.ma_hop_dong
left join dich_vu_di_kem dvdk on dvdk.ma_dich_vu_di_kem = hdct.ma_dich_vu_di_kem
order by kh.ma_khach_hang;

-- cau 6:

select dv.ma_dich_vu, dv.ten_dich_vu, dv.dien_tich, dv.chi_phi_thue, ldv.ten_loai_dich_vu
from dich_vu dv, hop dong
inner join loai_dich_vu ldv on dv.ma_loai_dich_vu = ldv.ma_loai_dich_vu
and (hop_dong.ngay_lam_hop_dong < '2021-01-31' and hop_dong.ngay_lam_hop_dong > '2021-03-31')
order by dv.ma_dich_vu;
-- cau 7:
select dv.ma_dich_vu, dv.ten_dich_vu, dv.dien_tich, dv.so_nguoi_toi_da, dv.chi_phi_thue, ldv.ten_loai_dich_vu
from dich_vu dv
join loai_dich_vu ldv on dv.ma_loai_dich_vu = ldv.ma_loai_dich_vu
where
	exists (select 1 from hop_dong where dv.ma_dich_vu = ma_dich_vu and year(ngay_lam_hop_dong) = 2020)
    and not exists (select 1 from hop_dong where dv.ma_dich_vu = ma_dich_vu and year(ngay_lam_hop_dong) = 2021);
-- câu 8:
-- cach 1
select distinct ho_ten
from khach_hang;
-- cach 2:
select ho_ten
from khach_hang
group by ho_ten;
-- cach 3:
select ho_ten
from khach_hang
union
select ho_ten
from khach_hang;
-- cau 10:
select hd.ma_hop_dong, hd.ngay_lam_hop_dong, hd.ngay_ket_thuc, hd.tien_dat_coc, ifnull(sum(hdct.so_luong), 0) as `so luong`
from hop_dong hd
left join hop_dong_chi_tiet hdct on hdct.ma_hop_dong = hd.ma_hop_dong
group by hd.ma_hop_dong;
-- cau 11: Hiển thị thông tin các dịch vụ đi kèm đã được sử dụng bởi những khách hàng có ten_loai_khach là “Diamond” và có dia_chi ở “Vinh” hoặc “Quảng Ngãi”.
-- cach 1:
select dvdk.ma_dich_vu_di_kem, dvdk.ten_dich_vu_di_kem
from dich_vu_di_kem dvdk
left join hop_dong_chi_tiet hdct on hdct.ma_dich_vu_di_kem = dvdk.ma_dich_vu_di_kem
left join hop_dong hd on hd.ma_hop_dong = hdct.ma_hop_dong
left join khach_hang kh on kh.ma_khach_hang = hd.ma_khach_hang
left join loai_khach lk on lk.ma_loai_khach = kh.ma_loai_khach
where
lk.ten_loai_khach = 'Diamond'
and(kh.dia_chi like	'%Quang Ngai%' or kh.dia_chi like '%Vinh%');
-- cach 2: 
SELECT
    ma_dich_vu_di_kem,
    ten_dich_vu_di_kem
from
    dich_vu_di_kem
    JOIN hop_dong_chi_tiet USING (ma_dich_vu_di_kem)
    JOIN hop_dong hd USING (ma_hop_dong)
    JOIN khach_hang USING (ma_khach_hang)
    JOIN loai_khach USING (ma_loai_khach)
WHERE
    ten_loai_khach = 'Diamond'
    and (
        dia_chi like '%Vinh%'
        or dia_chi like '%Quang Ngai%'
    );
    
    -- câu 12:	Hiển thị thông tin ma_hop_dong, ho_ten (nhân viên), ho_ten (khách hàng), so_dien_thoai (khách hàng), ten_dich_vu, so_luong_dich_vu_di_kem (được tính dựa trên việc sum so_luong ở dich_vu_di_kem), tien_dat_coc của tất cả các dịch vụ đã từng được khách hàng đặt vào 3 tháng cuối năm 2020 nhưng chưa từng được khách hàng đặt vào 6 tháng đầu năm 2021.
	select hd.ma_hop_dong, 
			nv.ma_nhan_vien,
            kh.ma_khach_hang,
            kh.so_dien_thoai,
            dv.ma_dich_vu,
            dv.ten_dich_vu,
            sum(hdct.so_luong) as so_luong_dich_vu_di_kem,
            sum(hd.tien_dat_coc) as tien_dat_coc
	from
			hop_dong hd
            left join nhan_vien nv using(ma_nhan_vien)
            left join dich_vu dv using(ma_dich_vu)
            left join khach_hang kh using(ma_khach_hang)
            
            left join hop_dong_chi_tiet hdct using(ma_hop_dong)
            left join dich_vu_di_kem dvdk using(ma_dich_vu_di_kem)
            
	where 
		(hd.ngay_lam_hop_dong between '2020-10-01' and '2020-12-31')
        and
        (hd.ngay_lam_hop_dong not between '2021-01-01' and '2021-06-30')
	group by hd.ma_hop_dong;
    -- cau 13:Hiển thị thông tin các Dịch vụ đi kèm được sử dụng nhiều nhất bởi các Khách hàng đã đặt phòng. (Lưu ý là có thể có nhiều dịch vụ có số lần sử dụng nhiều như nhau).
	select dvdk.ma_dich_vu_di_kem, 
    dvdk.ten_dich_vu_di_kem, 
    sum(hdct.so_luong) as so_luong_dich_vu_di_kem
    from dich_vu_di_kem dvdk
    inner join hop_dong_chi_tiet hdct on dvdk.ma_dich_vu_di_kem = hdct.ma_dich_vu_di_kem
    group by hdct.ma_dich_vu_di_kem
    order by sum(hdct.so_luong) desc;
    
   
	-- select * from (select dvdk.ma_dich_vu_di_kem, 
--     dvdk.ten_dich_vu_di_kem, 
--     sum(hdct.so_luong) as so_luong_dich_vu_di_kem
--     from dich_vu_di_kem dvdk
--     inner join hop_dong_chi_tiet hdct on dvdk.ma_dich_vu_di_kem = hdct.ma_dich_vu_di_kem)
--     -- group by hdct.ma_dich_vu_di_kem
--     -- order by sum(hdct.so_luong) desc);
--     where so_luong_dich_vu_di_kem = (select max(so_luong_dich_vu_di_kem) from(select dvdk.ma_dich_vu_di_kem, 
--     dvdk.ten_dich_vu_di_kem, 
--     sum(hdct.so_luong) as so_luong_dich_vu_di_kem
--     from dich_vu_di_kem dvdk
--     inner join hop_dong_chi_tiet hdct on dvdk.ma_dich_vu_di_kem = hdct.ma_dich_vu_di_kem
--     group by hdct.ma_dich_vu_di_kem
--     order by sum(hdct.so_luong) desc));

    
-- cau 14:	Hiển thị thông tin tất cả các Dịch vụ đi kèm chỉ mới được sử dụng một lần duy nhất. Thông tin hiển thị bao gồm ma_hop_dong, ten_loai_dich_vu, ten_dich_vu_di_kem, so_lan_su_dung (được tính dựa trên việc count các ma_dich_vu_di_kem)
select ma_hop_dong, 
		ldv.ten_loai_dich_vu,
        dvdk.ten_dich_vu_di_kem,
        (count(hdct.ma_dich_vu_di_kem) = 1) as su_dung_1_lan
        from hop_dong
        left join dich_vu using(ma_dich_vu)
        left join loai_dich_vu ldv using(ma_loai_dich_vu)
        left join hop_dong_chi_tiet hdct using(ma_hop_dong)
        left join dich_vu_di_kem dvdk using(ma_dich_vu_di_kem)
        group by ma_dich_vu_di_kem
        having su_dung_1_lan = 1;
-- cau 15:	Hiển thi thông tin của tất cả nhân viên bao gồm ma_nhan_vien, ho_ten, ten_trinh_do, ten_bo_phan, so_dien_thoai, dia_chi  mới chỉ lập được tối đa 3 hợp đồng từ năm 2020 đến 2021.
select ma_nhan_vien,
		ho_ten,
        td.ten_trinh_do,
        bp.ten_bo_phan,
        so_dien_thoai,
        dia_chi
        -- count(hd.ma_nhan_vien) as tong_so_hop_dong
from nhan_vien
	left join trinh_do td using(ma_trinh_do)
    left join bo_phan bp using(ma_bo_phan)
    left join hop_dong hd using(ma_nhan_vien)
    where
    year(hd.ngay_lam_hop_dong) between 2020 and 2021
    group  by hd.ma_nhan_vien
    having count(hd.ma_nhan_vien) <=3 ;
    -- cau 16:	Xóa những Nhân viên chưa từng lập được hợp đồng nào từ năm 2019 đến năm 2021. dùng thêm lệnh drop phía trước là xoá
    select nv.ma_nhan_vien, nv.ho_ten 
    from
    nhan_vien nv
    where not exists(
		select * from hop_dong hd
        where hd.ma_nhan_vien = nv.ma_nhan_vien
        and year(hd.ngay_lam_hop_dong) between 2019 and 2021
    );
    -- cau 17: 
    -- cau 18:	Xóa những khách hàng có hợp đồng trước năm 2021 (chú ý ràng buộc giữa các bảng).
	delete from khach_hang kh where exists(
    select kh.ma_khach_hang, kh.ho_ten
    from khach_hang kh
    inner join hop_dong hd on hd.ma_khach_hang = kh.ma_khach_hang
    where year(ngay_lam_hop_dong) < 2021);
    
    -- cau 19: Cập nhật giá cho các dịch vụ đi kèm được sử dụng trên 10 lần trong năm 2020 lên gấp đôi
    -- cau 20:	Hiển thị thông tin của tất cả các nhân viên và khách hàng có trong hệ thống, thông tin hiển thị bao gồm id (ma_nhan_vien, ma_khach_hang), ho_ten, email, so_dien_thoai, ngay_sinh, dia_chi.  
    
	select ma_nhan_vien as id,
		ho_ten,
        email,
        so_dien_thoai,
        ngay_sinh,
        dia_chi
	from nhan_vien
    union all
    select ma_khach_hang as id,
			ho_ten,
            email,
            so_dien_thoai,
            ngay_sinh,
            dia_chi
	from khach_hang;

-- cau 21: Tạo khung nhìn có tên là v_nhan_vien để lấy được thông tin của tất cả các nhân viên có địa chỉ là “Hải Châu” và đã từng lập hợp đồng cho một hoặc nhiều khách hàng bất kì với ngày lập hợp đồng là “12/12/2019”.
create view v_nhan_vien
as select * from nhan_vien nv
join hop_dong using(ma_nhan_vien)
where dia_chi like 'Đà Nẵng'
and year(ngay_lam_hop_dong) = 2021;



create view v_nhan_vien_2 as
select
    ma_nhan_vien,
    ho_ten,
    dia_chi,
    so_dien_thoai
from
    nhan_vien
    JOIN hop_dong USING(ma_nhan_vien)
WHERE
    dia_chi like '%Đà Nẵng%';





-- With count_used AS (
    SELECT
        ma_dich_vu_di_kem,
        ten_dich_vu_di_kem,
        sum(so_luong) tong_so_luong_dvdk
    FROM
        dich_vu_di_kem
        JOIN hop_dong_chi_tiet USING(ma_dich_vu_di_kem)
    GROUP by
        ma_dich_vu_di_kem;


 










