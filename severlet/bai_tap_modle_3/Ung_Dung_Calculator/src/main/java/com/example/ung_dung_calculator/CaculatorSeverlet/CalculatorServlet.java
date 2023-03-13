package com.example.ung_dung_calculator.CaculatorSeverlet;

import com.example.ung_dung_calculator.Model.Calculator;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "CalculatorServlet", value = "/index")
public class CalculatorServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/user/index.jsp").forward(request, response);
        //        float firstOperand = Float.parseFloat(request.getParameter("firstOperand"));
//        float secondOperand = Float.parseFloat(request.getParameter("secondOperand"));
//        char operator = request.getParameter("operator").charAt(0);
//        float result = Calculator.calculator(firstOperand, secondOperand, operator);
//        request.setAttribute("result", result);
//        request.getRequestDispatcher("/user/show.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        float firstOperand = Float.parseFloat(request.getParameter("firstOperand"));
        float secondOperand = Float.parseFloat(request.getParameter("secondOperand"));
        char operator = request.getParameter("operator").charAt(0);
        float result = Calculator.calculator(firstOperand, secondOperand, operator);
        request.setAttribute("result", result);
        request.getRequestDispatcher("/user/show.jsp").forward(request, response);

    }
}
