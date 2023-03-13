package com.example.bai10.Severlet;

import com.example.bai10.Model.Customer;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.jar.Attributes;

@WebServlet(name = "CustomerServlet", value = "/CustomerServlet")

public class CustomerServlet extends HttpServlet {
    List<Customer> customers;
    public void init () throws ServletException  {
        customers = new ArrayList<>();
        customers.add(new Customer("Duy","22-07-1996","Đà Nẵng","https://haycafe.vn/wp-content/uploads/2021/11/Anh-avatar-dep-chat-lam-hinh-dai-dien.jpg"));
        customers.add(new Customer("Dung","02-01-1996","Quang Nam","https://static-images.vnncdn.net/files/publish/2022/9/3/bien-vo-cuc-thai-binh-339.jpg"));
        customers.add(new Customer("Hoang","20-09-1997","Quảng Trị","https://static-images.vnncdn.net/files/publish/2022/9/3/bien-vo-cuc-thai-binh-339.jpg"));
    }
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        request.setAttribute("customers", customers);
        request.getRequestDispatcher("/user/show.jsp").forward(request, response);


    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
