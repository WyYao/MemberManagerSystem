package com.member.mapper;

import java.util.List;

import com.member.model.Grade;

public interface GradeMapper {
	public List<Grade> listAllm();
	public void addGradem(Grade grade);
}
