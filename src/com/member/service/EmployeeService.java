package com.member.service;

import java.util.List;

import com.member.model.Employee;
import com.member.po.EmployeePO;

public interface EmployeeService {
	List<Employee> ListAll();
	void addEmployee(Employee employee);
	List<Employee> listByName(EmployeePO employeePO);
}
