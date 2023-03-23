package com.example.module3_accountname_wbe.Model.Customer;

import java.sql.Date;

public class Customer {
    private int customer_id;
    private String customer_name;
    private Date customer_birthDay;
    private boolean  customer_gender;
    private int customer_phone;
    private String customer_email;
    private String customer_address;
    private  CustomerType customerType;

    public Customer(){

    }

    public Customer(int customer_id, int customer_type_id, String customer_name, Date customer_birthDay,
                    boolean customer_gender, int customer_phone, String customer_email,
                    String customer_address, CustomerType customerType) {
        this.customer_id = customer_id;
        this.customer_name = customer_name;
        this.customer_birthDay = customer_birthDay;
        this.customer_gender = customer_gender;
        this.customer_phone = customer_phone;
        this.customer_email = customer_email;
        this.customer_address = customer_address;
        this.customerType = customerType;
    }

    public int getCustomer_id() {
        return customer_id;
    }

    public void setCustomer_id(int customer_id) {
        this.customer_id = customer_id;
    }

    public CustomerType getCustomerType() {
        return customerType;
    }

    public void setCustomerType(CustomerType customerType) {
        this.customerType = customerType;
    }

    public String getCustomer_name() {
        return customer_name;
    }

    public void setCustomer_name(String customer_name) {
        this.customer_name = customer_name;
    }

    public Date getCustomer_birthDay() {
        return customer_birthDay;
    }

    public void setCustomer_birthDay(Date customer_birthDay) {
        this.customer_birthDay = customer_birthDay;
    }

    public boolean isCustomer_gender() {
        return customer_gender;
    }

    public void setCustomer_gender(boolean customer_gender) {
        this.customer_gender = customer_gender;
    }

    public int getCustomer_phone() {
        return customer_phone;
    }

    public void setCustomer_phone(int customer_phone) {
        this.customer_phone = customer_phone;
    }

    public String getCustomer_email() {
        return customer_email;
    }

    public void setCustomer_email(String customer_email) {
        this.customer_email = customer_email;
    }

    public String getCustomer_address() {
        return customer_address;
    }

    public void setCustomer_address(String customer_address) {
        this.customer_address = customer_address;
    }
}
