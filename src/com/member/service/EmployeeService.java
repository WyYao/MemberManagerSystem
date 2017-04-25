package com.member.service;

import java.util.List;

import com.member.model.Employee;
import com.member.vo.EmployeeVO;

public interface EmployeeService {
	List<Employee> ListAll();
	void addEmployee(Employee employee);
	List<Employee> listByName(Employee employee);
}
