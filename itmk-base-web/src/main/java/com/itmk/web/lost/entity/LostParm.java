package com.itmk.web.lost.entity;

import lombok.Data;

/**
 * @Author lpm
 *  
 */
@Data
public class LostParm {
    private Long currentPage;
    private Long pageSize;
    private String lostName;
}
