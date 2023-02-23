create database demo;
create table Products (
	id int primary key,
    productCode varchar(10),
    productName varchar(50),
    productPrice double,
	productAmount float,
    productDescription varchar(50),
    productStatus varchar(50)
);
drop table products;
insert into  Products
values( 1,'A1','Nuoc_Hoa', 2000, 1000, 'Good', 'tồn_kho' );
insert into  Products
values( 2,'A2','Nuoc_Dua', 200, 100, null, 'da_ban' ),
		( 3,'A3','Nuoc_Hoa_Cuc', 3000, 2000, 'Good', 'tồn_kho' ),
        ( 4,'A4','Nuoc_Trai_Cay', 2000, 1000, 'Good', 'het hang' );
-- tạo view , update view and delete view
create unique index product_index
on products(productCode );
create index product_index_Composite 
on products (productName ,productPrice);
EXPLAIN products;
create view products_view
as select productCode,
			productName,
            productPrice,
            productStatus
from products;

update products_view 
set productName = 'Nuoc_Cam'
where productCode = 'A1';
drop view products_view;
-- Tạo store procedure 

DELIMITER //
CREATE PROCEDURE products_procedure()

BEGIN
  SELECT * FROM products;
END //
DELIMITER ;
-- add new procedure
DELIMITER //
CREATE PROCEDURE Poducts_new_add(in new_id int, in new_productCode varchar(10), in new_productName varchar(50), in new_productPrice double, in new_productAmount float, 
in new_productDescription varchar(50), in new_productStatus varchar(50))
begin
	insert into products  
    values(new_ID, new_productCode, new_productName, new_productPrice, new_productAmount, new_productDescription, new_productStatus );
	
end //
DELIMITER ;
call Poducts_new_add(5,'A5','Nuoc_Trai_Cay', 2000, 1000, 'siliver', 'con hang');

-- xoa san phan theo id
DELIMiTER //
CREATE PROCEDURE delete_Product(in id_delete int)
begin
	delete from products where id = id_delete;
end //
DELIMITER ;

call delete_Product(1);
select * from products;
-- Tạo store procedure sửa thông tin sản phẩm theo id
DELIMITER //
create PROCEDURE edit_product(in id_edit int, new_productName varchar(50))

begin
	update products
    set productName = new_productName
    where  id = id_edit; 

end //
DELIMITER ;
call edit_product(4, 'Nuoc_Ngot');


















