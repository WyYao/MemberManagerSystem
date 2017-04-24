package com.member.service;

import java.util.List;

import com.member.model.Grade;

public interface GradeService {
	List<Grade> ListAll();
	void addGrade(Grade grade);
	void deleteGrade(Grade grade);
	List<Grade> listById(Grade grade);
	void editGrade(Grade grade);
}
