package com.itmk.web.member_card.entity;

import lombok.Data;

/**
 * @Author lpm
 *  
 */
@Data
public class ListCard {
    private Long currentPage;
    private Long pageSize;
    private String title;
}
