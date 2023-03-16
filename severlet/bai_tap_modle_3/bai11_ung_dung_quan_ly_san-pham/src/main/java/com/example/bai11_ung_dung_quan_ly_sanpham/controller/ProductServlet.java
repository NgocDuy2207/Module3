package com.example.bai11_ung_dung_quan_ly_sanpham.controller;
import com.example.bai11_ung_dung_quan_ly_sanpham.bean.Product;
;
import com.example.bai11_ung_dung_quan_ly_sanpham.service.ProductService;
import com.example.bai11_ung_dung_quan_ly_sanpham.service.ProductServiceImpl;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.Map;


@WebServlet(name = "ProductServlet", value = "/list.jsp")
public class ProductServlet extends HttpServlet {
    private  ProductService productService = new ProductServiceImpl();
    public static Map<String, Product> productMap;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
            if (action == null){
                action = "list";
            }
            switch (action){
                case "create" :
                    showCreateProduct(request, response);
                    break;
                case "list":
                    showListProduct(request, response);
                    break;
                case  "delete":
                    showDelete(request, response);
                    break;
                case "update":
                    showUpdate(request, response);
                case "search":
                    showSearch(request, response);
                default:

                    showError(request, response);
            }


    }

    private void showSearch(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/user/search.jsp").forward(request, response);

    }

    private void showUpdate(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/user/update.jsp").forward(request, response);

    }

    private void showError(HttpServletRequest request, HttpServletResponse response) {
    }

    private void showDelete(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String id = request.getParameter("id");
        productService.delete(id);
        response.sendRedirect("list.jsp");

    }

    private void showListProduct(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("products", productService.findAll());
        request.getRequestDispatcher("/user/list.jsp").forward(request,response);
    }

    private void showCreateProduct(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/user/create.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null){
           showError(request, response);
           return;
        }
        switch (action){
            case "create":
                doCreate(request, response);
                break;
            case "update": doUpdate(request, response);
                break;
            case "detail": doDetail(request, response);
                break;
            case  "search": doSearch(request, response);
                break;
            default:
                showError(request, response);
        }
    }

    private void doSearch(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        String nameProduct = request.getParameter("searchName");
        for (Map.Entry<String, Product> entry : productMap.entrySet()){
            Product product = entry.getValue();
            if(product.getNameProduct().equals(nameProduct)){
                request.setAttribute("search", product);
//                request.getRequestDispatcher("/user/search.jsp").forward(request, response);
                response.sendRedirect("/user/search.jsp");
            }else {
                request.getRequestDispatcher("/user/error.jsp").forward(request, response);
            }

        }
//       if (!productMap.containsKey(nameProduct)){
//           Product value = productMap.get(nameProduct);
//           request.setAttribute("search", value);
//           response.sendRedirect("/list.jsp?action=searchName");
//       }else {
//           request.getRequestDispatcher("/user/error.jsp").forward(request, response);
////       }






    }

    private void doDetail(HttpServletRequest request, HttpServletResponse response) {
    }

    private void doUpdate(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String updateId = request.getParameter("updateId");
        String updateNameProduct = request.getParameter("updateNameProduct");
        float updatePriceProduct = Integer.parseInt(request.getParameter("updatePriceProduct"));
        String updateDescribeOfProduct = request.getParameter("updateDescribeOfProduct");
        String updateProducerOfProduct = request.getParameter("updateProducerOfProduct");
        Product product = new Product(updateId, updateNameProduct, updatePriceProduct, updateDescribeOfProduct, updateProducerOfProduct);
        productService.create(product);
        response.sendRedirect("/list.jsp?action=list");

    }

    private void doCreate(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String id = request.getParameter("id");
        String nameProduct = request.getParameter("nameProduct");
        float priceProduct = Integer.parseInt(request.getParameter("priceProduct"));
        String describeOfProduct = request.getParameter("describeOfProduct");
        String producerOfProduct = request.getParameter("producerOfProduct");
        Product product = new Product(id, nameProduct, priceProduct, describeOfProduct, producerOfProduct);
        productService.create(product);
        response.sendRedirect("/list.jsp?action=list");

    }
}
