package com.itmk.web.goods_order.entity;

import lombok.Data;

import java.util.List;

/**
 * @Author lpm
 *
 */
@Data
public class OrderParm {
    private Long userId;
    private List<OrderItem> orderList;
}
