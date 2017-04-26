package com.member.mapper;

import java.util.List;

import com.member.model.Detail;
import com.member.vo.DetailVO;

public interface DetailMapper {
	public List<DetailVO> listByIdm(Detail detail);
}
