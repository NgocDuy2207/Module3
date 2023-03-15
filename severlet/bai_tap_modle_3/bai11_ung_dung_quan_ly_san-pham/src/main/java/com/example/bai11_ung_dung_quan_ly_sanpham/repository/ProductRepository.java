package com.example.bai11_ung_dung_quan_ly_sanpham.repository;

import com.example.bai11_ung_dung_quan_ly_sanpham.bean.Product;

import java.util.List;

public interface ProductRepository {
    void create(Product product);
    void delete(String id);
    void update(Product product);
    List<Product> findAll();
    Product findById(String id);
}
