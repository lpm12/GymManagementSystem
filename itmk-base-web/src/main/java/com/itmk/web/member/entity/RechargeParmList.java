package com.itmk.web.member.entity;

import lombok.Data;

/**
 * @Author lpm
 *  
 */
@Data
public class RechargeParmList {
    private Long currentPage;
    private Long pageSize;
    private Long memberId;
    private String userType;
}
