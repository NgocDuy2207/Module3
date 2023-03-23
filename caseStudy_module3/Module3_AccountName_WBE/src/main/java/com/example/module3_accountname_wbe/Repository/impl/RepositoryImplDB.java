package com.example.module3_accountname_wbe.Repository.impl;

import com.example.module3_accountname_wbe.Model.Customer.Customer;
import com.example.module3_accountname_wbe.Repository.IRepository;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class RepositoryImplDB implements IRepository<Customer> {
    private BaseRepository baseRepository;
    private static final String INSERT_CUSTOMER_SQL = "INSERT INTO khach_hang" + "  (ma_loai_khach, ho_ten, ngay_sinh, gioi_tinh, " +
            "so_cmnd, so_dien_thoai, email, dia_chi) VALUES " +
            " (?, ?, ?, ?, ?, ?, ?, ?);";

    @Override
    public void create(Customer customer) throws Exception {
        PreparedStatement statement = this.baseRepository.getConnectionJavaToDB().prepareStatement(INSERT_CUSTOMER_SQL);
        statement.setInt(1, customer.getCustomer_id());

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
        List<Customer> customerList = new ArrayList<>();
        Connection connection = baseRepository.getConnectionJavaToDB();
        PreparedStatement statement = connection.prepareStatement(INSERT_CUSTOMER_SQL);
        System.out.println(statement);
        ResultSet resultSet = statement.executeQuery();
        while (resultSet.next()){
            int ma_loai_khach = resultSet.getInt("ma_loai_khach");
            String ho_ten = resultSet.getString("ho_ten");
            Date ngay_sinh = new Date(resultSet.getDate("ngay_sinh").getTime());
            Boolean gioi_tinh = resultSet.getBoolean("gioi_tinh");
        }

        return null;
    }
}




