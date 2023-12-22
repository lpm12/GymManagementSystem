package com.itmk.web.material.entity;

import lombok.Data;

/**
 * @Author lpm
 *  
 */
@Data
public class ListParm {
    private Long currentPage;
    private Long pageSize;
    private String name;
}
