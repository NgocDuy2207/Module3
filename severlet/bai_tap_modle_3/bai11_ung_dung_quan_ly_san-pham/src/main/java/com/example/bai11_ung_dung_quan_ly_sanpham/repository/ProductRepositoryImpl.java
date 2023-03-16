package com.example.bai11_ung_dung_quan_ly_sanpham.repository;

import com.example.bai11_ung_dung_quan_ly_sanpham.bean.Product;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class ProductRepositoryImpl implements ProductRepository{

    private static Map<String, Product> productMap;


    static {
        productMap = new HashMap<>();
        productMap.put("P001", new Product("P001","Iphone",2400,"Iphone 14 Pro","Apple"));
        productMap.put("P002", new Product("P002","SamSung",2000,"galaxy","SamSung"));
        productMap.put("P003", new Product("P003","Redmi",2100,"Redmi11","xiaomi"));
        productMap.put("P004", new Product("P004","Nokia",2500,"Nokia 5","Nokia"));
    }
    @Override
    public void create(Product product) {
        if (!productMap.containsKey(product.getId())){
                productMap.put(product.getId(),product);
        }
    }

    @Override
    public void delete(String id) {
        productMap.remove(id);
    }

    @Override
    public void update(Product product) {
        if (productMap.containsKey(product.getId())){
            productMap.put(product.getId(),product);
        }
    }

    @Override
    public List<Product> findAll() {
        return new ArrayList<>(productMap.values());
    }

    @Override
    public Product findById(String id) {
        return productMap.get(id);
    }

    @Override
    public Product findByName(String name) {
        return productMap.get(name);
    }
}
