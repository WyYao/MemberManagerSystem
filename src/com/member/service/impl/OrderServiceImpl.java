package com.member.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.member.mapper.OrderMapper;
import com.member.model.Order;
import com.member.service.OrderService;
import com.member.vo.DetailVO;
import com.member.vo.OrderVO;

@Service
public class OrderServiceImpl implements OrderService {

	@Autowired
	private OrderMapper orderMapper;

	public OrderMapper getOrderMapper() {
		return orderMapper;
	}

	public void setOrderMapper(OrderMapper orderMapper) {
		this.orderMapper = orderMapper;
	}

	@Override
	public List<OrderVO> listByMemberId(Order order) {
		return orderMapper.listByMemberIdm(order);
	}

	@Override
	public List<DetailVO> listByOrderId(Order order) {
		return orderMapper.listByOrderIdm(order);
	}

}
