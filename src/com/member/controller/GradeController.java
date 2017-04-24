package com.member.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.member.model.Grade;
import com.member.service.GradeService;

@Controller
@RequestMapping("/grade")
public class GradeController {

	@Autowired
	private GradeService gradeService;

	public GradeService getGradeService() {
		return gradeService;
	}

	public void setGradeService(GradeService gradeService) {
		this.gradeService = gradeService;
	}

	@RequestMapping("/list")
	public ResponseEntity<List<Grade>> list() {
		List<Grade> grades = gradeService.ListAll();
		return new ResponseEntity<List<Grade>>(grades, HttpStatus.OK);
	}

	@RequestMapping("/addGrade")
	public @ResponseBody String addGrade(Grade grade) {
		gradeService.addGrade(grade);
		return "{\"grade\":\"ok\"}";
	}
	
	@RequestMapping("/deleteGrade")
	public @ResponseBody String deleteGrade(Grade grade){
		System.out.println("gradeId:"+grade.getGrade_id());
		gradeService.deleteGrade(grade);
		return "{\"grade\":\"ok\"}";
	}
	
	@RequestMapping("/listById")
	public ResponseEntity<List<Grade>> listById(Grade grade){
		List<Grade> grades = gradeService.listById(grade);
		return new ResponseEntity<List<Grade>>(grades, HttpStatus.OK);
	}
	
	@RequestMapping("/editGrade")
	public @ResponseBody String editGrade(Grade grade) {
		gradeService.editGrade(grade);
		return "{\"grade\":\"ok\"}";
	}
	
}
