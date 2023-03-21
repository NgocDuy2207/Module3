package com.example.demojdbc.dao;

import com.example.demojdbc.Model.User;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class UserDAOCallble {
    private UserDAO userDAO = new UserDAO();

    public List<User> findAll() throws SQLException,ClassNotFoundException {
        List<User> userList = new ArrayList<>();
        String sql = "{call all_users()}";
        try(Connection connection = userDAO.getConnection();
            CallableStatement statement = connection.prepareCall(sql);) {
            System.out.println(statement);
            ResultSet resultSet = statement.executeQuery();
            while (resultSet.next()){
                int id = resultSet.getInt("id");
                String name = resultSet.getString("name");
                String email = resultSet.getString("email");
                String country = resultSet.getString("country");
                userList.add(new User(id, name, email, country));
        }
        }

        return userList;
    }

}
