package com.member.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.member.model.Order;
import com.member.service.OrderService;
import com.member.vo.DetailVO;
import com.member.vo.OrderVO;

@Controller
@RequestMapping("/order")
public class OrderController {

	@Autowired
	private OrderService orderService;

	public OrderService getOrderService() {
		return orderService;
	}

	public void setOrderService(OrderService orderService) {
		this.orderService = orderService;
	}

	@RequestMapping("/listByMemberId")
	public ResponseEntity<List<OrderVO>> listByMemberId(Order order) {
		List<OrderVO> orderVOs = orderService.listByMemberId(order);
		return new ResponseEntity<List<OrderVO>>(orderVOs, HttpStatus.OK);
	}

	@RequestMapping("/listByOrderId")
	public ResponseEntity<List<DetailVO>> listByOrderId(Order order) {
		List<DetailVO> detailVOs = orderService.listByOrderId(order);
		return new ResponseEntity<List<DetailVO>>(detailVOs, HttpStatus.OK);
	}
}
