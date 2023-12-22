package com.itmk.web.goods_order.entity;

/**
 * @Author lpm
 *  
 */

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

import java.math.BigDecimal;
import java.util.Date;

/**
 * @Author lpm
 *  
 */
@Data
@TableName("goods_order")
public class GoodsOrder {
    @TableId(type = IdType.AUTO)
    private Long orderId;
    private Long goodsId;
    private String name;
    private String image;
    private String details;
    private String unit;
    private String specs;
    private Date createTime;
    private BigDecimal price;
    private BigDecimal totalPrice;
    private Integer num;
    private String controlUser;
}