package com.example.bai11_ung_dung_quan_ly_sanpham.service;

import com.example.bai11_ung_dung_quan_ly_sanpham.bean.Product;
import com.example.bai11_ung_dung_quan_ly_sanpham.repository.ProductRepository;
import com.example.bai11_ung_dung_quan_ly_sanpham.repository.ProductRepositoryImpl;

import java.util.List;

public class ProductServiceImpl implements ProductService{
    private ProductRepository productRepository = new ProductRepositoryImpl();
    @Override
    public void create(Product product) {
        productRepository.create(product);

    }

    @Override
    public void delete(String id) {
        productRepository.delete(id);
    }

    @Override
    public void update(Product product) {
        productRepository.update(product);
    }

    @Override
    public List<Product> findAll() {
        return productRepository.findAll();
    }

    @Override
    public Product findById(String id) {
        return productRepository.findById(id);
    }

    @Override
    public Product findByName(String name) {
        return productRepository.findByName(name);
    }
}
