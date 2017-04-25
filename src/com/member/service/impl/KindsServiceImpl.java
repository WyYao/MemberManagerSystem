package com.member.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.member.mapper.KindsMapper;
import com.member.model.Kinds;
import com.member.service.KindsService;

@Service
public class KindsServiceImpl implements KindsService {

	@Autowired
	private KindsMapper kindsMapper;

	public KindsMapper getKindsMapper() {
		return kindsMapper;
	}

	public void setKindsMapper(KindsMapper kindsMapper) {
		this.kindsMapper = kindsMapper;
	}

	@Override
	public List<Kinds> listAll() {
		return kindsMapper.listAllm();
	}

	@Override
	public void addKinds(Kinds kinds) {
		kindsMapper.addKindsm(kinds);
	}

}
