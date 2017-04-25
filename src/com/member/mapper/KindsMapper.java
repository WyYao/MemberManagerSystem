package com.member.mapper;

import java.util.List;

import com.member.model.Kinds;

public interface KindsMapper {
	public List<Kinds> listAllm();
	public void addKindsm(Kinds kinds);
}
