package com.itmk.web.goods.entity;

import lombok.Data;

/**
 * @Author lpm
 *  
 */
@Data
public class GoodsParm {
    private Long currentPage;
    private Long pageSize;
    private String name;
}
