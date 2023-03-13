package com.example.bai9.Modal;

public class Product {
    private String Product_Description;
    private Float List_Price;
    private Float Discount_Percent;

    public Product() {

    }

    public Product(String product_Description, Float list_Price, Float discount_Percent) {
        Product_Description = product_Description;
        List_Price = list_Price;
        Discount_Percent = discount_Percent;
    }

    public String getProduct_Description() {
        return Product_Description;
    }

    public void setProduct_Description(String product_Description) {
        Product_Description = product_Description;
    }

    public Float getList_Price() {
        return List_Price;
    }

    public void setList_Price(Float list_Price) {
        List_Price = list_Price;
    }

    public float getDiscount_Percent() {
        return Discount_Percent;
    }

    public void setDiscount_Percent(float discount_Percent) {
        Discount_Percent = discount_Percent;
    }
}
