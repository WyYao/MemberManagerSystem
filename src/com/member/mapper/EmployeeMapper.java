package com.member.mapper;

import java.util.List;

import com.member.model.Employee;
import com.member.po.EmployeePO;

public interface EmployeeMapper {
	public List<Employee> listAllm();
	public void addEmployeem(Employee employee);
	public List<Employee> listByNamem(EmployeePO employeePO);
}
