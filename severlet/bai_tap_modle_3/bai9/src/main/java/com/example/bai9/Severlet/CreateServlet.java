package com.example.bai9.Severlet;



import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;


@WebServlet(name = "CreateServlet", value = "/create")
public class CreateServlet extends HttpServlet {


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/user/index.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String Product_Description = request.getParameter("Product_Description");
        Float List_Price = Float.parseFloat(request.getParameter("List_Price"));
        Float Discount_Percent = Float.parseFloat(request.getParameter("Discount_Percent"));
        Float Discount_Amount = (float) (List_Price*Discount_Percent*0.01);
        Float Discount_Price = (List_Price - Discount_Amount);
        request.setAttribute("Product_Description", Product_Description);
        request.setAttribute("Discount_Amount", Discount_Amount);
        request.setAttribute("Discount_Price", Discount_Price);

        request.getRequestDispatcher("/user/show.jsp").forward(request, response);
    }
}
