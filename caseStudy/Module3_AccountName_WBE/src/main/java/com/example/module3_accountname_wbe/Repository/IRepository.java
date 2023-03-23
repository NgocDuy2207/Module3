package com.example.module3_accountname_wbe.Repository;

import com.example.module3_accountname_wbe.Model.Customer.Customer;

import java.sql.SQLException;
import java.util.List;

public interface IRepository <T> {
    void create(T t) throws Exception;

    void create(Customer customer) throws Exception;

    void update(T t) throws Exception;
    void deleteById(String id) throws Exception;
    T findById(String id) throws SQLException, ClassNotFoundException;
    List<T> findAll() throws SQLException, ClassNotFoundException;
}
