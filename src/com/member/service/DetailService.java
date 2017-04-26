package com.member.service;

import java.util.List;

import com.member.model.Detail;
import com.member.vo.DetailVO;

public interface DetailService {
	public List<DetailVO> listById(Detail detail);
}
