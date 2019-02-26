package com.soto.service;

import com.soto.dto.OrderDTO;
import com.lly835.bestpay.model.PayResponse;

/**
 * 支付
 */
public interface PayService {
    PayResponse create(OrderDTO orderDTO);

    PayResponse notify(String notifyData);
}
