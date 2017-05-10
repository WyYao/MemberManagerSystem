package com.member.service;

import java.util.List;

import com.member.model.Order;
import com.member.vo.DetailVO;
import com.member.vo.OrderVO;

public interface OrderService {
	public List<OrderVO> listByMemberId(Order order);
	public List<DetailVO> listByOrderId(Order order);
}
