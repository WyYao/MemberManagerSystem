package com.member.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.member.mapper.EmployeeMapper;
import com.member.model.Employee;
import com.member.service.EmployeeService;
import com.member.vo.EmployeeVO;

@Service
public class EmployeeServiceImpl implements EmployeeService {

	@Autowired
	private EmployeeMapper employeeMapper;

	public EmployeeMapper getEmployeeMapper() {
		return employeeMapper;
	}

	public void setEmployeeMapper(EmployeeMapper employeeMapper) {
		this.employeeMapper = employeeMapper;
	}

	@Override
	public List<Employee> ListAll() {
		return employeeMapper.listAllm();
	}

	@Override
	public void addEmployee(Employee employee) {
		employeeMapper.addEmployeem(employee);

	}

	@Override
	public List<Employee> listByName(Employee employee) {
		return employeeMapper.listByNamem(employee);
	}

}
