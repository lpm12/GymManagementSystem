package com.itmk.web.course.entity;

import lombok.Data;

/**
 * @Author lpm
 *  
 */
@Data
public class PageParm {
    private Long currentPage;
    private Long pageSize;
    private String userType;
    private Long userId;
}
