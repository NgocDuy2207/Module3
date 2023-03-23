package com.example.module3_accountname_wbe.Model.Employee;

import java.sql.Date;

public class Employee {
    private int employee_id;
    private String employee_name;
    private Date employee_birthDay;
    private String employee_id_car;
    private Double employee_salary;
    private String employee_phone;
    private String employee_email;
    private String employee_address;
    private int position;
    private int education_degree_id;
    private int division_id;
    private String userName;

    private Employee(){

    }

    public Employee(int employee_id, String employee_name, Date employee_birthDay,
                    String employee_id_car, Double employee_salary, String employee_phone,
                    String employee_email, String employee_address, int position,
                    int education_degree_id, int division_id, String userName) {
        this.employee_id = employee_id;
        this.employee_name = employee_name;
        this.employee_birthDay = employee_birthDay;
        this.employee_id_car = employee_id_car;
        this.employee_salary = employee_salary;
        this.employee_phone = employee_phone;
        this.employee_email = employee_email;
        this.employee_address = employee_address;
        this.position = position;
        this.education_degree_id = education_degree_id;
        this.division_id = division_id;
        this.userName = userName;
    }

    public int getEmployee_id() {
        return employee_id;
    }

    public void setEmployee_id(int employee_id) {
        this.employee_id = employee_id;
    }

    public String getEmployee_name() {
        return employee_name;
    }

    public void setEmployee_name(String employee_name) {
        this.employee_name = employee_name;
    }

    public Date getEmployee_birthDay() {
        return employee_birthDay;
    }

    public void setEmployee_birthDay(Date employee_birthDay) {
        this.employee_birthDay = employee_birthDay;
    }

    public String getEmployee_id_car() {
        return employee_id_car;
    }

    public void setEmployee_id_car(String employee_id_car) {
        this.employee_id_car = employee_id_car;
    }

    public Double getEmployee_salary() {
        return employee_salary;
    }

    public void setEmployee_salary(Double employee_salary) {
        this.employee_salary = employee_salary;
    }

    public String getEmployee_phone() {
        return employee_phone;
    }

    public void setEmployee_phone(String employee_phone) {
        this.employee_phone = employee_phone;
    }

    public String getEmployee_email() {
        return employee_email;
    }

    public void setEmployee_email(String employee_email) {
        this.employee_email = employee_email;
    }

    public String getEmployee_address() {
        return employee_address;
    }

    public void setEmployee_address(String employee_address) {
        this.employee_address = employee_address;
    }

    public int getPosition() {
        return position;
    }

    public void setPosition(int position) {
        this.position = position;
    }

    public int getEducation_degree_id() {
        return education_degree_id;
    }

    public void setEducation_degree_id(int education_degree_id) {
        this.education_degree_id = education_degree_id;
    }

    public int getDivision_id() {
        return division_id;
    }

    public void setDivision_id(int division_id) {
        this.division_id = division_id;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }
}
