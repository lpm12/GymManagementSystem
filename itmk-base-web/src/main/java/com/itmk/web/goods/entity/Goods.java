package com.itmk.web.goods.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

import java.math.BigDecimal;

/**
 * @Author java实战基地
 * @Version 2383404558
 */
@Data
@TableName("goods")
public class Goods {
    @TableId(type = IdType.AUTO)
    private Long goodsId;
    private String name;
    private String image;
    private String details;
    private String unit;
    private String specs;
    private BigDecimal price;
    private Integer store;
}
