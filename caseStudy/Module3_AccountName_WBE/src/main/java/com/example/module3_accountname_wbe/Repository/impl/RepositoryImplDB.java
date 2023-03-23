package com.example.module3_accountname_wbe.Repository.impl;

import com.example.module3_accountname_wbe.Model.Customer.Customer;
import com.example.module3_accountname_wbe.Repository.IRepository;

import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.List;

public class RepositoryImplDB implements IRepository<Customer> {
    private BaseRepository baseRepository;
    private static final String INSERT_CUSTOMER_SQL = "INSERT INTO khach_hang" + "  (ma_loai_khach, ho_ten, ngay_sinh, gioi_tinh, " +
            "so_cmnd, so_dien_thoai, email, dia_chi) VALUES " +
            " (?, ?, ?, ?, ?, ?, ?, ?);";

    @Override
    public void create(Customer customer) throws Exception {
        PreparedStatement statement = this.baseRepository.getConnectionJavaToDB().
                prepareStatement()

    }

    @Override
    public void update(Customer customer) throws Exception {

    }

    @Override
    public void deleteById(String id) throws Exception {

    }

    @Override
    public Customer findById(String id) throws SQLException, ClassNotFoundException {
        return null;
    }

    @Override
    public List<Customer> findAll() throws SQLException, ClassNotFoundException {
        return null;
    }
}




