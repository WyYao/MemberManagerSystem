package com.member.service;

import java.util.List;

import com.member.model.Kinds;

public interface KindsService {
	List<Kinds> listAll();
	void addKinds(Kinds kinds);
}
