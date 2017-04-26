package com.member.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.member.mapper.DetailMapper;
import com.member.model.Detail;
import com.member.service.DetailService;
import com.member.vo.DetailVO;

@Service
public class DetailServiceImpl implements DetailService {

	@Autowired
	private DetailMapper detailMapper;

	public DetailMapper getDetailMapper() {
		return detailMapper;
	}

	public void setDetailMapper(DetailMapper detailMapper) {
		this.detailMapper = detailMapper;
	}

	@Override
	public List<DetailVO> listById(Detail detail) {
		return detailMapper.listByIdm(detail);
	}

}
