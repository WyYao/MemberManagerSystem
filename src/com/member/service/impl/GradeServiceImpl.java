package com.member.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.member.mapper.GradeMapper;
import com.member.model.Grade;
import com.member.service.GradeService;

@Service
public class GradeServiceImpl implements GradeService {

	@Autowired
	private GradeMapper gradeMapper;

	public GradeMapper getGradeMapper() {
		return gradeMapper;
	}

	public void setGradeMapper(GradeMapper gradeMapper) {
		this.gradeMapper = gradeMapper;
	}

	@Override
	public List<Grade> ListAll() {
		return gradeMapper.listAllm();
	}

	@Override
	public void addGrade(Grade grade) {
		gradeMapper.addGradem(grade);
		
	}

	@Override
	public void deleteGrade(Grade grade) {
		gradeMapper.deleteGradem(grade);
		
	}

	@Override
	public List<Grade> listById(Grade grade) {
		return gradeMapper.listByIdm(grade);
	}

	@Override
	public void editGrade(Grade grade) {
		gradeMapper.editGradem(grade);
		
	}

	
}
