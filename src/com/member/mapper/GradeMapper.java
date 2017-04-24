package com.member.mapper;

import java.util.List;

import com.member.model.Grade;

public interface GradeMapper {
	public List<Grade> listAllm();
	public void addGradem(Grade grade);
	public void deleteGradem(Grade grade);
	public List<Grade> listByIdm(Grade grade);
	public void editGradem(Grade grade);
}
