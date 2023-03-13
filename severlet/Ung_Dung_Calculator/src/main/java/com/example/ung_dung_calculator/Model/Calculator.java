package com.example.ung_dung_calculator.Model;

public class Calculator {
    public static float calculator(float firstOperand, float secondOperand, char operand) {
        switch (operand) {
            case '-' : return firstOperand - secondOperand;
            case '+' : return firstOperand + secondOperand;
            case '*' : return firstOperand  * secondOperand;
            case '/' :
                if (secondOperand!=0){
                    return firstOperand / secondOperand;
                }else {
                    throw new RuntimeException("Can't divide by zero");
                }
            default:
                throw new RuntimeException("Invalid operation");
        }
    }
}
