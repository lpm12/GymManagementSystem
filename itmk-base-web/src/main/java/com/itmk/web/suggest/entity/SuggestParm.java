package com.itmk.web.suggest.entity;

import lombok.Data;

/**
 * @Author lpm
 *  
 */
@Data
public class SuggestParm {
    private Long currentPage;
    private Long pageSize;
    private String title;
}
