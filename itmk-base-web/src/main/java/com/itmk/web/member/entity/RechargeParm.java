package com.itmk.web.member.entity;

import lombok.Data;

import java.math.BigDecimal;

/**
 * @Author lpm
 *
 */
@Data
public class RechargeParm {
    private Long userId;
    private Long memberId;
    private BigDecimal money;
}