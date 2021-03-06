package com.member.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.member.model.Employee;
import com.member.service.EmployeeService;
import com.member.vo.EmployeeVO;

@Controller
@RequestMapping("/employee")
public class EmployeeController {
		
	@Autowired
	private EmployeeService employeeService;
	
	@RequestMapping("/list")
	public ResponseEntity<List<Employee>> list(){
		List<Employee> employees = employeeService.ListAll();
		return new ResponseEntity<List<Employee>>(employees,HttpStatus.OK);
	}
	
	@RequestMapping("/addEmployee")
	public @ResponseBody String addEmployee(Employee employee){
		employeeService.addEmployee(employee);
		return "{\"employee\":\"ok\"}";
	}
	
	@RequestMapping("/listByName")
	public ResponseEntity<List<Employee>> listByName(Employee employee){
		List<Employee> employees = employeeService.listByName(employee);
		ResponseEntity<List<Employee>> result = new ResponseEntity<List<Employee>>(employees,HttpStatus.OK);
		if(result != null){
			return result;
		}else{
			return null;
		}
	}
}
