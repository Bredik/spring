package ru.borisova.dao;

import ru.borisova.entity.Employee;

import java.util.List;

public interface EmployeeDao {
    public List<Employee> getAllEmployees();

    public void saveEmployee(Employee employee);

    public Employee getEmployee(int id);

    Employee deleteEmployee(int id);
}
