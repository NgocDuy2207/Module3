package com.example.bai11_ung_dung_quan_ly_sanpham.service;

import com.example.bai11_ung_dung_quan_ly_sanpham.bean.Product;

import java.util.List;

public interface ProductService {
    void create(Product product);
    void delete(String id);
    void update(Product product);
    List<Product> findAll();
    Product findById(String id);
    Product findByName(String name);
}
