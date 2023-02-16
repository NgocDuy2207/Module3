use quanlybanhang;
select * from customer;
select * from orderdetail;
select * from orders;
select * from product;
insert into customer
values(1, 'Minh Quan', 10);
insert into customer
values(2, 'Ngoc Oanh', 20);
insert into customer
values(3, 'Hong Ha', 50);
insert into orders
values(1, 1, '1998-12-25', null);
insert into orders
values(2, 2, '1998-03-23', null);
insert into orders
values(3, 1, '1998-03-18', null);
-- add product
insert into product
values(1, 'May Giat', 3);
insert into product
values	(2, 'Tu Lanh', 5),
    (3, 'Dieu Hoa', 7),
    (4, 'Quat', 1),
    (5, 'Bep Dien', 2);

insert into orderdetail
values (1,3,7),
		(1,4,2),
        (2,2,1),
        (3,2,8),
        (2,5,4),
        (2,3,3);




-- cau 1
select oID, oDate, oToTalPrice from orders;
-- hiển thị danh sách các khách hàng đã mua hàng, và danh sách sản phẩm được mua bởi các khách
select cName, pName from customer c, product p, orders o, orderdetail od
where c.cID = o.cID and o.oID = od.oID and p.pID = od.pID;
-- hien thi khong mua hang
select cName, pName from customer c, product p, orders o, orderdetail od
where  c.cID = o.cID and o.oID = od.oID and p.pID = od.pID; 
select cName from Customer c
left join orders o
on c.cID = o.cID
where o.cID is null;





	
	
    

