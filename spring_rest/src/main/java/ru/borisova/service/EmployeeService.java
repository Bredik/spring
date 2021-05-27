package ru.borisova.service;

import ru.borisova.entity.Employee;

import java.util.List;

public interface EmployeeService {
    public List<Employee> getAllEmployees();

    public void saveEmployee(Employee employee);

    public Employee getEmployee(int id);

    public Employee deleteEmployee(int id);
}
