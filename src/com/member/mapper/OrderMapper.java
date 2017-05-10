package com.member.mapper;

import java.util.List;

import com.member.model.Order;
import com.member.vo.DetailVO;
import com.member.vo.OrderVO;

public interface OrderMapper {
	public List<OrderVO> listByMemberIdm(Order order);
	public List<DetailVO> listByOrderIdm(Order order);
}
