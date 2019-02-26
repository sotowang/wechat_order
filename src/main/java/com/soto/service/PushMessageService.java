package com.soto.service;

import com.soto.dto.OrderDTO;

/**
 * 消息推送
 */
public interface PushMessageService {
    /**
     * 订单状态变更消息
     */
    void orderStatus(OrderDTO orderDTO);

}
