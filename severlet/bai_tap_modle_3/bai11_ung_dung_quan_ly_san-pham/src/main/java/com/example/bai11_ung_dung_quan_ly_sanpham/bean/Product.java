package com.example.bai11_ung_dung_quan_ly_sanpham.bean;

public class Product {
    private String id;
    private String nameProduct;
    private float priceProduct;
    private String describeOfProduct;
    private String producerOfProduct;

    public Product() {
    }

    public Product(String id, String nameProduct, float priceProduct, String describeOfProduct, String producerOfProduct) {
        this.id = id;
        this.nameProduct = nameProduct;
        this.priceProduct = priceProduct;
        this.describeOfProduct = describeOfProduct;
        this.producerOfProduct = producerOfProduct;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getNameProduct() {
        return nameProduct;
    }

    public void setNameProduct(String nameProduct) {
        this.nameProduct = nameProduct;
    }

    public float getPriceProduct() {
        return priceProduct;
    }

    public void setPriceProduct(float priceProduct) {
        this.priceProduct = priceProduct;
    }

    public String getDescribeOfProduct() {
        return describeOfProduct;
    }

    public void setDescribeOfProduct(String describeOfProduct) {
        this.describeOfProduct = describeOfProduct;
    }

    public String getProducerOfProduct() {
        return producerOfProduct;
    }

    public void setProducerOfProduct(String producerOfProduct) {
        this.producerOfProduct = producerOfProduct;
    }
}
